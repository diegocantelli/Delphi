unit uDmConexao;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection;

type
  TDMConexao = class(TDataModule)
    Conexao: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

{$R *.dfm}

end.
