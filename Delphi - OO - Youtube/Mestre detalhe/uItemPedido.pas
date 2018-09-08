unit uItemPedido;

interface

uses
  uProduto;

type
  TItemPedido = class
  private
    FAcao: string;
    FCodigo: Integer;
    FValor: Currency;
    FProduto: TProduto;
  published
    public
      constructor Create;
      destructor Destroy;override;
      property Acao:string read FAcao write FAcao;
      property Valor:Currency read FValor write FValor;
      property Codigo:Integer read FCodigo write FCodigo;
      property Produto:TProduto read FProduto write FProduto;
  end;



implementation

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
