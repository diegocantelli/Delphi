object frmCadastroPai: TfrmCadastroPai
  Left = 0
  Top = 0
  Caption = 'FormCadastroPai'
  ClientHeight = 300
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOperacaoes: TPanel
    Left = 0
    Top = 259
    Width = 600
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 264
    ExplicitTop = 104
    ExplicitWidth = 185
    object btnNovo: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Align = alCustom
      Caption = 'Novo'
      TabOrder = 0
    end
    object btnGravar: TButton
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
    end
    object btnCancelar: TButton
      Left = 178
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object btnExcluir: TButton
      Left = 259
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
    end
    object btnSair: TButton
      Left = 512
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object DataSource1: TDataSource
    Left = 424
    Top = 120
  end
end
