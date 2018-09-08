unit uSingleton;

interface



uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLoggerSingleton = class
  private
    // vari�vel que aponta para o arquivo de log
    ArquivoLog: TextFile;

    // o construtor � declarado como privado
    // pois o m�todo principal � "ObterInstancia"
    constructor Create;
  public
    // m�todo principal do Singleton
    class function ObterInstancia: TLoggerSingleton;

    // m�todo chamado pelo "Create" indiretamente
    class function NewInstance: TObject; override;

    // m�todo para registrar o texto do par�metro no arquivo de log
    procedure RegistrarLog(const Texto: string);
end;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Instancia: TLoggerSingleton;

implementation

{$R *.dfm}

{ TLoggerSingleton }

constructor TLoggerSingleton.Create;
var
  DiretorioAplicacao:string;
begin
  DiretorioAplicacao := ExtractFilePath(Application.ExeName);
  AssignFile(ArquivoLog, DiretorioAplicacao + 'log.txt');

  if not(FileExists(DiretorioAplicacao + 'log.txt')) then
  begin
    Rewrite(ArquivoLog);
    CloseFile(ArquivoLog);
  end;

end;

class function TLoggerSingleton.NewInstance: TObject;
begin
  if not Assigned(Instancia) then
  begin
    Instancia := TLoggerSingleton(inherited NewInstance);
  end;
  Result := Instancia;
end;

class function TLoggerSingleton.ObterInstancia: TLoggerSingleton;
begin
  Result := TLoggerSingleton.Create;
end;

procedure TLoggerSingleton.RegistrarLog(const Texto: string);
begin
  Append(ArquivoLog);
  Writeln(ArquivoLog, Texto);
  CloseFile(ArquivoLog);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  logger:TLoggerSingleton;
begin
  logger := TLoggerSingleton.ObterInstancia;
  logger.RegistrarLog('Teste');
end;

initialization

finalization
  FreeAndNil(Instancia);

end.
