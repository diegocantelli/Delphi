unit uPedido;

interface
uses
  uCliente,uItemPedido, Generics.collections;
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
      property VlrTotal:Currency read FVlrTotal write FVlrTotal;
      property Cliente:TCliente read FCliente write FCliente;
      property Data:TDateTime read FData write FData;
  end;

implementation

{ TPedido }

constructor TPedido.Create;
begin
  FCliente := TCliente.Create;
  FItemPedido := TObjectList<TItemPedido>.Create;
end;

destructor TPedido.Destroy;
begin
  FItemPedido.Free;
  FCliente.Free;
  inherited;
end;

end.
