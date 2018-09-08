unit uFrmCadastroCliente;

interface

uses
  Windows, Messages, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastroPai, StdCtrls, ExtCtrls, uClienteController,
  uClienteModel, dblookup, uConexao, DBCtrls, uEstadosDAO, uEstadoController,
  uDMConexaoDAO, strutils, EnumOperacao, uBlibliotecaFuncoes;

type
  TfrmCadastroCliente = class(TfrmCadastroPai)
    txtId: TLabeledEdit;
    txtRazSoc: TLabeledEdit;
    txtFantasia: TLabeledEdit;
    txtCPFCNPJ: TLabeledEdit;
    txtNome: TLabeledEdit;
    txtEmail: TLabeledEdit;
    txtSite: TLabeledEdit;
    txtEndereco: TLabeledEdit;
    txtBairro: TLabeledEdit;
    txtIE: TLabeledEdit;
    txtIM: TLabeledEdit;
    cmbTipoPessoa: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    QryEstados: TZQuery;
    DSEstados: TDataSource;
    DBLkCBEstados: TDBLookupComboBox;
    Label3: TLabel;
    DBLKCBCidade: TDBLookupComboBox;
    DSCidades: TDataSource;
    QryCidades: TZQuery;
    btnAlterar: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    _id:Integer;
    TpOperacao:TTipoOperacao;
    procedure Inserir;
   // procedure LimpaCampos;
    procedure PreencheObjeto(ClienteModelo:TClienteModel);overload;
    procedure CarregaCliente(Id:Integer);
    procedure PreencheTela(Qry:TZQuery);
    procedure Alterar;
    procedure Cancelar;
    procedure Excluir;
    procedure PreencheCombos;
  public
    { Public declarations }
    procedure AbreCliente(Id:Integer);
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}



{ TfrmCadastroCliente }

procedure TfrmCadastroCliente.AbreCliente(Id: Integer);
begin
  _id:=Id;
end;

procedure TfrmCadastroCliente.Alterar;
var
  ClienteModel: TClienteModel;
  ClienteController : TClienteController;
begin
  ClienteModel := TClienteModel.Create;
  ClienteController := TClienteController.Create;
  try
    PreencheObjeto(ClienteModel);
    if ClienteController.Alterar(ClienteModel) then
      ShowMessage('Cliente alterado com sucesso !');
  finally
    ClienteModel.Free;
    ClienteController.Free;
  end;
end;



procedure TfrmCadastroCliente.btnAlterarClick(Sender: TObject);
begin
  inherited;
  DesbloqueiaCampos(Self);
  TpOperacao := TpAlterar;
end;

procedure TfrmCadastroCliente.btnCancelarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos(self);
  TpOperacao := TpCancelar;
end;

procedure TfrmCadastroCliente.btnExcluirClick(Sender: TObject);
begin
  inherited;
  TpOperacao := TpExcluir;
  Excluir;
end;

procedure TfrmCadastroCliente.btnGravarClick(Sender: TObject);
begin
  inherited;
  case TpOperacao of
    TpInserir: Inserir;
    TpAlterar: Alterar;
    TpCancelar: Cancelar;
  end;
end;

procedure TfrmCadastroCliente.btnNovoClick(Sender: TObject);
begin
  inherited;
  {Inserir;}
  LimpaCampos(self);
  DesbloqueiaCampos(Self);
  TpOperacao :=  TpInserir;
end;

procedure TfrmCadastroCliente.Cancelar;
begin
  LimpaCampos(Self);
  TpOperacao := TpCancelar;
end;

procedure TfrmCadastroCliente.CarregaCliente(Id: Integer);
var
  ClienteController:TClienteController;
  Qry:TZQuery;
begin
  try
    ClienteController := TClienteController.Create;
    Qry := DMConexao.CriaQuery;
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add(ClienteController.ExecutaFiltroPadrao
              + ClienteController.ExecutaFiltro('','','',IntToStr(Id)));
    Qry.ParamByName('id_cliente').AsString := IntToStr(Id);
    Qry.Open;
    PreencheTela(Qry);
  finally
    ClienteController.Free;
    FreeAndNil(Qry);
  end;
end;

procedure TfrmCadastroCliente.Excluir;
var
  ClienteController:TClienteController;
begin
  ClienteController := TClienteController.Create;
  try
    if ClienteController.Excluir(StrToInt(txtId.Text)) then
      ShowMessage('Cliente exclu�do com sucesso !');
  finally
  ClienteController.Free;
  end;
end;

procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin
inherited;
  if (_id > 0) then
  begin
    CarregaCliente(_id);
    BloqueiaCampos(Self);
  end
  else
  begin
    BloqueiaCampos(Self);
    HabilitaBotoes(Self, False);
  end;

  PreencheCombos;
end;

procedure TfrmCadastroCliente.Inserir;
var
  ClienteController:TClienteController;
  ClienteModelo :TClienteModel;
begin
  ClienteController := TClienteController.Create;
  ClienteModelo := TClienteModel.Create;
  try
    PreencheObjeto(ClienteModelo);
    if(ClienteController.Inserir(ClienteModelo)) then
    begin
      ShowMessage('Cliente cadastrado com sucesso');
      LimpaCampos(Self);
    end
    else
      ShowMessage('Erro ao cadastrar cliente');
  finally
    ClienteModelo.Free;
    ClienteController.Free;
  end;
end;

{procedure TfrmCadastroCliente.LimpaCampos;
var
  i:Integer;
begin
  for i := self.ComponentCount -1 downto 0 do
  begin
    if self.Components[i] is TEdit then
      TEdit(self.Components[i]).Text := '';
  end;
end; }

procedure TfrmCadastroCliente.PreencheCombos;
begin
  QryEstados.Active := True;
  QryCidades.Active := True;
end;

procedure TfrmCadastroCliente.PreencheObjeto(ClienteModelo: TClienteModel);
begin
  with ClienteModelo do
  begin
    Id := StrToIntDef(txtId.Text,0);
    RazSoc := txtRazSoc.Text;
    Fantasia := txtFantasia.Text;
    CpfCnpj := txtCPFCNPJ.Text;
    Nome := txtNome.Text;
    Email := txtEmail.Text;
    Site := txtSite.Text;
    Endereco := txtEndereco.Text;
    Bairro := txtBairro.Text;
    IE := txtIE.Text;
    IM := txtIM.Text;
    TipoPessoa := cmbTipoPessoa.Text;

    if DBLkCBEstados.KeyValue = Null then
      Estado := 0
    else
      Estado := DBLkCBEstados.KeyValue;

    if DBLKCBCidade.KeyValue = Null then
      Cidade := 0
    else
      Cidade := DBLKCBCidade.KeyValue;
  end;
end;

procedure TfrmCadastroCliente.PreencheTela(Qry:TZQuery);
begin
  txtId.Text := Qry.FieldByName('C�digo').AsString;
  txtNome.Text := Qry.FieldByName('Cliente').AsString;
  txtRazSoc.Text := Qry.FieldByName('Raz�o Social').AsString;
  txtCPFCNPJ.Text := Qry.FieldByName('CPF/CNPJ').AsString;
  DBLkCBEstados.KeyValue := Qry.FieldByName('id_estado').AsInteger;
  DBLKCBCidade.KeyValue := Qry.FieldByName('id_cidade').AsInteger;
end;

end.
