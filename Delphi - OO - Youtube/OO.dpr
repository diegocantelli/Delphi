program OO;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uPessoa in 'uPessoa.pas',
  uCliente in 'uCliente.pas',
  uEndereco in 'uEndereco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
