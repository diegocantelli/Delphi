unit uFrmCadastroFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastroPai, DB, StdCtrls, ExtCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, dblookup, uDMConexaoDAO, DBCtrls, EnumOperacao,
  uFornecedoresController, uFornecedorModel, uBlibliotecaFuncoes;

type
  TfrmCadastroFornecedores = class(TfrmCadastroPai)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtId: TEdit;
    txtEndereco: TEdit;
    txtFantasia: TEdit;
    txtCpnj: TEdit;
    txtRasSoc: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    txtBairro: TEdit;
    DSEstados: TDataSource;
    DSCidades: TDataSource;
    QryCidades: TZQuery;
    QryEstados: TZQuery;
    DBLkpEstado: TDBLookupComboBox;
    DBLkpCidade: TDBLookupComboBox;
    btnAlterar: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure DSEstadosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    TpOperacao : TTipoOperacao;
    _Id:Integer;
    procedure PreencheObjeto(Modelo:TFornecedorModel);
    procedure CarregaTela;
    procedure HabilitaQuery;
    procedure Inserir;
    procedure Alterar;
    procedure Excluir;
  public
    { Public declarations }
    procedure AbreCliente(Id:Integer);
  end;

var
  frmCadastroFornecedores: TfrmCadastroFornecedores;

implementation

{$R *.dfm}

procedure TfrmCadastroFornecedores.AbreCliente(Id: Integer);
begin
  _Id := Id;
end;

procedure TfrmCadastroFornecedores.Alterar;
var
  FornecedorModel :TFornecedorModel;
  FornecedorController :TFornecedoresController;
begin
  FornecedorModel := TFornecedorModel.Create;
  FornecedorController := TFornecedoresController.Create;
  try
    PreencheObjeto(FornecedorModel);
    if FornecedorController.Alterar(FornecedorModel) then
      ShowMessage('Fornecedor alterado com sucesso !')
    else
      ShowMessage('Erro ao alterado fornecedor !');
  finally
    FreeAndNil(FornecedorModel);
    FreeAndNil(FornecedorController);
  end;

end;

procedure TfrmCadastroFornecedores.btnAlterarClick(Sender: TObject);
begin
  inherited;
  if txtId.Text <> '' then
    Alterar
  else
    ShowMessage('� necess�rio informa o c�digo do fornecedor !');
end;

procedure TfrmCadastroFornecedores.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if _Id > 0 then
    Excluir
  else
    ShowMessage('� necess�rio informa o c�digo do fornecedor !');
end;

procedure TfrmCadastroFornecedores.btnGravarClick(Sender: TObject);
begin
  inherited;
  case TpOperacao of
    TpInserir: Inserir;
  end;
end;

procedure TfrmCadastroFornecedores.btnNovoClick(Sender: TObject);
begin
  inherited;
  DesbloqueiaCampos(Self);
  HabilitaQuery;
  TpOperacao := TpInserir;
end;

procedure TfrmCadastroFornecedores.CarregaTela;
var
  FornecedorModel:TFornecedorModel;
  FornecedorController:TFornecedoresController;
begin
  FornecedorController := TFornecedoresController.create;
  FornecedorModel := TFornecedorModel.Create;
  FornecedorController.RetornaFornecedor(FornecedorModel,_Id);
  HabilitaQuery;

  txtId.Text           := IntToStr(FornecedorModel.Id);
  txtEndereco.Text     := FornecedorModel.Endereco;
  txtFantasia.Text     := FornecedorModel.Fantasia;
  txtCpnj.Text         := FornecedorModel.Cnpj;
  txtRasSoc.Text       := FornecedorModel.Razsoc;
  txtBairro.Text       := FornecedorModel.Razsoc;
  DBLkpEstado.KeyValue := FornecedorModel.Estado;
  DBLkpCidade.KeyValue := FornecedorModel.Cidade;

  FornecedorModel.Free;
  FornecedorController.Free;

end;

procedure TfrmCadastroFornecedores.DSEstadosDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  QryCidades.Close;
  QryCidades.SQL.Clear;
  QryCidades.SQL.Add('select * from cidade where id_estado = :id_estado');
  QryCidades.ParamByName('id_estado').AsInteger := DSEstados.DataSet.FieldByName('id_estado').AsInteger;
  QryCidades.Open;
  QryCidades.Active := True;
end;

procedure TfrmCadastroFornecedores.Excluir;
var
  FornecedorController :TFornecedoresController;
begin
  FornecedorController := TFornecedoresController.Create;
  try
    if FornecedorController.Excluir(_Id) then
      ShowMessage('Fornecedor exclu�do com sucesso !')
    else
      ShowMessage('Erro ao excluir fornecedor !');
  finally
    FreeAndNil(FornecedorController);
  end;

end;

procedure TfrmCadastroFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  if _Id > 0 then
    CarregaTela
  else
    BloqueiaCampos(Self);
end;

procedure TfrmCadastroFornecedores.HabilitaQuery;
begin
  QryCidades.Active := True;
  QryEstados.Active := True;
end;

procedure TfrmCadastroFornecedores.Inserir;
var
  FornecedorModel :TFornecedorModel;
  FornecedorController :TFornecedoresController;
begin
  FornecedorModel := TFornecedorModel.Create;
  FornecedorController := TFornecedoresController.Create;
  try
    PreencheObjeto(FornecedorModel);
    if FornecedorController.Inserir(FornecedorModel) then
      ShowMessage('Fornecedor cadastrado com sucesso !')
    else
      ShowMessage('Erro ao cadastrar fornecedor !');
  finally
    FreeAndNil(FornecedorModel);
    FreeAndNil(FornecedorController);
  end;
end;

procedure TfrmCadastroFornecedores.PreencheObjeto(Modelo: TFornecedorModel);
begin
  Modelo.Id       := StrToIntDef(txtId.Text,0);
  Modelo.Endereco := txtEndereco.Text;
  Modelo.Fantasia := txtFantasia.Text;
  Modelo.Cnpj     := txtCpnj.Text;
  Modelo.Razsoc   := txtRasSoc.Text;
  Modelo.Bairro   := txtBairro.Text;
  if DBLkpCidade.KeyValue <> null then
    Modelo.Cidade   := DBLkpCidade.KeyValue;
  if DBLkpEstado.KeyValue <> null then
    Modelo.Estado   := DBLkpEstado.KeyValue;
end;

end.
