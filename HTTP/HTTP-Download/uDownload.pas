unit uDownload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, IdAntiFreezeBase, IdAntiFreeze,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    IdAntiFreeze1: TIdAntiFreeze;
    dlgSave: TSaveDialog;
    edtUrl: TEdit;
    ckbOpcao: TCheckBox;
    pbProgresso: TProgressBar;
    lblStatus: TLabel;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    btnBaixar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure IdHTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdHTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure btnBaixarClick(Sender: TObject);
  private
    { Private declarations }
    procedure TerminarAplicacao;
    procedure Desconectar;
    function RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
    function RetornaKiloBytes(ValorAtual: real): string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnBaixarClick(Sender: TObject);
var
  fileDownload : TFileStream;
begin
  IdHTTP1.Request.Accept := 'text/html, */*';
  IdHTTP1.Request.UserAgent := 'Mozilla/3.0 (compatible; IndyLibrary)';
  IdHTTP1.Request.ContentType := 'application/x-www-form-urlencoded';
  IdHTTP1.HandleRedirects := True;
  dlgSave.Filter := 'Arquivos' + ExtractFileExt(edtUrl.Text) + '|*' + ExtractFileExt(edtUrl.Text);
  dlgSave.FileName := 'Arquivo';

  if dlgSave.Execute then
  begin
    fileDownload := TFileStream.Create(dlgSave.FileName + ExtractFileExt(edtUrl.Text), fmCreate);
    try
      pbprogresso.Visible := True;
      lblStatus.Visible   := True;
      btnBaixar.Enabled   := false;
      IdHTTP1.Get(edtUrl.Text, fileDownload);
    finally
      FreeAndNil(fileDownload);
    end;
  end;
end;

procedure TForm1.btnCancelarClick(Sender: TObject);
begin
  TerminarAplicacao;
end;

procedure TForm1.btnFecharClick(Sender: TObject);
begin
  TerminarAplicacao;
end;

procedure TForm1.Desconectar;
begin
  IdHTTP1.Disconnect;
end;

procedure TForm1.IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  pbProgresso.Position := AWorkCount;
  lblStatus.Caption := 'Baixando ...'+RetornaKiloBytes(AWorkCount);
  Form1.Caption := 'Download em ...' + RetornaPorcentagem(pbProgresso.Max, AWorkCount);
end;

procedure TForm1.IdHTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  pbProgresso.Max := AWorkCountMax;
end;

procedure TForm1.IdHTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  pbprogresso.Position := 0;
  Form1.Caption := 'Finalizado ...';
  lblStatus.Caption    := 'Download Finalizado ...';
  pbprogresso.Visible  := false;
  btnBaixar.Enabled    := true;
  if ckbOpcao.Checked then
    Application.Terminate;
end;

function TForm1.RetornaKiloBytes(ValorAtual: real): string;
var
  resultado : real;
begin
  resultado := ((ValorAtual / 1024) / 1024);
  Result    := FormatFloat('0.000 KBs', resultado);
end;

function TForm1.RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
var
  resultado: Real;
begin
  resultado := ((ValorAtual * 100) / ValorMaximo);
  Result    := FormatFloat('0%', resultado);
end;

procedure TForm1.TerminarAplicacao;
begin
  Application.Terminate;
end;

end.
