object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 312
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object Label3: TLabel
    Left = 24
    Top = 88
    Width = 55
    Height = 13
    Caption = 'Valor Total:'
  end
  object Label4: TLabel
    Left = 24
    Top = 120
    Width = 37
    Height = 13
    Caption = 'Cliente:'
  end
  object edtCodigo: TEdit
    Left = 96
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtValorTotal: TEdit
    Left = 96
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object dtp: TDateTimePicker
    Left = 96
    Top = 54
    Width = 186
    Height = 21
    Date = 43225.944107546300000000
    Time = 43225.944107546300000000
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 152
    Width = 369
    Height = 121
    DataSource = DS
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnIncluir: TButton
    Left = 24
    Top = 281
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 4
    OnClick = btnIncluirClick
  end
  object btnAlterar: TButton
    Left = 171
    Top = 281
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 5
  end
  object btnExcluir: TButton
    Left = 318
    Top = 281
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 6
  end
  object cmbCliente: TComboBox
    Left = 96
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object CD: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 56
    Data = {
      5D0000009619E0BD0100000018000000030000000000030000005D0006436F64
      69676F0400010000000000044461746104000600000000000A56616C6F72546F
      74616C080004000000010007535542545950450200490006004D6F6E65790000
      00}
    object CDCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object CDData: TDateField
      FieldName = 'Data'
    end
    object CDValorTotal: TCurrencyField
      FieldName = 'ValorTotal'
    end
  end
  object DS: TDataSource
    DataSet = CD
    Left = 352
    Top = 24
  end
end
