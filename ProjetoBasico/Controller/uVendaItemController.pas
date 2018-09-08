unit uVendaItemController;

interface

uses uVendaItemModel, Generics.Collections, uVendasItemDAO;

type
  TVendaItemController = class
    private
      FVendaItemDAO:TVendasItemDAO;
    public
      constructor Create;
      destructor Destroy;override;
      function RetornaListaProdutos:TObjectList<TVendaItemModel>;
  end;

implementation

{ TVendaItemController }

constructor TVendaItemController.Create;
begin
  FVendaItemDAO := FVendaItemDAO.Create;
end;

destructor TVendaItemController.Destroy;
begin
  FVendaItemDAO.Free;
end;

function TVendaItemController.RetornaListaProdutos: TObjectList<TVendaItemModel>;
begin
 // result := FVendaItemDAO.RetornaListaProdutos;
end;

end.
