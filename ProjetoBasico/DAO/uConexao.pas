unit uConexao;

interface

uses
  SysUtils,ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TConexao = class
    private
      FConn : TZConnection;

      procedure ConfiguraConexao;
    public
      constructor Create;
      destructor Destroy;override;
      function GetConn:TZConnection;
      function CriaQuery:TZQuery;
  end;

implementation

{ TConexao }

procedure TConexao.ConfiguraConexao;
begin
  FConn.Database := 'CURSOBASICO';
  FConn.HostName := 'Localhost';
  FConn.LibraryLocation:='C:\Windows\SysWOW64\libmysql.dll';
  FConn.Port := 3306;
  FConn.Protocol := 'mysql';
  FConn.User := 'root';
  FConn.Password := 'cursomysql';
  FConn.Connect;
end;

constructor TConexao.Create;
begin
  FConn := TZConnection.Create(nil);
  Self.ConfiguraConexao;
end;

function TConexao.CriaQuery: TZQuery;
var
  VQuery:TZQuery;
begin
  VQuery := TZQuery.Create(nil);
  VQuery.Connection := GetConn;
  Result:= VQuery;
end;

destructor TConexao.Destroy;
begin
  inherited;
  FConn.Free;
end;

function TConexao.GetConn: TZConnection;
begin
  Result := FConn;
end;

end.
