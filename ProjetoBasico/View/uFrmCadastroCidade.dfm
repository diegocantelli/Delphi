inherited frmCadastroCidade: TfrmCadastroCidade
  Caption = 'frmCadastroCidade'
  ClientHeight = 157
  ClientWidth = 601
  ExplicitWidth = 617
  ExplicitHeight = 196
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 24
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 64
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  inherited pnlOperacaoes: TPanel
    Top = 116
    Width = 601
    ExplicitLeft = 0
    ExplicitTop = 259
    ExplicitWidth = 600
  end
  object txtCodigo: TEdit [3]
    Left = 72
    Top = 21
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object txtCidade: TEdit [4]
    Left = 72
    Top = 61
    Width = 321
    Height = 21
    TabOrder = 2
  end
end
