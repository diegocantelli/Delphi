object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 127
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 291
    Height = 129
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Valor A:'
    end
    object Label2: TLabel
      Left = 24
      Top = 51
      Width = 37
      Height = 13
      Caption = 'Valor B:'
    end
    object Label3: TLabel
      Left = 170
      Top = 31
      Width = 121
      Height = 33
      AutoSize = False
      Caption = 'Soma: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 30
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtValorA: TEdit
      Left = 68
      Top = 13
      Width = 85
      Height = 21
      TabOrder = 0
    end
    object edtValorB: TEdit
      Left = 67
      Top = 48
      Width = 86
      Height = 21
      TabOrder = 1
    end
    object btnCalcular: TButton
      Left = 24
      Top = 96
      Width = 230
      Height = 25
      Caption = 'Calcular'
      TabOrder = 2
      OnClick = btnCalcularClick
    end
  end
  object Panel2: TPanel
    Left = 291
    Top = 0
    Width = 291
    Height = 129
    Caption = 'Panel1'
    TabOrder = 1
    object Label4: TLabel
      Left = 24
      Top = 16
      Width = 14
      Height = 13
      Caption = 'Id:'
    end
    object Label5: TLabel
      Left = 24
      Top = 51
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object lblResultado: TLabel
      Left = 170
      Top = 31
      Width = 121
      Height = 33
      AutoSize = False
      Caption = 'Resultado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 30
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtId: TEdit
      Left = 68
      Top = 13
      Width = 85
      Height = 21
      TabOrder = 0
    end
    object edtNome: TEdit
      Left = 67
      Top = 48
      Width = 86
      Height = 21
      TabOrder = 1
    end
    object btnInserir: TButton
      Left = 24
      Top = 96
      Width = 230
      Height = 25
      Caption = 'Inserir'
      TabOrder = 2
      OnClick = btnInserirClick
    end
  end
  object HTTPRIOSOMA: THTTPRIO
    URL = 'http://localhost/WS/WS.dll/soap/IInterface'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 264
    Top = 72
  end
  object HTTPRIOBC: THTTPRIO
    WSDLLocation = 'http://localhost/WS/WS.dll/wsdl/IdmServer'
    Service = 'IdmServerservice'
    Port = 'IdmServerPort'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 488
    Top = 64
  end
end
