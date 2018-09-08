unit uProdutosController;

interface

uses uProdutosModel, uProdutosDAO, Generics.Collections;

type
  TProdutosController = class
    private
      FProdutosDAO:TProdutosDAO;
    public
      constructor Create;
      destructor Destroy;override;
      function Inserir(modelo:TProdutosModel):Boolean;
      function RetornaListaProdutos: TObjectList<TProdutosModel>;
  end;

implementation

{ TProdutosController }

constructor TProdutosController.Create;
begin
  FProdutosDAO := TProdutosDAO.Create;
end;

destructor TProdutosController.Destroy;
begin
  FProdutosDAO.Free;
  inherited;
end;

function TProdutosController.Inserir(modelo: TProdutosModel): Boolean;
begin
  result:= FProdutosDAO.Inserir(modelo);
end;

function TProdutosController.RetornaListaProdutos: TObjectList<TProdutosModel>;
begin
  result := FProdutosDAO.RetornaListaProdutos;
end;

end.
