object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 331
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 13
    Width = 51
    Height = 13
    Caption = 'Valor atual'
  end
  object Label2: TLabel
    Left = 137
    Top = 13
    Width = 61
    Height = 13
    Caption = 'Qtd Parcelas'
  end
  object Label3: TLabel
    Left = 248
    Top = 13
    Width = 73
    Height = 13
    Caption = 'Prazo de pagto'
  end
  object edtValor: TEdit
    Left = 11
    Top = 32
    Width = 89
    Height = 21
    TabOrder = 0
    Text = 'edtValor'
  end
  object edtQtdParcelas: TEdit
    Left = 137
    Top = 32
    Width = 89
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object ComboPrazoPagto: TComboBox
    Left = 248
    Top = 32
    Width = 126
    Height = 21
    TabOrder = 2
    Text = 'Prazo de pagto'
    Items.Strings = (
      'Anual'
      'Mensal')
  end
  object btnGerarProjecao: TButton
    Left = 391
    Top = 30
    Width = 87
    Height = 25
    Caption = 'Gerar proje'#231#227'o'
    TabOrder = 3
    OnClick = btnGerarProjecaoClick
  end
  object Memo: TMemo
    Left = 13
    Top = 72
    Width = 465
    Height = 233
    Lines.Strings = (
      '')
    TabOrder = 4
  end
end
