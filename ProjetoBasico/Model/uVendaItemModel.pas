unit uVendaItemModel;

interface

uses uProdutosDAO;



type
  TVendaItemModel = class
  private
    FDesconto: double;
    FQtd: double;
    FIdVendaItem: Integer;
    FValorUnitario: double;
    FProduto: TProdutosDAO;
    FIdVenda: Integer;
    FDescricao: string;
    FIdFornecedor: Integer;
    FCusto: string;
  published
    public
      constructor Create;
      destructor Destroy;override;
      property Descricao:string read FDescricao write FDescricao;
      property Custo:string read FCusto write FCusto;
      property IdVendaItem:Integer read FIdVendaItem write FIdVendaItem;
      property Produto:TProdutosDAO read FProduto write FProduto;
      property Qtd:double read FQtd write FQtd;
      property ValorUnitario:double read FValorUnitario write FValorUnitario;
      property Desconto:double read FDesconto write FDesconto;
      property IdVenda:Integer read FIdVenda write FIdVenda;
      property IdFornecedor:Integer read FIdFornecedor write FIdFornecedor;
  end;

implementation

{ TVendaItemModel }



{ TVendaItemModel }

constructor TVendaItemModel.Create;
begin
  FProduto := TProdutosDAO.Create;
end;

destructor TVendaItemModel.Destroy;
begin
  FProduto.Free;
  inherited;
end;

end.
