unit uLoginDao;

interface

uses uConexao,SysUtils,ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uLoginModel;


type
  TLoginDAO = class
    private
      FConn:TConexao;
    public
      constructor Create;
      destructor Destroy; override;
      function Logar(LoginModel:TLoginModel):Boolean;
  end;

implementation

{ TLogin }


constructor TLoginDAO.Create;
begin
  FConn := TConexao.Create;
end;

destructor TLoginDAO.Destroy;
begin
  FreeAndNil(FConn);
  inherited;
end;

function TLoginDAO.Logar(LoginModel:TLoginModel): Boolean;
var
  Qry:TZQuery;
begin
  Qry := FConn.CriaQuery;
  try
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('select * from login where login = :log and senha = :pass');
    Qry.ParamByName('log').AsString := LoginModel.Login;
    Qry.ParamByName('pass').AsString := LoginModel.Senha;
    Qry.Open;
    Result := (Qry.RecordCount > 0);
  finally
    FreeAndNil(qry);
  end;
end;

end.
