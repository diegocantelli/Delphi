program PostgreFireDAC;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDmConexao in 'uDmConexao.pas' {Conexao: TDataModule},
  uClientes in 'uClientes.pas' {frmClientes},
  uClasseCliente in 'uClasseCliente.pas',
  uFrmProdutos in 'uFrmProdutos.pas' {frmCadProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TConexao, Conexao);
  Application.CreateForm(TfrmCadProdutos, frmCadProdutos);
  Application.Run;
end.
