Unit moduloServer;

interface

uses SysUtils, Classes, InvokeRegistry, Midas, SOAPMidas, SOAPDm;

type
  IdmServer = interface(IAppServerSOAP)
    ['{B84F4D5A-B977-45EB-8056-ACA19C7ABFE3}']
    function InsereRegistroId(Id:Integer; Nome:string):Boolean; stdcall;
  end;

  TdmServer = class(TSoapDataModule, IdmServer, IAppServerSOAP, IAppServer)
  private
  
  public
    function InsereRegistroId(Id:Integer; Nome:string):Boolean; stdcall;
  end;

implementation

{$R *.DFM}

procedure TdmServerCreateInstance(out obj: TObject);
begin
 obj := TdmServer.Create(nil);
end;

{ TdmServer }

function TdmServer.InsereRegistroId(Id: Integer; Nome: string): Boolean;
begin
  Result := ((Id=10) and (Nome='Diego'));
end;

initialization
   InvRegistry.RegisterInvokableClass(TdmServer, TdmServerCreateInstance);
   InvRegistry.RegisterInterface(TypeInfo(IdmServer));
end.
