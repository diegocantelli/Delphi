object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 388
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 160
    Width = 633
    Height = 177
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'comercial'
    User = 'root'
    Password = 'cursomysql'
    Protocol = 'mysql-5'
    LibraryLocation = 'C:\Windows\SysWOW64\libmysql.dll'
    Left = 80
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from comclien')
    Params = <>
    Left = 80
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 80
    Top = 104
  end
end
