object frmInicial: TfrmInicial
  Left = 0
  Top = 0
  Caption = 'Sistema de controle de vendas'
  ClientHeight = 229
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menu
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object stsBarInicial: TStatusBar
    Left = 0
    Top = 200
    Width = 455
    Height = 29
    Panels = <>
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 41
    Align = alTop
    TabOrder = 1
    object btnClientes: TSpeedButton
      Left = 0
      Top = 0
      Width = 57
      Height = 41
      Caption = 'Clientes'
      OnClick = btnClientesClick
    end
    object btnProdutos: TSpeedButton
      Left = 63
      Top = 0
      Width = 57
      Height = 41
      Caption = 'Produtos'
      OnClick = btnProdutosClick
    end
    object btnPdv: TSpeedButton
      Left = 126
      Top = 0
      Width = 57
      Height = 41
      Caption = 'PDV'
    end
  end
  object menu: TMainMenu
    Left = 144
    Top = 104
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Ajustes1: TMenuItem
        Caption = 'Ajustes'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
      end
    end
    object N1: TMenuItem
      Caption = '|'
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros / Consultas'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
    end
    object N2: TMenuItem
      Caption = '|'
    end
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      object PDV1: TMenuItem
        Caption = 'PDV'
      end
      object Caixa1: TMenuItem
        Caption = 'Caixa'
      end
      object Gerenciarvendas1: TMenuItem
        Caption = 'Gerenciar vendas'
      end
      object Vendasabertas1: TMenuItem
        Caption = 'Vendas abertas'
      end
      object N3: TMenuItem
        Caption = '_'
      end
      object Relatriovendas1: TMenuItem
        Caption = 'Relat'#243'rio vendas'
      end
    end
  end
end
