unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uClasseCliente, uDmConexao, Vcl.DBCtrls;

type
  TfrmClientes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtId: TEdit;
    txtNome: TEdit;
    txtDataNasc: TEdit;
    dbGridClientes: TDBGrid;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnDeletar: TButton;
    btnCancelar: TButton;
    QryClientes: TFDQuery;
    DSClientes: TDataSource;
    SqlClientes: TFDQuery;
    Label4: TLabel;
    txtPesquisa: TEdit;
    btnPesquisar: TButton;
    DSProdutos: TDataSource;
    QueryProdutos: TFDQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbGridClientesDblClick(Sender: TObject);
  private
    { Private declarations }
    function NovoCliente(id:string):Boolean;
    procedure CadastrarCliente(Cliente:TCliente);
    procedure CarregaClientes;
    procedure LimpaCampos;
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

procedure TfrmClientes.btnNovoClick(Sender: TObject);
begin
  LimpaCampos;
end;

procedure TfrmClientes.btnPesquisarClick(Sender: TObject);
begin
  QryClientes.Close;
  QryClientes.SQL.Clear;
  QryClientes.SQL.Add(' select * from clientes where DtNasc = :DtNasc ');
  QryClientes.ParamByName('DtNasc').AsDate := StrToDate(txtPesquisa.Text);
  QryClientes.Open;
end;

procedure TfrmClientes.btnSalvarClick(Sender: TObject);
var
  Cliente : TCliente;
begin
  try
    Cliente := TCliente.Create;
    Cliente.Nome := txtNome.Text;
    Cliente.DtNasc := StrToDate(txtDataNasc.Text);
    CadastrarCliente(Cliente);
    CarregaClientes;
  finally
    Cliente.Free;
  end;

end;

procedure TfrmClientes.Button1Click(Sender: TObject);
begin
  ShowMessage(IntToStr(DBLookupComboBox1.KeyValue));
end;

procedure TfrmClientes.CadastrarCliente(Cliente: TCliente);
begin
  SqlClientes.Close;
  SqlClientes.SQL.Clear;
  SqlClientes.SQL.Add(' INSERT INTO Clientes (Nome, DtNasc) VALUES (:Nome, :DtNasc)');
  SqlClientes.ParamByName('Nome').AsString := Cliente.Nome;
  SqlClientes.ParamByName('DtNasc').AsDate := Cliente.DtNasc;
  SqlClientes.ExecSQL;

end;

procedure TfrmClientes.CarregaClientes;
begin
  QryClientes.Close;
  QryClientes.SQL.Clear;
  QryClientes.SQL.Add(' select * from clientes');
  QryClientes.Open;
end;

procedure TfrmClientes.DBComboBox1Change(Sender: TObject);
begin
  ShowMessage(IntToStr(DBLookupComboBox1.KeyValue));
end;

procedure TfrmClientes.dbGridClientesDblClick(Sender: TObject);
begin
  txtId.Text       := dbGridClientes.Columns.Items[0].Field.text;
  txtNome.Text     := dbGridClientes.Columns.Items[1].Field.Text;
  txtDataNasc.Text := dbGridClientes.Columns.Items[2].Field.Text;
end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
  CarregaClientes;
  QueryProdutos.Open;
end;

procedure TfrmClientes.LimpaCampos;
begin
  txtId.Clear;
  txtNome.Clear;
  txtDataNasc.Clear;
end;

function TfrmClientes.NovoCliente(id: string): Boolean;
begin
  result := (id = EmptyStr);
end;

end.
