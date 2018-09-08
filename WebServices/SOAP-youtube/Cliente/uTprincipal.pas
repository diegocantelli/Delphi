unit uTprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, InvokeRegistry, Rio, SOAPHTTPClient, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtValorA: TEdit;
    edtValorB: TEdit;
    btnCalcular: TButton;
    HTTPRIOSOMA: THTTPRIO;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    lblResultado: TLabel;
    edtId: TEdit;
    edtNome: TEdit;
    btnInserir: TButton;
    HTTPRIOBC: THTTPRIO;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  IInterface1, IdmServer1, StrUtils;

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  resultado : Integer;
begin
  Label3.Caption := '';
  resultado := (HTTPRIOSOMA as IInterface).Soma(StrToInt(edtValorA.Text),
                                                StrToInt(edtValorB.Text));
  Label3.Caption := Label3.Caption + ' '  + IntToStr(resultado);
end;

procedure TForm1.btnInserirClick(Sender: TObject);
var
  resultado : Boolean;
begin
  resultado := (HTTPRIOBC as IdmServer).InsereRegistroId(
                                        StrToIntDef(edtId.Text,0),
                                        edtNome.Text);

  try
    lblResultado.Caption := ifthen(resultado,'OK','Erro');
  except
    lblResultado.Caption := ifthen(resultado,'OK','Erro');
  end;
end;

end.
