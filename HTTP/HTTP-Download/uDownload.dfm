object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 160
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblStatus: TLabel
    Left = 8
    Top = 19
    Width = 143
    Height = 13
    Caption = 'Informa a URL para download'
  end
  object edtUrl: TEdit
    Left = 8
    Top = 38
    Width = 431
    Height = 21
    TabOrder = 0
  end
  object ckbOpcao: TCheckBox
    Left = 8
    Top = 65
    Width = 137
    Height = 17
    Cursor = crHandPoint
    Caption = 'Fechar automaticamente'
    TabOrder = 1
  end
  object pbProgresso: TProgressBar
    Left = 8
    Top = 88
    Width = 431
    Height = 17
    TabOrder = 2
    Visible = False
  end
  object btnCancelar: TBitBtn
    Left = 283
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object btnFechar: TBitBtn
    Left = 364
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Fechar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = btnFecharClick
  end
  object btnBaixar: TBitBtn
    Left = 202
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Baixar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnBaixarClick
  end
  object IdHTTP1: TIdHTTP
    OnWork = IdHTTP1Work
    OnWorkBegin = IdHTTP1WorkBegin
    OnWorkEnd = IdHTTP1WorkEnd
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 176
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 376
    Top = 65520
  end
  object dlgSave: TSaveDialog
    Left = 248
    Top = 65528
  end
end
