unit uDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    MySQL_Link: TFDPhysMySQLDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    sql_produtos: TFDQuery;
    sql_produtospro_id: TFDAutoIncField;
    sql_produtospro_nome: TStringField;
    sql_produtospro_barras: TStringField;
    sql_produtospro_ref: TStringField;
    sql_produtospro_VlrCusto: TFloatField;
    sql_produtospro_VlrPreco: TFloatField;
    sql_produtospro_VlrPrecoPrazo: TFloatField;
    ds_produtos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
