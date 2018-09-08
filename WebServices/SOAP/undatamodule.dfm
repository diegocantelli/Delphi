object IServer: TIServer
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'cursobasico'
    User = 'root'
    Password = 'cursomysql'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Windows\SysWOW64\libmysql.dll'
    Left = 96
    Top = 32
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from clientes')
    Params = <>
    Left = 96
    Top = 88
  end
  object provemployee: TDataSetProvider
    DataSet = ZQuery1
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 40
    Top = 64
  end
end
