library WS;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  ISAPIThreadPool,
  Unit1 in 'Unit1.pas' {WebModule1: TWebModule},
  utImplementacao in 'utImplementacao.pas',
  moduloServer in 'moduloServer.pas' {dmServer: TSoapDataModule};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Application.Initialize;
  Application.CreateForm(TWebModule1, WebModule1);
  Application.Run;
end.

