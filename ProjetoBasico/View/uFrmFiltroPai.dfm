object frmFiltroPai: TfrmFiltroPai
  Left = 0
  Top = 0
  Caption = 'Form filtro pai'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Pesquisar'
    end
    object edtPesqNome: TEdit
      Left = 16
      Top = 27
      Width = 209
      Height = 21
      TabOrder = 0
    end
    object btnPesquisar: TButton
      Left = 240
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
    end
  end
  object QryFiltro: TZQuery
    Connection = DMConexao.DMConexao
    Params = <>
    Left = 216
    Top = 104
  end
  object DSFiltro: TDataSource
    DataSet = QryFiltro
    Left = 280
    Top = 104
  end
end
