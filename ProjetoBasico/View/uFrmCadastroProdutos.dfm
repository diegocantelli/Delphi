inherited frmCadastroProdutos: TfrmCadastroProdutos
  Caption = 'Cadastro de produtos'
  ExplicitWidth = 616
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 16
    Width = 14
    Height = 13
    Caption = 'Id:'
  end
  object Label2: TLabel [1]
    Left = 178
    Top = 88
    Width = 63
    Height = 13
    Caption = 'Quantidade: '
  end
  object Label3: TLabel [2]
    Left = 178
    Top = 160
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 88
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label5: TLabel [4]
    Left = 275
    Top = 88
    Width = 28
    Height = 13
    Caption = 'Custo'
  end
  object Label6: TLabel [5]
    Left = 376
    Top = 88
    Width = 57
    Height = 13
    Caption = 'Valor. Unit: '
  end
  object Label7: TLabel [6]
    Left = 16
    Top = 160
    Width = 58
    Height = 13
    Caption = 'Fabricante: '
  end
  object Label8: TLabel [7]
    Left = 376
    Top = 160
    Width = 38
    Height = 13
    Caption = 'Modelo:'
  end
  object Label9: TLabel [8]
    Left = 120
    Top = 16
    Width = 59
    Height = 13
    Caption = 'Fornecedor:'
  end
  inherited pnlOperacaoes: TPanel
    ExplicitLeft = 0
    ExplicitTop = 259
    ExplicitWidth = 600
    inherited btnNovo: TButton
      OnClick = btnNovoClick
    end
    inherited btnGravar: TButton
      OnClick = btnGravarClick
    end
  end
  object txtDescricao: TEdit [10]
    Left = 16
    Top = 115
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object txtQtd: TEdit [11]
    Left = 178
    Top = 115
    Width = 74
    Height = 21
    TabOrder = 2
  end
  object txtCusto: TEdit [12]
    Left = 275
    Top = 115
    Width = 86
    Height = 21
    TabOrder = 3
  end
  object txtValorUnit: TEdit [13]
    Left = 376
    Top = 115
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object txtFabricante: TEdit [14]
    Left = 16
    Top = 179
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object txtMarca: TEdit [15]
    Left = 178
    Top = 179
    Width = 183
    Height = 21
    TabOrder = 6
  end
  object txtModelo: TEdit [16]
    Left = 376
    Top = 179
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object txtId: TEdit [17]
    Left = 16
    Top = 43
    Width = 58
    Height = 21
    TabOrder = 8
  end
  object DbLkpFornecedor: TDBLookupComboBox [18]
    Left = 120
    Top = 43
    Width = 145
    Height = 21
    KeyField = 'id_forncecedor'
    ListField = 'fantasia'
    ListSource = DSFornecedor
    TabOrder = 9
  end
  inherited DataSource1: TDataSource
    Left = 456
    Top = 152
  end
  object DSFornecedor: TDataSource
    DataSet = QryFornecedor
    Left = 416
    Top = 208
  end
  object QryFornecedor: TZQuery
    Connection = DMConexao.DMConexao
    Active = True
    SQL.Strings = (
      'select * from fornecedor')
    Params = <>
    Left = 312
    Top = 208
  end
end
