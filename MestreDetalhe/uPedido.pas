unit uPedido;

interface

uses uCliente, uItemPedido, Generics.Collections;

type
  TPedido = class
    private
    FVlrTotal: Currency;
    FCliente: TCliente;
    FId: Integer;
    FData: TDateTime;
    FItemPedido: TObjectList<TItemPedido>;

    public
      constructor Create;
      destructor Destroy;override;
      property Id:Integer read FId write FId;
      property CLiente:TCliente read FCliente write FCliente;
      property Data:TDateTime read FData write FData;
      property VlrTotal:Currency read FVlrTotal write FVlrTotal;
  end;

implementation

{ TPedido }

constructor TPedido.Create;
begin
  FCliente := TCliente.Create;
  FItemPedido := TObjectList<TItemPedido>.create;
end;

destructor TPedido.Destroy;
begin
  FItemPedido.Free;
  FCliente.Free;
  inherited;
end;

end.
