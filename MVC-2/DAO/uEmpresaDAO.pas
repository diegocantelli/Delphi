unit uEmpresaDAO;

interface

uses
  SysUtils,uEmpresaModel,ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uSistemaController;

type
  TEmpresaDAO = class
    private
    public
      procedure Carregar(AEmpresaModel: TEmpresaModel; AEmpresa:Integer);
  end;

implementation

{ TEmpresaDAO }

procedure TEmpresaDAO.Carregar(AEmpresaModel: TEmpresaModel; AEmpresa:Integer);
  function Filtro:string;
  begin
    if AEmpresa > 0 then
      Result := ' where id = :id'
    else
      Result := '';
  end;
var
  VQuery : TZQuery;
begin
  try
    VQuery := TSistemaControll.GetInstance.Conexao.CriarQuery;
    VQuery.Close;
    VQuery.SQL.Clear;
    VQuery.SQL.Add('select id, razsoc from empresa ' + Filtro);
    if AEmpresa > 0 then
      VQuery.ParamByName('id').AsInteger := AEmpresa;
    VQuery.Open;
    try
      AEmpresaModel.Codigo := VQuery.FieldByName('id').AsInteger;
      AEmpresaModel.RSocial := VQuery.FieldByName('razsoc').AsString;
    finally
      VQuery.Close;
    end;
  finally
    FreeAndNil(VQuery);
  end;
end;

end.
