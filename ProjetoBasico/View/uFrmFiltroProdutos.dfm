object frmFiltroProdutos: TfrmFiltroProdutos
  Left = 0
  Top = 0
  Caption = 'Filtro de produtos'
  ClientHeight = 351
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 646
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 4
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 144
      Top = 4
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object txtCodigo: TEdit
      Left = 24
      Top = 23
      Width = 81
      Height = 21
      TabOrder = 0
    end
    object txtDescricao: TEdit
      Left = 144
      Top = 23
      Width = 209
      Height = 21
      TabOrder = 1
    end
    object btnPesquisar: TButton
      Left = 472
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = btnPesquisarClick
    end
  end
  object GridProdutos: TDBGrid
    Left = 0
    Top = 57
    Width = 646
    Height = 294
    Align = alClient
    DataSource = DSProdutos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object QryProdutos: TZQuery
    Connection = DMConexao.DMConexao
    SQL.Strings = (
      'select p.id_produto, p.descricao, p.fabricante, p.custo,'
      #9'   p.qtd, p.v_unitario, p.marca_modelo, f.fantasia, f.raz_soc'#9
      'from produtos p'
      'left join fornecedor f on (p.id_fornecedor = f.id_forncecedor)')
    Params = <>
    Left = 536
    Top = 184
  end
  object DSProdutos: TDataSource
    DataSet = QryProdutos
    Left = 472
    Top = 128
  end
end
