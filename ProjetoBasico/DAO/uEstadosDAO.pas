unit uEstadosDAO;

interface
uses
  SysUtils,ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uConexao;

type
  TEstadoDao = class
  private
    FConexao : TConexao;
  public
    constructor Create;
    destructor Destroy;override;
    function GetQueryEstados:string;
end;

implementation

{ TEstado }

constructor TEstadoDao.Create;
begin
  FConexao := TConexao.Create;
end;

destructor TEstadoDao.Destroy;
begin
  FConexao.Free;
  inherited;
end;



function TEstadoDao.GetQueryEstados: string;
begin
  result := 'select * from estado';
end;

end.
