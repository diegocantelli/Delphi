unit uVendasController;

interface

uses uVendasDAO, uProdutosModel, uVendaModel;

type
  TVendasController = class
    private
      FVendasDAO:TVendasDAO;
    public
      constructor Create;
      destructor Destroy;override;
      function Gravar(VendasModel:TVendasModel):Boolean;
  end;

implementation

{ TVendasController }

constructor TVendasController.Create;
begin
  FVendasDAO := TVendasDAO.Create;
end;

destructor TVendasController.Destroy;
begin
  FVendasDAO.Free;
  inherited;
end;

function TVendasController.Gravar(VendasModel:TVendasModel): Boolean;
begin
  result:= FVendasDAO.Gravar(VendasModel);
end;

end.
