object Conexao: TConexao
  OldCreateOrder = False
  Height = 188
  Width = 241
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=contimatic'
      'User_Name=postgres'
      'Password=postgre'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Left = 64
    Top = 48
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 56
    Top = 104
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 160
    Top = 112
  end
end
