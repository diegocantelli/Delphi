unit uItemPedido;

interface

uses uCliente, uProduto;

type
  TItemPedido = class
  private
    FAcao: String;
    FId: Integer;
    FProduto: TProduto;
    FValor: Currency;

    public
      constructor Create;
      destructor Destroy; override;
      property Id:Integer read FId write FId;
      property Acao:String read FAcao write FAcao;
      property Produto:TProduto read FProduto write FProduto;
      property Valor:Currency read FValor write FValor;

  end;

implementation

{ TItemPedido }



{ TItemPedido }



{ TItemPedido }

constructor TItemPedido.Create;
begin
  FProduto := TProduto.Create;
end;

destructor TItemPedido.Destroy;
begin
  FProduto.Free;
  inherited;
end;

end.
