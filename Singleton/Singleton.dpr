program Singleton;

uses
  Forms,
  uSingleton in 'uSingleton.pas' {Form1},
  uSingletonImpressao in 'uSingletonImpressao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
