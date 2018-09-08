Unit undatamodule;

interface

uses SysUtils, Classes, InvokeRegistry, Midas, SOAPMidas, SOAPDm, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, Provider;

type
  IIServer = interface(IAppServerSOAP)
    ['{5A0D35AC-79DE-4865-91CE-3DD14693441F}']
  end;

  TIServer = class(TSoapDataModule, IIServer, IAppServerSOAP, IAppServer)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSetProvider1: TDataSetProvider;
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
