unit uVendaModel;

interface

uses uClienteModel, Generics.Collections, uVendaItemModel, uProdutosController,
  uProdutosModel;

type
  TVendasModel = class
  private
    FDataFaturado:TDate;
    FDataVenda: TDate ;
    FCliente: TClienteModel;
    FId: integer;
    FFaturado: Boolean;
    FListaDeProdutos: TObjectList<TProdutosModel>;
  published
  public
    property Id:integer read FId write FId;
    property Faturado:Boolean read FFaturado write FFaturado;
    property Cliente:TClienteModel read FCliente write FCliente;
    property DataVenda:TDate read FDataVenda write FDataVenda;
    property DataFaturado:TDate read FDataFaturado write FDataFaturado;
    property ListaDeProdutos:TObjectList<TProdutosModel>
             read FListaDeProdutos write FListaDeProdutos;
    constructor Create;
    destructor Destroy;override;
  end;



implementation

{ TVendasModel }

constructor TVendasModel.Create;
begin
  FCliente      := TClienteModel.Create;
  FListaDeProdutos := TObjectList<TProdutosModel>.Create;
end;

destructor TVendasModel.Destroy;
begin
  FListaDeProdutos.Free;
  FCliente.Free;
  inherited;
end;

end.
