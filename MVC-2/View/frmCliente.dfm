object frmCadClientes: TfrmCadClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de clientes'
  ClientHeight = 289
  ClientWidth = 476
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
    Left = 16
    Top = 16
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 16
    Top = 67
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object edtCodigo: TEdit
    Left = 64
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 64
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 112
    Width = 441
    Height = 113
    DataSource = DataSource1
    DrawingStyle = gdsGradient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 16
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 3
    OnClick = Button1Click
  end
  object btn_Alterar: TButton
    Left = 110
    Top = 249
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 4
    OnClick = btn_AlterarClick
  end
  object btn_Excluir: TButton
    Left = 206
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = btn_ExcluirClick
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 248
    Top = 16
  end
  object ZQuery1: TZQuery
    SQL.Strings = (
      'select id as Codigo, nome as Nome from clientes;')
    Params = <>
    Left = 288
    Top = 72
  end
end
