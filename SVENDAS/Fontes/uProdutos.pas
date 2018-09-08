unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDm, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmProdutos = class(TForm)
    PageProdutos: TPageControl;
    tabConsultar: TTabSheet;
    tabCadastrar: TTabSheet;
    DBG_Produtos: TDBGrid;
    txtBusca: TEdit;
    btnPesquisar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Pesquisar(sField:string);
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

procedure TfrmProdutos.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar(txtBusca.Text);
end;

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmProdutos := nil;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  DM.sql_produtos.Open;
end;

procedure TfrmProdutos.Pesquisar(sField: string);
begin
  with DM.sql_produtos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from produtos where pro_nome like :nome or pro_barras like :nome');
    ParamByName('nome').AsString := '%' + txtBusca.Text + '%';
    Open;

    if IsEmpty then
      ShowMessage('Produto n�o encontrado !');
  end;
end;

procedure TfrmProdutos.txtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Pesquisar(txtBusca.Text);
end;

end.
