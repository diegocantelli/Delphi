Unit wbsFunctions1;

interface

uses SysUtils, Classes, InvokeRegistry, Midas, SOAPMidas, SOAPDm;

type
  IwbsFunctions = interface(IAppServerSOAP)
    ['{8FFE7E80-F725-4804-8AA1-7BFAD06B491E}']
    function JuntaNome(Nome, Sobrenome:string):string; stdcall;
  end;

  TwbsFunctions = class(TSoapDataModule, IwbsFunctions, IAppServerSOAP, IAppServer)
  private
    function JuntaNome(Nome, Sobrenome:string):string; stdcall;
  public
  
  end;

implementation

{$R *.DFM}

procedure TwbsFunctionsCreateInstance(out obj: TObject);
begin
 obj := TwbsFunctions.Create(nil);
end;

function TwbsFunctions.JuntaNome(Nome, Sobrenome:string):string;
begin
  Result := Nome+' '+Sobrenome;
end;

initialization
   InvRegistry.RegisterInvokableClass(TwbsFunctions, TwbsFunctionsCreateInstance);
   InvRegistry.RegisterInterface(TypeInfo(IwbsFunctions));
end.
