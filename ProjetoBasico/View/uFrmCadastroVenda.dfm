inherited frmCadastroVendas: TfrmCadastroVendas
  Caption = 'Vendas'
  ClientHeight = 451
  ClientWidth = 752
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 768
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel [0]
    Left = 533
    Top = 86
    Width = 45
    Height = 13
    Caption = 'Sub Total'
  end
  inherited pnlOperacaoes: TPanel
    Top = 410
    Width = 752
    ExplicitLeft = 0
    ExplicitTop = 410
    ExplicitWidth = 752
    inherited btnGravar: TButton
      Left = 144
      OnClick = btnGravarClick
      ExplicitLeft = 144
    end
    inherited btnCancelar: TButton
      Left = 272
      ExplicitLeft = 272
    end
    inherited btnExcluir: TButton
      Left = 400
      Top = 6
      ExplicitLeft = 400
      ExplicitTop = 6
    end
    inherited btnSair: TButton
      Left = 656
      Top = 6
      ExplicitLeft = 656
      ExplicitTop = 6
    end
    object btnImprimir: TButton
      Left = 528
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = btnImprimirClick
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 752
    Height = 73
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 85
      Height = 13
      Caption = 'C'#243'digo da venda:'
    end
    object Label2: TLabel
      Left = 176
      Top = 24
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 335
      Top = 24
      Width = 75
      Height = 13
      Caption = 'Data da venda:'
    end
    object Label5: TLabel
      Left = 495
      Top = 24
      Width = 75
      Height = 13
      Caption = 'Data faturado: '
    end
    object txtCodigo: TEdit
      Left = 16
      Top = 43
      Width = 57
      Height = 21
      TabOrder = 0
    end
    object txtDataVenda: TEdit
      Left = 335
      Top = 43
      Width = 100
      Height = 21
      TabOrder = 2
    end
    object txtDataFaturado: TEdit
      Left = 495
      Top = 43
      Width = 100
      Height = 21
      TabOrder = 3
    end
    object chkFaturado: TCheckBox
      Left = 655
      Top = 45
      Width = 97
      Height = 17
      Caption = 'Faturado'
      TabOrder = 4
    end
    object cmbClientes: TComboBox
      Left = 175
      Top = 43
      Width = 130
      Height = 21
      TabOrder = 1
      Text = '-- Selecione um cliente --'
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 73
    Width = 752
    Height = 64
    Align = alTop
    TabOrder = 2
    object Label4: TLabel
      Left = 12
      Top = 13
      Width = 26
      Height = 13
      Caption = 'Item:'
    end
    object Label6: TLabel
      Left = 178
      Top = 13
      Width = 21
      Height = 13
      Caption = 'QTD'
    end
    object Label7: TLabel
      Left = 242
      Top = 14
      Width = 38
      Height = 13
      Caption = 'Vlr. Unit'
    end
    object Label8: TLabel
      Left = 334
      Top = 13
      Width = 45
      Height = 13
      Caption = 'Desconto'
    end
    object Label9: TLabel
      Left = 429
      Top = 13
      Width = 45
      Height = 13
      Caption = 'Sub Total'
    end
    object Label11: TLabel
      Left = 533
      Top = 13
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object CmbItens: TComboBox
      Left = 12
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object txtQtd: TEdit
      Left = 178
      Top = 32
      Width = 47
      Height = 21
      TabOrder = 1
    end
    object txtValorUnitario: TEdit
      Left = 242
      Top = 33
      Width = 77
      Height = 21
      TabOrder = 2
    end
    object txtDesconto: TEdit
      Left = 334
      Top = 32
      Width = 83
      Height = 21
      TabOrder = 3
    end
    object txtSubTotal: TEdit
      Left = 429
      Top = 32
      Width = 83
      Height = 21
      TabOrder = 4
    end
    object btnAddItem: TButton
      Left = 656
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Adicionar item'
      TabOrder = 5
      OnClick = btnAddItemClick
    end
  end
  object StrGridVendasItens: TStringGrid [4]
    Left = 0
    Top = 137
    Width = 752
    Height = 273
    Align = alClient
    ColCount = 7
    TabOrder = 3
  end
  object txtTotal: TEdit [5]
    Left = 535
    Top = 105
    Width = 83
    Height = 21
    TabOrder = 4
  end
  object frVenda: TfrxReport
    Version = '6.0.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43284.547483784720000000
    ReportOptions.LastChange = 43284.572658854170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 240
    Datasets = <
      item
        DataSet = frxDadosVenda
        DataSetName = 'frxDadosVenda'
      end
      item
        DataSet = frxItensVenda
        DataSetName = 'frxItensVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 53.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosVenda."id_venda_cab"]')
        end
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 30.338590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo da venda'
            '')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 154.960730000000000000
          Top = 53.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosVenda."id_cliente"]')
        end
        object Memo4: TfrxMemoView
          Left = 154.960730000000000000
          Top = 30.338590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo do cliente')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 283.464750000000000000
          Top = 53.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosVenda."data_venda"]'
            '')
        end
        object Memo6: TfrxMemoView
          Left = 283.464750000000000000
          Top = 30.338590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data da venda')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 415.748300000000000000
          Top = 53.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosVenda."faturado"]')
        end
        object Memo8: TfrxMemoView
          Left = 415.748300000000000000
          Top = 30.338590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Faturado'
            '')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 544.252320000000000000
          Top = 53.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosVenda."data_faturado"]')
        end
        object Memo10: TfrxMemoView
          Left = 544.252320000000000000
          Top = 30.338590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Faturado')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 75.590600000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 15.118120000000000000
          Top = 94.488250000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 86.929190000000000000
          Top = 94.488250000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o produto'
            '')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 257.008040000000000000
          Top = 94.488250000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 321.260050000000000000
          Top = 94.488250000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vlr. Unit')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 415.748300000000000000
          Top = 94.488250000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 510.236550000000000000
          Top = 94.488250000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 604.724800000000000000
          Top = 94.488250000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 604.724800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxItensVenda."valor_unitario">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 257.008040000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxItensVenda
        DataSetName = 'frxItensVenda'
        RowCount = 0
        object frxItensVendaid_venda_item: TfrxMemoView
          IndexTag = 1
          Left = 15.118120000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'id_venda_item'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."id_venda_item"]')
          ParentFont = False
        end
        object frxItensVendaid_produto: TfrxMemoView
          IndexTag = 1
          Left = 86.929190000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'id_produto'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."id_produto"]')
          ParentFont = False
        end
        object frxItensVendaQtd: TfrxMemoView
          IndexTag = 1
          Left = 257.008040000000000000
          Top = 11.338590000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'Qtd'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."Qtd"]')
          ParentFont = False
        end
        object frxItensVendavalor_unitario: TfrxMemoView
          IndexTag = 1
          Left = 321.260050000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'valor_unitario'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."valor_unitario"]')
          ParentFont = False
        end
        object frxItensVendavalor_unitario1: TfrxMemoView
          IndexTag = 1
          Left = 415.748300000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'valor_unitario'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."valor_unitario"]')
          ParentFont = False
        end
        object frxItensVendadesconto: TfrxMemoView
          IndexTag = 1
          Left = 510.236550000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'desconto'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."desconto"]')
          ParentFont = False
        end
        object frxItensVendavalor_unitario2: TfrxMemoView
          IndexTag = 1
          Left = 604.724800000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'valor_unitario'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."valor_unitario"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDadosVenda: TfrxDBDataset
    UserName = 'frxDadosVenda'
    CloseDataSource = False
    DataSet = qryVendas
    BCDToCurrency = False
    Left = 296
    Top = 168
  end
  object qryItens: TZQuery
    Connection = DMConexao.DMConexao
    Active = True
    SQL.Strings = (
      'select * from venda_item')
    Params = <>
    Left = 352
    Top = 304
  end
  object frxItensVenda: TfrxDBDataset
    UserName = 'frxItensVenda'
    CloseDataSource = False
    DataSet = qryItens
    BCDToCurrency = False
    Left = 288
    Top = 304
  end
  object qryVendas: TZQuery
    Connection = DMConexao.DMConexao
    Active = True
    SQL.Strings = (
      'select * from venda_cab')
    Params = <>
    Left = 352
    Top = 168
  end
end
