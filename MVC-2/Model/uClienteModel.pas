unit uClienteModel;

// unit uConexao;

interface

uses
  ZAbstractConnection, ZConnection, DB,ZAbstractRODataset,ZAbstractDataset,
  SysUtils,ZDataset,uEnumerado;

type
  TClienteModel = class
  private
    FCodigo: Integer;
    FNome: string;
    FTpAcao: TAcao;
    procedure SetCodigo(const Value: Integer);
    procedure SetNome(const Value: string);

  published
    public
      TpAcao :TAcao;
      property Codigo:Integer read FCodigo write SetCodigo;
      property Nome:string read FNome write SetNome;
      function Alterar:Boolean;
      function Incluir:Boolean;
      function Excluir:Boolean;
      function Salvar:Boolean;
      function Obter:TZQuery;
  end;

implementation

uses uClienteDAO;

{ TClienteModel }

function TClienteModel.Alterar: Boolean;
var
  VClienteDAO :TClienteDAO;
begin
  VClienteDAO := TClienteDAO.Create;
  try
    VClienteDAO.Alterar(self);
  finally
    VClienteDAO.Free;
  end;
end;

function TClienteModel.Excluir: Boolean;
var
  VClienteDAO :TClienteDAO;
begin
  VClienteDAO := TClienteDAO.Create;
  try
    VClienteDAO.Deletar(self);
  finally
    VClienteDAO.Free;
  end;
end;

function TClienteModel.Incluir: Boolean;
var
  VClienteDAO :TClienteDAO;
begin
  VClienteDAO := TClienteDAO.Create;
  try
    VClienteDAO.Incluir(self);
  finally
    VClienteDAO.Free;
  end;
end;

function TClienteModel.Obter: TZQuery;
var
  VClienteDAO : TClienteDAO;
begin
  try
    VClienteDAO := TClienteDAO.Create;
    Result := VClienteDAO.Obter;
  finally
    FreeAndNil(VClienteDAO)
  end;
end;

function TClienteModel.Salvar: Boolean;
var
  VClienteDAO : TClienteDAO;
begin
  Result:=False;
  VClienteDAO := TClienteDAO.Create;
  try
    if TAcao.tpAcaoIncluir = tAcao(1) then
      Result := VClienteDAO.Incluir(Self);
    if TAcao.tpAcaoIncluir = tAcao(2) then
      Result := VClienteDAO.Alterar(Self);
    if TAcao.tpAcaoIncluir = tAcao(3) then
      Result := VClienteDAO.Deletar(Self);
  finally
    VClienteDAO.Free;
  end;
end;

procedure TClienteModel.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TClienteModel.SetNome(const Value: string);
begin
  FNome := Value;
end;



end.
