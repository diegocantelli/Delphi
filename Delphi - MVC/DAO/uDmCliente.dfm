object DMCliente: TDMCliente
  OldCreateOrder = False
  Height = 245
  Width = 389
  object sqlPesquisar: TZQuery
    Connection = DMConexao.Conexao
    Active = True
    SQL.Strings = (
      'select * from cliente limit 1')
    Params = <>
    Left = 40
    Top = 24
  end
  object sqlinserir: TZQuery
    Connection = DMConexao.Conexao
    Params = <>
    Left = 40
    Top = 72
  end
  object sqlAlterar: TZQuery
    Connection = DMConexao.Conexao
    Params = <>
    Left = 40
    Top = 128
  end
  object sqlExcluir: TZQuery
    Connection = DMConexao.Conexao
    Params = <>
    Left = 40
    Top = 176
  end
end
