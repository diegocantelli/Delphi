program Project1;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uCliente in 'uCliente.pas',
  uPedido in 'uPedido.pas',
  uProduto in 'uProduto.pas',
  uItemPedido in 'uItemPedido.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
