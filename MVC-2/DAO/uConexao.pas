unit uConexao;

interface

uses
  SysUtils,ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TConexao = class
    private
      FConn: TZConnection;

      procedure ConfigurarConexao;
    public
      constructor Create;
      destructor Destroy;override;
      function GetConn:TZConnection;
      function CriarQuery: TZQuery;
  end;

implementation

{ TConexao }

procedure TConexao.ConfigurarConexao;
begin
  FConn.Database := 'MVC';
  FConn.HostName := 'Localhost';
  FConn.LibraryLocation:='C:\Windows\SysWOW64\libmysql.dll';
  FConn.Port := 3306;
  FConn.Protocol := 'mysql';
  FConn.User := 'root';
  FConn.Password := 'cursomysql';
  //FConn.Connected := true;
end;

constructor TConexao.Create;
begin
  FConn := TZConnection.Create(nil);
  Self.ConfigurarConexao;
end;

function TConexao.CriarQuery: TZQuery;
var
  VQuery : TZQuery;
begin
  VQuery := TZQuery.Create(nil);
  VQuery.Connection := FConn;
  Result := VQuery;
end;

Destructor TConexao.Destroy;
begin
  FreeAndNil(FConn);
  inherited;
end;

function TConexao.GetConn: TZConnection;
begin
  result:= FConn;
end;

end.
