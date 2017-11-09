object fSistemaVendas: TfSistemaVendas
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Sistema de Controle de Vendas'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'Sistema de Controle de Vendas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object barraStatus: TStatusBar
    Left = 0
    Top = 402
    Width = 912
    Height = 19
    Panels = <
      item
        Text = 'Bem vindo ao Sistema'
        Width = 300
      end
      item
        Text = 'Curso de Delphi 7'
        Width = 300
      end
      item
        Width = 100
      end
      item
        Width = 100
      end>
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 48
    object Cadastro1: TMenuItem
      Caption = '&Cadastro'
      object UF1: TMenuItem
        Caption = '&UF'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Clientes1: TMenuItem
        Caption = 'C&lientes'
      end
      object Fornecedores1: TMenuItem
        Caption = '&Fornecedores'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Estoque1: TMenuItem
        Caption = '&Estoque'
        object Produtos1: TMenuItem
          Caption = '&Produtos'
        end
        object Entradadeprodutos1: TMenuItem
          Caption = 'E&ntrada de produtos'
        end
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 16
    Top = 88
  end
end
