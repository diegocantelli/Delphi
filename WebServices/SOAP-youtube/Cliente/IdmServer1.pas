// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost/WS/WS.dll/wsdl/IdmServer
//  >Import : http://localhost/WS/WS.dll/wsdl/IdmServer>0
// Version  : 1.0
// (09/07/2018 13:29:08 - - $Rev: 25127 $)
// ************************************************************************ //

unit IdmServer1;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, SOAPMidas;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : urn:moduloServer-IdmServer
  // soapAction: urn:moduloServer-IdmServer#InsereRegistroId
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IdmServerbinding
  // service   : IdmServerservice
  // port      : IdmServerPort
  // URL       : http://localhost/WS/WS.dll/soap/IdmServer
  // ************************************************************************ //
  IdmServer = interface(IAppServerSOAP)
  ['{A5216D40-25CA-4D96-D18B-341F5D9456A3}']
    function  InsereRegistroId(const Id: Integer; const Nome: string): Boolean; stdcall;
  end;



implementation
  uses SysUtils;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IdmServer), 'urn:moduloServer-IdmServer', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IdmServer), 'urn:moduloServer-IdmServer#InsereRegistroId');

end.