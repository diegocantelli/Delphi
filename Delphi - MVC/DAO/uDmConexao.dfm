object DMConexao: TDMConexao
  OldCreateOrder = False
  Height = 150
  Width = 215
  object Conexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'crud'
    User = 'root'
    Password = 'cursomysql'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Windows\SysWOW64\libmysql.dll'
    Left = 40
    Top = 24
  end
end
