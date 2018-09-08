program Cliente;

uses
  Forms,
  uTprincipal in 'uTprincipal.pas' {Form1},
  IInterface1 in 'IInterface1.pas',
  IdmServer1 in 'IdmServer1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
