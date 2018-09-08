unit uFrmCadastroProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastroPai, DB, StdCtrls, ExtCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBCtrls, uDMConexaoDAO, uBlibliotecaFuncoes,
  EnumOperacao, uProdutosController, uProdutosModel, StrUtils;

type
  TfrmCadastroProdutos = class(TfrmCadastroPai)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txtDescricao: TEdit;
    txtQtd: TEdit;
    txtCusto: TEdit;
    txtValorUnit: TEdit;
    txtFabricante: TEdit;
    txtMarca: TEdit;
    txtModelo: TEdit;
    txtId: TEdit;
    Label9: TLabel;
    DbLkpFornecedor: TDBLookupComboBox;
    DSFornecedor: TDataSource;
    QryFornecedor: TZQuery;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    TpOperacao :TTipoOperacao;
    procedure Inserir;
    procedure PreencherObjeto(Modelo:TProdutosModel);
  public
    { Public declarations }
  end;

var
  frmCadastroProdutos: TfrmCadastroProdutos;

implementation

{$R *.dfm}

procedure TfrmCadastroProdutos.btnGravarClick(Sender: TObject);
begin
  inherited;
  case TpOperacao of
    TpInserir: Inserir;
    TpAlterar: ;
    TpExcluir: ;
    TpCancelar: ;
  end;
end;

procedure TfrmCadastroProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  TpOperacao := TpInserir;
end;

procedure TfrmCadastroProdutos.Inserir;
var
  ProdutosController:TProdutosController;
  ProdutosModel:TProdutosModel;
begin
  ProdutosModel := TProdutosModel.Create;
  ProdutosController := TProdutosController.Create;
  PreencherObjeto(ProdutosModel);
  if ProdutosController.Inserir(ProdutosModel) then
    ShowMessage('Produto Cadastrado com sucesso !')
  else
    ShowMessage('Erro ao cadastrar produto');

  ProdutosModel.Free;
  ProdutosController.Free;
end;

procedure TfrmCadastroProdutos.PreencherObjeto(Modelo: TProdutosModel);
begin
  Modelo.Id := StrToInt(ifThen(Length(txtId.Text)>0,txtId.Text,'0'));
  Modelo.Descricao      := txtDescricao.Text;
  Modelo.Qtd            := StrToFloat(txtQtd.Text);
  Modelo.Custo          := StrToFloat(txtCusto.Text);
  Modelo.V_unitario     := StrToFloat(txtValorUnit.Text);
  Modelo.Fabricante     := txtFabricante.Text;
  Modelo.Marca_modelo   := txtMarca.Text;

  if DbLkpFornecedor.KeyValue = null then
    Modelo.Fornecedor.Id := 0
  else
    Modelo.Fornecedor.Id := StrToInt(DbLkpFornecedor.KeyValue);
end;

end.
