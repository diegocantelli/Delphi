library wbsExemplo;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  ISAPIThreadPool,
  Web in 'Web.pas' {WebModule1: TWebModule},
  wbExemploImpl in 'wbExemploImpl.pas',
  wbExemploIntf in 'wbExemploIntf.pas',
  wbsFunctions1 in 'wbsFunctions1.pas' {wbsFunctions: TSoapDataModule};

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

