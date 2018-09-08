Unit undatamodule;

interface

uses SysUtils, Classes, InvokeRegistry, Midas, SOAPMidas, SOAPDm, Provider, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  IIServer = interface(IAppServerSOAP)
    ['{DBF166DF-CDD4-4960-AC76-0E722287C9F8}']
  end;

  TIServer = class(TSoapDataModule, IIServer, IAppServerSOAP, IAppServer)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    provemployee: TDataSetProvider;
  private
  
  public
  
  end;

implementation

{$R *.DFM}

procedure TIServerCreateInstance(out obj: TObject);
begin
 obj := TIServer.Create(nil);
end;

initialization
   InvRegistry.RegisterInvokableClass(TIServer, TIServerCreateInstance);
   InvRegistry.RegisterInterface(TypeInfo(IIServer));
end.
