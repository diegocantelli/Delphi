object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 268
  ClientWidth = 454
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
    Left = 40
    Top = 235
    Width = 99
    Height = 13
    Caption = 'Data da Mensagem: '
  end
  object edtPara: TLabeledEdit
    Left = 16
    Top = 77
    Width = 121
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'Para'
    TabOrder = 0
  end
  object EdtDe: TLabeledEdit
    Left = 16
    Top = 117
    Width = 121
    Height = 21
    EditLabel.Width = 13
    EditLabel.Height = 13
    EditLabel.Caption = 'De'
    TabOrder = 1
  end
  object EdtCorpo: TLabeledEdit
    Left = 18
    Top = 197
    Width = 121
    Height = 21
    EditLabel.Width = 29
    EditLabel.Height = 13
    EditLabel.Caption = 'Corpo'
    TabOrder = 2
  end
  object EdtCabecalho: TLabeledEdit
    Left = 18
    Top = 156
    Width = 119
    Height = 21
    EditLabel.Width = 50
    EditLabel.Height = 13
    EditLabel.Caption = 'Cabe'#231'alho'
    TabOrder = 3
  end
  object lstBxDados: TListBox
    Left = 272
    Top = 72
    Width = 161
    Height = 146
    ItemHeight = 13
    TabOrder = 4
    OnDblClick = lstBxDadosDblClick
  end
  object btnCarregaXml: TBitBtn
    Left = 176
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Carregar XML'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnCarregaXmlClick
  end
  object edtDataMsg: TEdit
    Left = 144
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object OpenDialog1: TOpenDialog
    Left = 192
    Top = 56
  end
  object XMLDocument1: TXMLDocument
    Left = 216
    Top = 152
    DOMVendorDesc = 'MSXML'
  end
end
