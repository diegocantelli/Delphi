program JsonProject;

uses
  Vcl.Forms,
  uFrmPrincipalJSON in 'uFrmPrincipalJSON.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
