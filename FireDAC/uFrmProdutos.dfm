object frmCadProdutos: TfrmCadProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de produtos'
  ClientHeight = 242
  ClientWidth = 449
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
    Left = 16
    Top = 8
    Width = 14
    Height = 13
    Caption = 'Id:'
  end
  object Label2: TLabel
    Left = 120
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 288
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object txtId: TEdit
    Left = 16
    Top = 27
    Width = 41
    Height = 21
    TabOrder = 0
  end
  object txtDescricao: TEdit
    Left = 120
    Top = 27
    Width = 137
    Height = 21
    TabOrder = 1
  end
  object txtValor: TEdit
    Left = 288
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 64
    Width = 393
    Height = 120
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
