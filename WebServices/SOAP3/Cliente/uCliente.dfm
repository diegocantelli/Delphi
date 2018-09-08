object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 280
  ClientWidth = 498
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
    Top = 19
    Width = 46
    Height = 13
    Caption = 'Pesquisar'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 49
    Width = 465
    Height = 216
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edtPesquisa: TEdit
    Left = 70
    Top = 12
    Width = 267
    Height = 21
    TabOrder = 1
  end
  object btnPesquisar: TButton
    Left = 368
    Top = 8
    Width = 113
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
  end
end
