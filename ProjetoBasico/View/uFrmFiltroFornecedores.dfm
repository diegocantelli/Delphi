object frmFiltroFornecedores: TfrmFiltroFornecedores
  Left = 0
  Top = 0
  Caption = 'Filtro de fornecedores'
  ClientHeight = 341
  ClientWidth = 746
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
  object Label1: TLabel
    Left = 26
    Top = 8
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 100
    Top = 8
    Width = 45
    Height = 13
    Caption = 'Fantasia:'
  end
  object Label3: TLabel
    Left = 407
    Top = 8
    Width = 29
    Height = 13
    Caption = 'CNPJ:'
  end
  object edtCodigo: TEdit
    Left = 26
    Top = 27
    Width = 50
    Height = 21
    TabOrder = 0
  end
  object edtFantasia: TEdit
    Left = 100
    Top = 27
    Width = 285
    Height = 21
    TabOrder = 1
  end
  object edtCnpj: TEdit
    Left = 407
    Top = 27
    Width = 210
    Height = 21
    TabOrder = 2
  end
  object btnPesquisar: TButton
    Left = 638
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 3
    OnClick = btnPesquisarClick
  end
  object GridFornecedores: TStringGrid
    Left = 26
    Top = 72
    Width = 687
    Height = 249
    Color = clScrollBar
    ColCount = 8
    FixedColor = clSilver
    RowCount = 10
    FixedRows = 0
    GradientStartColor = clAppWorkSpace
    TabOrder = 4
    OnDblClick = GridFornecedoresDblClick
    RowHeights = (
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24)
  end
end
