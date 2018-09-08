object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object BitBtn1: TBitBtn
    Left = 40
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Ativar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 240
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Parar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object IdHTTPServer1: TIdHTTPServer
    Bindings = <>
    DefaultPort = 8888
    OnCommandGet = IdHTTPServer1CommandGet
    Left = 72
    Top = 24
  end
  object TrayIcon1: TTrayIcon
    OnClick = TrayIcon1Click
    Left = 256
    Top = 72
  end
end
