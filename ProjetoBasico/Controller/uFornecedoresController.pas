unit uFornecedoresController;

interface

uses uFornecedorModel, uFornecedoresDAO, Classes, Contnrs,generics.collections;

type
  TFornecedoresController = class
    private
      ForncedorDAO :TFornecedoresDAO;
    public
      constructor Create;
      destructor Destroy;override;
      function Inserir(Modelo:TFornecedorModel):Boolean;
      function Alterar(Modelo:TFornecedorModel):Boolean;
      function Excluir(Id:Integer):Boolean;
      procedure RetornaFornecedor(FornecedorModel:TFornecedorModel;
                                 Cod: Integer =0;
                                 Fantasia :String='';
                                 Cnpj: string='');overload;
      procedure RetornaFornecedor(Obj:TObjectList<TFornecedorModel>;Cod: Integer=0; Fantasia :String='';
                                 Cnpj: string='');overload;
  end;

implementation

{ TFornecedoresController }

function TFornecedoresController.Alterar(Modelo: TFornecedorModel): Boolean;
begin
  result := ForncedorDAO.Alterar(Modelo);
end;

constructor TFornecedoresController.Create;
begin
  ForncedorDAO := TFornecedoresDAO.Create;
end;

destructor TFornecedoresController.Destroy;
begin
  ForncedorDAO.Free;
  inherited;
end;

function TFornecedoresController.Excluir(Id: Integer): Boolean;
begin
  result := ForncedorDAO.Excluir(Id);
end;

function TFornecedoresController.Inserir(Modelo: TFornecedorModel): Boolean;
begin
  result:= ForncedorDAO.Inserir(Modelo);
end;

procedure TFornecedoresController.RetornaFornecedor(Obj:TObjectList<TFornecedorModel>;
                                                    Cod: Integer=0; Fantasia:string='';
  Cnpj: string='');
begin
  ForncedorDAO.RetornaFornecedor(Obj,Cod, Fantasia,Cnpj);
end;

procedure TFornecedoresController.RetornaFornecedor(FornecedorModel:TFornecedorModel;
                                                    Cod: Integer =0;
                                                    Fantasia :String='';
                                                    Cnpj: string='');
begin
  ForncedorDAO.RetornaFornecedor(FornecedorModel,Cod,Fantasia,Cnpj);
end;

end.
