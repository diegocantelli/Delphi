object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 289
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnGetMethod: TBitBtn
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Caption = 'GetMethod'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnGetMethodClick
  end
  object btngetField: TBitBtn
    Left = 8
    Top = 39
    Width = 113
    Height = 25
    Caption = 'GetField'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btngetFieldClick
  end
  object betGetProperty: TBitBtn
    Left = 8
    Top = 70
    Width = 113
    Height = 25
    Caption = 'GetProperty'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = betGetPropertyClick
  end
  object btnGetPropertyValues: TBitBtn
    Left = 8
    Top = 101
    Width = 113
    Height = 25
    Caption = 'GetProperty e Types'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object btnSetValues: TBitBtn
    Left = 8
    Top = 132
    Width = 113
    Height = 25
    Caption = 'Set Value'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
  end
  object btnMethodTypes: TBitBtn
    Left = 8
    Top = 163
    Width = 113
    Height = 25
    Caption = 'Mehod e Types'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
  end
  object BtninvocaMetodo: TBitBtn
    Left = 8
    Top = 194
    Width = 113
    Height = 25
    Caption = 'Invocar um m'#233'todo'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 6
  end
  object btnValidar: TBitBtn
    Left = 8
    Top = 225
    Width = 113
    Height = 25
    Caption = 'Validar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 7
  end
  object btnTabelaCampo: TBitBtn
    Left = 8
    Top = 256
    Width = 113
    Height = 25
    Caption = 'Tabela e campo'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 8
  end
  object Memo1: TMemo
    Left = 136
    Top = 8
    Width = 314
    Height = 273
    Lines.Strings = (
      'Memo1')
    TabOrder = 9
  end
end
