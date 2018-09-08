object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object DMConexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'CURSOBASICO'
    User = 'root'
    Password = 'cursomysql'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Windows\SysWOW64\libmysql.dll'
    Left = 96
    Top = 48
  end
  object ZQuery1: TZQuery
    Params = <>
    Left = 120
    Top = 96
  end
end
