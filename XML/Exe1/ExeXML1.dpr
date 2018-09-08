program ExeXML1;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  Mensagem in 'Mensagem.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
