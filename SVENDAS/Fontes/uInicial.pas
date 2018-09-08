unit uInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, uFuncoes, uProdutos;

type
  TfrmInicial = class(TForm)
    stsBarInicial: TStatusBar;
    pnlMenu: TPanel;
    menu: TMainMenu;
    Sistema1: TMenuItem;
    N1: TMenuItem;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    N2: TMenuItem;
    Movimentos1: TMenuItem;
    PDV1: TMenuItem;
    Caixa1: TMenuItem;
    Gerenciarvendas1: TMenuItem;
    N3: TMenuItem;
    Relatriovendas1: TMenuItem;
    Vendasabertas1: TMenuItem;
    btnClientes: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnPdv: TSpeedButton;
    Ajustes1: TMenuItem;
    Sair1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInicial: TfrmInicial;

implementation

{$R *.dfm}

uses uClientes;

procedure TfrmInicial.btnClientesClick(Sender: TObject);
begin
  Clientes1.Click;
end;

procedure TfrmInicial.btnProdutosClick(Sender: TObject);
begin
  Produtos1.Click;
end;

procedure TfrmInicial.Clientes1Click(Sender: TObject);
begin
  if TFuncoes.TestarPermissao(frmCliente) then
  begin
    if frmCliente = nil then
    begin
      frmCliente := TfrmCliente.Create(nil);
      frmCliente.ShowModal;
    end;
  end
  else
    ShowMessage('Acesso não permitido !');
end;

procedure TfrmInicial.Produtos1Click(Sender: TObject);
begin
  if (TFuncoes.TestarPermissao(frmProdutos)) then
  begin
    if frmProdutos = nil then
    begin
      frmProdutos := TfrmProdutos.Create(nil);
      frmProdutos.ShowModal;
    end;
  end
  else
    ShowMessage('Acesso não permitido !');

end;

end.
