unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TfrmPedidos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCodigo: TEdit;
    edtValorTotal: TEdit;
    dtp: TDateTimePicker;
    DBGrid1: TDBGrid;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    CD: TClientDataSet;
    DS: TDataSource;
    CDCodigo: TIntegerField;
    CDData: TDateField;
    CDValorTotal: TCurrencyField;
    Label4: TLabel;
    cmbCliente: TComboBox;
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure Incluir;
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}

procedure TfrmPedidos.btnIncluirClick(Sender: TObject);
begin
  Incluir;
end;

procedure TfrmPedidos.Incluir;
begin
  CD.Append;
  CD.FieldByName('Codigo').AsInteger := StrToInt(edtCodigo.Text);
  CD.FieldByName('Data').AsDateTime := StrToDateTime(dtp.Text);
  CD.FieldByName('ValorTotal').AsCurrency := StrToFloat(edtCodigo.Text);
  CD.Post;
end;

end.
