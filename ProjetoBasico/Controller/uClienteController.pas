unit uClienteController;

interface

uses uClienteModel, uClienteDAO, Generics.Collections;

type
  TClienteController = class
    private
      FClienteDAO:TClienteDAO;
    public
      destructor Destroy;override;
      constructor Create;
      function Inserir(ClienteModel:TClienteModel):Boolean;
      function Excluir(Id:Integer):Boolean;
      function Alterar(ClienteModel:TClienteModel):Boolean;
      function ExecutaFiltro(FiltroNome:string):String;overload;
      function ExecutaFiltro(FiltroNome,FiltroFanta:string):String;overload;
      function ExecutaFiltro(FiltroNome,FiltroFanta,
               FiltroCPF_CNPJ:string):String;overload;
      function ExecutaFiltro(FiltroNome,FiltroFanta,
               FiltroCPF_CNPJ, FiltroCod:string):String;overload;
      function ExecutaFiltroPadrao:String;
      function RetornaClientes: TObjectList<TClienteModel>;
  end;

implementation

{ TClienteController }

function TClienteController.Alterar(ClienteModel: TClienteModel): Boolean;
begin
  result := FClienteDAO.Alterar(ClienteModel);
end;

constructor TClienteController.Create;
begin
  FClienteDAO := TClienteDAO.Create;
end;


destructor TClienteController.Destroy;
begin
  FClienteDAO.Free;
  inherited;
end;

function TClienteController.ExecutaFiltro(FiltroNome,
  FiltroFanta: string): String;
begin
  result:= FClienteDAO.ExecutaFiltro(FiltroNome,FiltroFanta);
end;

function TClienteController.ExecutaFiltro(FiltroNome, FiltroFanta,
  FiltroCPF_CNPJ: string): String;
begin
  result:= FClienteDAO.ExecutaFiltro(FiltroNome,FiltroFanta, FiltroCPF_CNPJ);
end;

function TClienteController.Excluir(Id: Integer): Boolean;
begin
  result := FClienteDAO.Excluir(id);
end;

function TClienteController.ExecutaFiltro(FiltroNome, FiltroFanta,
  FiltroCPF_CNPJ, FiltroCod: string): String;
begin
  result:= FClienteDAO.ExecutaFiltro(FiltroNome,FiltroFanta,
                                     FiltroCPF_CNPJ,FiltroCod);
end;

function TClienteController.ExecutaFiltroPadrao: String;
begin
  result:= FClienteDAO.ExecutaFiltroPadrao;
end;

function TClienteController.ExecutaFiltro(FiltroNome: string): String;
begin
  result:=FClienteDAO.ExecutaFiltro(FiltroNome);
end;

function TClienteController.Inserir(ClienteModel:TClienteModel):Boolean;
begin
  result := FClienteDAO.Inserir(ClienteModel);
end;

function TClienteController.RetornaClientes: TObjectList<TClienteModel>;
begin
  result:=FClienteDAO.RetornaClientes;
end;

end.
