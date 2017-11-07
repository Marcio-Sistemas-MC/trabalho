object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistemas de Vendas'
  ClientHeight = 294
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object stbdata: TStatusBar
    Left = 0
    Top = 275
    Width = 572
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
        Width = 200
      end>
    ExplicitLeft = 280
    ExplicitTop = 224
    ExplicitWidth = 0
  end
  object MainMenu1: TMainMenu
    Left = 360
    Top = 184
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
  object Timer1: TTimer
    Left = 424
    Top = 184
  end
end
