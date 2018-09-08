// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost/WS/WS.dll/wsdl/IInterface
// Version  : 1.0
// (06/07/2018 13:36:43 - - $Rev: 25127 $)
// ************************************************************************ //

unit IInterface1;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : urn:utImplementacao-IInterface
  // soapAction: urn:utImplementacao-IInterface#Soma
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IInterfacebinding
  // service   : IInterfaceservice
  // port      : IInterfacePort
  // URL       : http://localhost/WS/WS.dll/soap/IInterface
  // ************************************************************************ //
  IInterface = interface(IInvokable)
  ['{F57C0EC2-E1BD-EBAD-B036-70ACD1891728}']
    function  Soma(const Valor1: Integer; const Valor2: Integer): Integer; stdcall;
  end;

function GetIInterface(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IInterface;


implementation
  uses SysUtils;

function GetIInterface(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IInterface;
const
  defWSDL = 'http://localhost/WS/WS.dll/wsdl/IInterface';
  defURL  = 'http://localhost/WS/WS.dll/soap/IInterface';
  defSvc  = 'IInterfaceservice';
  defPrt  = 'IInterfacePort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IInterface);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(IInterface), 'urn:utImplementacao-IInterface', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IInterface), 'urn:utImplementacao-IInterface#Soma');

end.