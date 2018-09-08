object IServer: TIServer
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'portal_noticia'
    User = 'root'
    Password = 'cursomysql'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Windows\SysWOW64\libmysql.dll'
    Left = 56
    Top = 56
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from noticias')
    Params = <>
    Left = 80
    Top = 16
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ZQuery1
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 128
    Top = 88
  end
end
