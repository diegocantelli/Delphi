{ Invokable implementation File for TwbExemplo which implements IwbExemplo }

unit wbExemploImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, wbExemploIntf;

type

  { TwbExemplo }
  TwbExemplo = class(TInvokableClass, IwbExemplo)
  public
  end;

implementation


initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TwbExemplo);
end.

