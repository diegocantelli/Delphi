unit uFrmFiltroFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, uFornecedoresController, uFornecedorModel,generics.collections,
  uFrmCadastroFornecedores;

type
  TfrmFiltroFornecedores = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodigo: TEdit;
    edtFantasia: TEdit;
    edtCnpj: TEdit;
    btnPesquisar: TButton;
    GridFornecedores: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure ConfiguraGrid;
    procedure CarregaGrid(ListaFornecedores:TObjectList<TFornecedorModel>);
    procedure btnPesquisarClick(Sender: TObject);
    procedure LimpaGrid(Grid:TStringGrid);
    procedure GridFornecedoresDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiltroFornecedores: TfrmFiltroFornecedores;

implementation

{$R *.dfm}

procedure TfrmFiltroFornecedores.btnPesquisarClick(Sender: TObject);
var
  FornecedorController:TFornecedoresController;
  ListaFornecedores:TObjectList<TFornecedorModel>;
begin
  FornecedorController := TFornecedoresController.Create;
  ListaFornecedores := TObjectList<TFornecedorModel>.Create;
  LimpaGrid(GridFornecedores);
  ConfiguraGrid;
  FornecedorController.RetornaFornecedor(ListaFornecedores,
                                        StrToIntDef(edtCodigo.Text,0),
                                        edtFantasia.Text,
                                        edtCnpj.Text);
  CarregaGrid(ListaFornecedores);
  FornecedorController.Free;
  ListaFornecedores.Free;
end;

procedure TfrmFiltroFornecedores.CarregaGrid(ListaFornecedores:TObjectList<TFornecedorModel>);
var
  Obj:TFornecedorModel;
  Linha:Integer;
begin
  Linha := 0;
  for Obj in ListaFornecedores do
  begin
    with GridFornecedores do
    begin
      Inc(Linha);
      Cells[0,Linha] := IntToStr(Obj.Id);
      Cells[1,Linha] := Obj.Endereco;
      Cells[2,Linha] := Obj.Fantasia;
      Cells[3,Linha] := Obj.Cnpj;
      Cells[4,Linha] := Obj.Razsoc;
      Cells[5,Linha] := Obj.Bairro;
      Cells[6,Linha] := Obj.NomeEstado;
      Cells[7,Linha] := Obj.NomeCidade;
    end;
  end;
end;

procedure TfrmFiltroFornecedores.ConfiguraGrid;
begin
  with GridFornecedores do
  begin
    ColWidths[0] := 50;
    ColWidths[1] := 100;
    ColWidths[2] := 100;
    ColWidths[3] := 50;
    ColWidths[4] := 100;
    ColWidths[5] := 100;
    ColWidths[6] := 50;
    ColWidths[7] := 50;

    Cells[0,0] := 'Código';
    Cells[1,0] := 'Endereço';
    Cells[2,0] := 'Fantasia';
    Cells[3,0] := 'CNPJ';
    Cells[4,0] := 'Razão Social';
    Cells[5,0] := 'Bairro';
    Cells[6,0] := 'Estado';
    Cells[7,0] := 'Cidade';
  end;
end;

procedure TfrmFiltroFornecedores.FormShow(Sender: TObject);
var
  FornecedorController:TFornecedoresController;
  ListaFornecedores:TObjectList<TFornecedorModel>;
begin
  FornecedorController := TFornecedoresController.Create;
  ListaFornecedores := TObjectList<TFornecedorModel>.Create;
  ConfiguraGrid;
  FornecedorController.RetornaFornecedor(ListaFornecedores,
                                        StrToIntDef(edtCodigo.Text,0),
                                        edtFantasia.Text,
                                        edtCnpj.Text);
  CarregaGrid(ListaFornecedores);
  FornecedorController.Free;
  ListaFornecedores.Free;
end;

procedure TfrmFiltroFornecedores.GridFornecedoresDblClick(Sender: TObject);
var
  frmCadFornecedores : TfrmCadastroFornecedores;
begin
  frmCadFornecedores := TfrmCadastroFornecedores.Create(nil);
  frmCadFornecedores.AbreCliente(StrToInt(GridFornecedores.Cells[0,
                                          GridFornecedores.Row]));
  frmCadFornecedores.ShowModal;
  frmCadFornecedores.Free;
end;

procedure TfrmFiltroFornecedores.LimpaGrid(Grid:TStringGrid);
var
  linha, coluna:Integer;
begin
  for linha := 1 to Grid.RowCount - 1 do
    for coluna := 0 to Grid.ColCount - 1 do
      Grid.Cells[coluna, linha] := '';
end;

end.
