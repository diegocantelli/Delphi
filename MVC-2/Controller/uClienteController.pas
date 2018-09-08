unit uClienteController;

interface

uses uClienteModel, SysUtils,ZAbstractConnection, ZConnection, DB,
    ZAbstractRODataset,ZAbstractDataset, ZDataset, uEnumerado;


type
  TClienteController = class
    private
    public
      FClienteModel:TClienteModel;
      constructor Create;
      destructor Destroy;override;
      function Obter:TZQuery;
      function Salvar:Boolean;
      function Alterar:Boolean;
      function Deletar:Boolean;
  end;

implementation

{ TClienteController }

function TClienteController.Alterar: Boolean;
begin
  result := FClienteModel.Alterar;
end;

constructor TClienteController.Create;
begin
  FClienteModel := TClienteModel.create;
end;

function TClienteController.Deletar: Boolean;
begin
  Result:= FClienteModel.Salvar;
end;

destructor TClienteController.Destroy;
begin
  FreeAndNil(FClienteModel);
  inherited;
end;

function TClienteController.Obter: TZQuery;
begin
  Result := FClienteModel.Obter;
end;

function TClienteController.Salvar: Boolean;
begin
  result := FClienteModel.Incluir;
end;

end.
