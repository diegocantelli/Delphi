program MestreDetalhe;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPedidos},
  uCliente in 'uCliente.pas',
  uPedido in 'uPedido.pas',
  uProduto in 'uProduto.pas',
  uItemPedido in 'uItemPedido.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPedidos, frmPedidos);
  Application.Run;
end.
