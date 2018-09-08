object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro e controle de produtos'
  ClientHeight = 471
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageProdutos: TPageControl
    Left = 0
    Top = 0
    Width = 774
    Height = 471
    ActivePage = tabConsultar
    Align = alClient
    TabOrder = 0
    TabWidth = 150
    ExplicitLeft = 128
    ExplicitTop = 48
    ExplicitWidth = 569
    ExplicitHeight = 201
    object tabConsultar: TTabSheet
      Caption = 'Consultar'
      ExplicitWidth = 292
      ExplicitHeight = 165
      object DBG_Produtos: TDBGrid
        Left = 0
        Top = 88
        Width = 766
        Height = 355
        Align = alBottom
        DataSource = DM.ds_produtos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'pro_id'
            Title.Caption = 'ID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_nome'
            Title.Caption = 'Produto'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_barras'
            Title.Caption = 'Barras'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_ref'
            Title.Caption = 'Ref'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_VlrCusto'
            Title.Caption = 'R$ Custo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_VlrPreco'
            Title.Caption = 'R$ Preco'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_VlrPrecoPrazo'
            Title.Caption = 'R$ Prazo'
            Width = 80
            Visible = True
          end>
      end
      object txtBusca: TEdit
        Left = 0
        Top = 56
        Width = 242
        Height = 24
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = txtBuscaKeyPress
      end
      object btnPesquisar: TButton
        Left = 248
        Top = 56
        Width = 97
        Height = 26
        Caption = 'Pesquisar'
        TabOrder = 2
        OnClick = btnPesquisarClick
      end
    end
    object tabCadastrar: TTabSheet
      Caption = 'Cadastrar'
      ImageIndex = 1
      ExplicitWidth = 561
      ExplicitHeight = 173
    end
  end
end
