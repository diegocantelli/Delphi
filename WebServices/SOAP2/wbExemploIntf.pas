{ Invokable interface IwbExemplo }

unit wbExemploIntf;

interface

uses InvokeRegistry, Types, XSBuiltIns;

type

  { Invokable interfaces must derive from IInvokable }
  IwbExemplo = interface(IInvokable)
  ['{AF253F8E-52AB-49DB-8673-C0B3C6B04601}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(IwbExemplo));

end.
