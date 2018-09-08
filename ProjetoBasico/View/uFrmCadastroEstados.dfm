inherited frmCadastroEstados: TfrmCadastroEstados
  Caption = 'Cadastro de estados'
  ClientHeight = 168
  ClientWidth = 602
  ExplicitWidth = 618
  ExplicitHeight = 207
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 16
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Estado:'
  end
  object Label3: TLabel [2]
    Left = 24
    Top = 96
    Width = 26
    Height = 13
    Caption = 'Sigla:'
  end
  inherited pnlOperacaoes: TPanel
    Top = 127
    Width = 602
  end
  object txtCodigo: TEdit [4]
    Left = 80
    Top = 13
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object txtNomeEstado: TEdit [5]
    Left = 80
    Top = 53
    Width = 305
    Height = 21
    TabOrder = 2
  end
  object txtSigla: TEdit [6]
    Left = 80
    Top = 93
    Width = 65
    Height = 21
    MaxLength = 2
    TabOrder = 3
  end
end
