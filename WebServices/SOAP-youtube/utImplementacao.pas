unit utImplementacao;

interface

uses
  InvokeRegistry;

type
  IInterface = interface(IInvokable)
    ['{0D78BC05-CC32-4BFE-95F3-9E8A1CB7E0F6}']
    function Soma(Valor1, Valor2:Integer):Integer;stdcall;
  end;

  TImplementacao =class(TInvokableClass, IInterface)
    function Soma(Valor1, Valor2:Integer):Integer;stdcall;
  end;

implementation

{ TImplementacao }

function TImplementacao.Soma(Valor1, Valor2: Integer): Integer;
begin
  Result := Valor1+Valor2;
end;

initialization
  InvRegistry.RegisterInvokableClass(TImplementacao);
  InvRegistry.RegisterInterface(TypeInfo(IInterface));

end.
