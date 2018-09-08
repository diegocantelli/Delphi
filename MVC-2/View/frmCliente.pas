unit frmCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ZAbstractConnection, ZConnection,
  ZAbstractRODataset,  ZAbstractDataset, ZDataset, uEnumerado, uConexao,
  uClienteController;

type
  TfrmCadClientes = class(TForm)
    edtCodigo: TEdit;
    edtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    btn_Alterar: TButton;
    btn_Excluir: TButton;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
  private
    { Private declarations }
     qry : TZQuery;

    procedure CarregarCliente;

  public
    { Public declarations }
    destructor Destroy; override;
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation


{$R *.dfm}
{ TfrmCadClientes }

procedure TfrmCadClientes.btn_AlterarClick(Sender: TObject);
var
  VClienteControl: TClienteController;
begin
  VClienteControl := TClienteController.Create;
  try
    with VClienteControl do
    begin
      FClienteModel.TpAcao := uEnumerado.TAcao(2);
      FClienteModel.Codigo := StrToIntDef(edtCodigo.Text, 0);
      FClienteModel.Nome := edtNome.Text;
      if Alterar then
        ShowMessage('Alterado com sucesso');
      CarregarCliente;
    end;
  finally
    VClienteControl.Free;
  end;
end;

procedure TfrmCadClientes.btn_ExcluirClick(Sender: TObject);
var
  VClienteControl: TClienteController;
begin
  VClienteControl := TClienteController.Create;
  try
    with VClienteControl do
    begin
      FClienteModel.TpAcao := uEnumerado.tpAcaoExcluir;
      FClienteModel.Codigo := StrToIntDef(edtCodigo.Text, 0);
      if Deletar then
        ShowMessage('Excluído com sucesso');
      CarregarCliente;
    end;
  finally
    VClienteControl.Free;
  end;
end;

procedure TfrmCadClientes.Button1Click(Sender: TObject);
var
  VClienteControl: TClienteController;
begin
  VClienteControl := TClienteController.Create;
  try
    VClienteControl.FClienteModel.TpAcao := uEnumerado.tpAcaoIncluir;
    VClienteControl.FClienteModel.Nome := edtNome.Text;
    if VClienteControl.Salvar then
      ShowMessage('Incluído com sucesso');
    CarregarCliente;
  finally
    VClienteControl.Free;
  end;
end;

procedure TfrmCadClientes.CarregarCliente;
var
  VClienteController: TClienteController;

begin
  VClienteController := TClienteController.Create;
  qry := VClienteController.Obter;
  ZQuery1 := VClienteController.Obter;
  DBGrid1.DataSource.DataSet := ZQuery1;

  VClienteController.Free;
end;

destructor TfrmCadClientes.Destroy;
begin
  FreeAndNil(qry);
  FreeAndNil(ZQuery1);
  inherited;
end;

procedure TfrmCadClientes.FormShow(Sender: TObject);
begin
  CarregarCliente;
end;

end.
