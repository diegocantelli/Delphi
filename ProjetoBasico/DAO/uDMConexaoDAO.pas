unit uDMConexaoDAO;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TDMConexao = class(TDataModule)
    DMConexao: TZConnection;
    ZQuery1: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    function CriaQuery:TZQuery;
  end;

var
  DMConexao: TDMConexao;

implementation

{$R *.dfm}

function TDMConexao.CriaQuery: TZQuery;
var
  VQuery:TZQuery;
begin
  VQuery := TZQuery.Create(nil);
  VQuery.Connection := DMConexao;
  Result:= VQuery;
end;

procedure TDMConexao.DataModuleCreate(Sender: TObject);
begin
  DMConexao.Database := 'CURSOBASICO';
  DMConexao.HostName := 'Localhost';
  DMConexao.LibraryLocation:='C:\Windows\SysWOW64\libmysql.dll';
  DMConexao.Port := 3306;
  DMConexao.Protocol := 'mysql';
  DMConexao.User := 'root';
  DMConexao.Password := 'cursomysql';
  DMConexao.Connect;
end;

end.
