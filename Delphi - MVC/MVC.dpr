program MVC;

uses
  Forms,
  uFrmPrincipal in 'View\uFrmPrincipal.pas' {frmPrincipal},
  uFrmCadastrarCliente in 'View\uFrmCadastrarCliente.pas' {frmCadastrarCliente},
  uClienteModel in 'Model\uClienteModel.pas',
  uClienteController in 'Controller\uClienteController.pas',
  uDmConexao in 'DAO\uDmConexao.pas' {DMConexao: TDataModule},
  uDmCliente in 'DAO\uDmCliente.pas' {DMCliente: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.Run;
end.
