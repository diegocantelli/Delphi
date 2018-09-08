program prjMVC;

uses
  Forms,
  frmPrincipalView in 'View\frmPrincipalView.pas' {formPrincipal},
  uConexao in 'DAO\uConexao.pas',
  uSistemaController in 'Controller\uSistemaController.pas',
  uEmpresaModel in 'DAO\uEmpresaModel.pas',
  uEmpresaDAO in 'DAO\uEmpresaDAO.pas',
  uEnumerado in 'Model\uEnumerado.pas',
  frmCliente in 'View\frmCliente.pas' {frmCadClientes},
  uClienteDAO in 'DAO\uClienteDAO.pas',
  uClienteController in 'Controller\uClienteController.pas',
  uClienteModel in 'Model\uClienteModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
