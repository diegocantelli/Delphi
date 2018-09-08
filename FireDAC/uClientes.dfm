object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de clientes'
  ClientHeight = 409
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 13
    Width = 14
    Height = 13
    Caption = 'Id:'
  end
  object Label2: TLabel
    Left = 96
    Top = 13
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 328
    Top = 13
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object Label4: TLabel
    Left = 16
    Top = 85
    Width = 46
    Height = 13
    Caption = 'Pesquisar'
  end
  object txtId: TEdit
    Left = 16
    Top = 32
    Width = 41
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object txtNome: TEdit
    Left = 96
    Top = 32
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object txtDataNasc: TEdit
    Left = 328
    Top = 32
    Width = 97
    Height = 21
    TabOrder = 2
  end
  object dbGridClientes: TDBGrid
    Left = 16
    Top = 152
    Width = 409
    Height = 169
    DataSource = DSClientes
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbGridClientesDblClick
  end
  object btnNovo: TButton
    Left = 16
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 4
    OnClick = btnNovoClick
  end
  object btnSalvar: TButton
    Left = 127
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btnSalvarClick
  end
  object btnDeletar: TButton
    Left = 238
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 6
  end
  object btnCancelar: TButton
    Left = 350
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
  end
  object txtPesquisa: TEdit
    Left = 16
    Top = 104
    Width = 281
    Height = 21
    TabOrder = 8
  end
  object btnPesquisar: TButton
    Left = 326
    Top = 102
    Width = 99
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 9
    OnClick = btnPesquisarClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 96
    Top = 77
    Width = 145
    Height = 21
    KeyField = 'id'
    ListField = 'descricao'
    ListSource = DSProdutos
    TabOrder = 10
  end
  object Button1: TButton
    Left = 326
    Top = 71
    Width = 99
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 11
    OnClick = Button1Click
  end
  object QryClientes: TFDQuery
    Connection = Conexao.FDConnection1
    Left = 280
    Top = 240
  end
  object DSClientes: TDataSource
    DataSet = QryClientes
    Left = 216
    Top = 240
  end
  object SqlClientes: TFDQuery
    Connection = Conexao.FDConnection1
    Left = 56
    Top = 232
  end
  object DSProdutos: TDataSource
    DataSet = QueryProdutos
    Left = 256
    Top = 176
  end
  object QueryProdutos: TFDQuery
    Active = True
    Connection = Conexao.FDConnection1
    SQL.Strings = (
      'select id, descricao from produtos')
    Left = 320
    Top = 176
  end
end
