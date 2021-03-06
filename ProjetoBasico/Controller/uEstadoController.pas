unit uEstadoController;

interface

uses uEstadosDAO;

type
  TEstadoController = class
    private
      FEstadosDao : TEstadoDao;
    public
      constructor Create;
      destructor Destroy;override;
      function GetQueryEstados:string;
  end;

implementation

{ TEstadoController }

constructor TEstadoController.Create;
begin
  FEstadosDao := TEstadoDao.create;
end;

destructor TEstadoController.Destroy;
begin
  FEstadosDao.free;
  inherited;
end;

function TEstadoController.GetQueryEstados: string;
begin
  result := FEstadosDao.GetQueryEstados;
end;

end.
