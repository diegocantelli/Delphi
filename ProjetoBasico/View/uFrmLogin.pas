unit uFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uLoginController, uLoginModel, uFrmPrincipal;

type
  TfrmLogin = class(TForm)
    edtLogin: TLabeledEdit;
    edtSenha: TLabeledEdit;
    btnLogar: TButton;
    btnCancelar: TButton;
    procedure btnLogarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencheObjeto(LoginModel:TLoginModel);
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  frmPrincipal : TFrmPrincipal;


implementation

{$R *.dfm}

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.btnLogarClick(Sender: TObject);
var
  LoginController : TLoginController;
  LoginModel : TLoginModel;
begin
  LoginController := TLoginController.Create;
  LoginModel := TLoginModel.Create;
  frmPrincipal := TFrmPrincipal.Create(nil);
  try
    PreencheObjeto(LoginModel);
    if LoginController.Logar(LoginModel)then
    begin
      frmLogin.Hide;
      frmPrincipal.ShowModal;
    end
    else
      ShowMessage('Login ou senha incorretos !');
  finally
    FreeAndNil(frmPrincipal);
    FreeAndNil(LoginModel);
    FreeAndNil(LoginController);
    frmLogin.Close;
  end;
end;


procedure TfrmLogin.PreencheObjeto(LoginModel: TLoginModel);
begin
  LoginModel.Login := edtLogin.Text;
  LoginModel.Senha := edtSenha.Text;
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
