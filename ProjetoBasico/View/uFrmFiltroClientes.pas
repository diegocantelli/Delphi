unit uFrmFiltroClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmFiltroPai, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  StdCtrls, ExtCtrls, Grids, DBGrids, uClienteController, uFrmCadastroCliente;

type
  TfrmFiltroClientes = class(TfrmFiltroPai)
    gridClientes: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    edtPesqFantasia: TEdit;
    edtPesqCnpj: TEdit;
    Label2: TLabel;
    edtPesqCod: TEdit;
    btnAlterar: TButton;
    procedure FormShow(Sender: TObject);
    procedure ExecutaFiltro;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormataGrid;
    function RetornaFiltro(Nome,Fantasia,CnpjCpf, Cod:string):string;
    procedure gridClientesCellClick(Column: TColumn);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    _Id:Integer;
  public
    { Public declarations }
  end;

var
  frmFiltroClientes: TfrmFiltroClientes;

implementation

{$R *.dfm}
procedure TfrmFiltroClientes.btnAlterarClick(Sender: TObject);
begin
  inherited;
  frmCadastroCliente := TfrmCadastroCliente.Create(nil);
  frmCadastroCliente.AbreCliente(_Id);
  frmCadastroCliente.ShowModal;
  gridClientes.DataSource.DataSet.Refresh;
  frmCadastroCliente.Free;
end;

procedure TfrmFiltroClientes.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  ExecutaFiltro;
end;

procedure TfrmFiltroClientes.ExecutaFiltro;
var
  ClienteController:TClienteController;
begin
  try

    QryFiltro.Close;
    QryFiltro.SQL.Clear;
    QryFiltro.SQL.Add(RetornaFiltro(edtPesqNome.Text, edtPesqFantasia.Text,
                                    edtPesqCnpj.Text, edtPesqCod.Text));

    if Length(edtpesqNome.text) > 0 then
      QryFiltro.ParamByName('nome').AsString := edtpesqNome.Text;
    if Length(edtPesqFantasia.text) > 0 then
      QryFiltro.ParamByName('raz_soc').AsString := edtPesqFantasia.Text;
    if Length(edtPesqCnpj.text) > 0 then
      QryFiltro.ParamByName('cpf_cnpj').AsString := edtPesqCnpj.Text;
    if Length(edtPesqCod.text) > 0 then
      QryFiltro.ParamByName('id_cliente').AsString := edtPesqCod.Text;

    QryFiltro.Open;
  finally
    FreeAndNil(ClienteController);
  end;
end;

procedure TfrmFiltroClientes.FormataGrid;
begin
  with gridClientes do
  begin
    Columns[0].Width := 60;
    Columns[1].Width := 80;
    Columns[2].Width := 100;
    Columns[3].Width := 100;
    Columns[4].Width := 100;
  end;
end;

procedure TfrmFiltroClientes.FormShow(Sender: TObject);
begin
  inherited;
  ExecutaFiltro;
  FormataGrid;
  btnAlterar.Enabled := false;
end;

procedure TfrmFiltroClientes.gridClientesCellClick(Column: TColumn);
begin
  inherited;
  btnAlterar.Enabled := True;
  _Id:= StrtoIntDef(gridClientes.Fields[0].AsString,0);
end;

function TfrmFiltroClientes.RetornaFiltro(Nome, Fantasia, CnpjCpf,
  Cod: string): string;
var
  ClienteController:TClienteController;
  SqlFiltro:string;
begin
  ClienteController := TClienteController.Create;
  SqlFiltro := '';
  SqlFiltro := SqlFiltro + ClienteController.ExecutaFiltroPadrao +
               ClienteController.ExecutaFiltro(edtPesqNome.text) +
               ClienteController.ExecutaFiltro(edtPesqNome.text,
                                            edtPesqFantasia.Text) +
               ClienteController.ExecutaFiltro(edtPesqNome.text,
                                               edtPesqFantasia.Text,
                                               edtPesqCnpj.text) +
               ClienteController.ExecutaFiltro(edtPesqNome.text,edtPesqFantasia.Text,
                                        edtPesqCnpj.text, edtPesqCod.text);
  FreeAndNil(ClienteController);
  Result := SqlFiltro;
end;

end.
