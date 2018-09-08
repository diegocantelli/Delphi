unit uFrmFiltroProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, uDMConexaoDAO, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmFiltroProdutos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    txtCodigo: TEdit;
    txtDescricao: TEdit;
    btnPesquisar: TButton;
    GridProdutos: TDBGrid;
    QryProdutos: TZQuery;
    DSProdutos: TDataSource;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiltroProdutos: TfrmFiltroProdutos;

implementation

{$R *.dfm}

procedure TfrmFiltroProdutos.btnPesquisarClick(Sender: TObject);
begin
  with QryProdutos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select p.id_produto, p.descricao, p.fabricante, p.custo,'+
            ' p.qtd, p.v_unitario, p.marca_modelo, f.fantasia, f.raz_soc	'+
            ' from produtos p '+
            ' left join fornecedor f on (p.id_fornecedor = f.id_forncecedor) '+
            ' where 1=1');
    if Length(txtCodigo.Text) > 0 then
    begin
      SQL.Add(' and p.id_produto = :id_produto ');
      ParamByName('id_produto').AsInteger := StrToInt(txtCodigo.Text);
    end;

    if Length(txtDescricao.Text) > 0 then
    begin
      SQL.Add(' and p.descricao like :descricao ');
      ParamByName('descricao').AsString := '%'+txtDescricao.Text+'%';
    end;
    Open;
  end;
end;

procedure TfrmFiltroProdutos.FormShow(Sender: TObject);
begin
  QryProdutos.Active := True;
end;

end.
