object frmPrincipal: TfrmPrincipal
  Left = 264
  Top = 128
  Width = 928
  Height = 480
  Align = alClient
  Caption = 'Sistema Comercial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object stbDataHora: TStatusBar
    Left = 0
    Top = 402
    Width = 912
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 200
      end
      item
        Alignment = taCenter
        Width = 200
      end
      item
        Alignment = taCenter
        Width = 120
      end>
  end
  object MainMenu1: TMainMenu
    Left = 104
    Top = 112
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        OnClick = Cliente1Click
      end
      object Fornecedor1: TMenuItem
        Caption = 'Fornecedor'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Usurio1: TMenuItem
        Caption = 'Usu'#225'rio'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object FormasdePagamentp1: TMenuItem
        Caption = 'Formas de Pagamento'
      end
      object CondiesdePagamento1: TMenuItem
        Caption = 'Condi'#231#245'es de Pagamento'
      end
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      object Pedido1: TMenuItem
        Caption = 'Pedido'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Pesquisar1: TMenuItem
        Caption = 'Pesquisar'
      end
    end
    object Compra1: TMenuItem
      Caption = 'Compras'
      object Pedidos1: TMenuItem
        Caption = 'Pedidos'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 152
    Top = 112
  end
end
