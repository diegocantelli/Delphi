object DM: TDM
  OldCreateOrder = False
  Height = 253
  Width = 303
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=svendas'
      'User_Name=root'
      'Password=cursomysql'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 16
  end
  object MySQL_Link: TFDPhysMySQLDriverLink
    Left = 144
    Top = 24
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 144
    Top = 80
  end
  object sql_produtos: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 56
    Top = 80
    object sql_produtospro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_produtospro_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Size = 50
    end
    object sql_produtospro_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
      Size = 100
    end
    object sql_produtospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
    end
    object sql_produtospro_VlrCusto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_VlrCusto'
      Origin = 'pro_VlrCusto'
      DisplayFormat = ',0.00;-,0.00'
    end
    object sql_produtospro_VlrPreco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_VlrPreco'
      Origin = 'pro_VlrPreco'
      DisplayFormat = ',0.00;-,0.00'
    end
    object sql_produtospro_VlrPrecoPrazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_VlrPrecoPrazo'
      Origin = 'pro_VlrPrecoPrazo'
      DisplayFormat = ',0.00;-,0.00'
    end
  end
  object ds_produtos: TDataSource
    DataSet = sql_produtos
    Left = 56
    Top = 128
  end
end
