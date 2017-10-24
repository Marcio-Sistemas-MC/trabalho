object frmCadCliente: TfrmCadCliente
  Left = 205
  Top = 125
  Width = 928
  Height = 281
  Caption = 'Cadastro de Cliente'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 144
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 288
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 680
    Top = 8
    Width = 68
    Height = 13
    Caption = 'Data Cadastro'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 800
    Top = 8
    Width = 81
    Height = 13
    Caption = 'Data Atualiza'#231#227'o'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 144
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 640
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 144
    Top = 104
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 496
    Top = 104
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 552
    Top = 104
    Width = 21
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 704
    Top = 104
    Width = 51
    Height = 13
    Caption = 'Telefone 1'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 144
    Top = 152
    Width = 32
    Height = 13
    Caption = 'Celular'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 392
    Top = 152
    Width = 51
    Height = 13
    Caption = 'Telefone 2'
    FocusControl = DBEdit12
  end
  object pnlCliente: TPanel
    Left = 0
    Top = 0
    Width = 137
    Height = 240
    TabOrder = 10
    object btnNovo: TBitBtn
      Left = 16
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 16
      Top = 40
      Width = 105
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 16
      Top = 72
      Width = 105
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object btnExcluir: TBitBtn
      Left = 16
      Top = 104
      Width = 105
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
    end
    object btnSalvar: TBitBtn
      Left = 16
      Top = 136
      Width = 105
      Height = 25
      Caption = 'Salvar'
      TabOrder = 4
    end
    object btnLocalizar: TBitBtn
      Left = 16
      Top = 168
      Width = 105
      Height = 25
      Caption = 'Localizar'
      TabOrder = 5
    end
    object btnSair: TBitBtn
      Left = 16
      Top = 200
      Width = 105
      Height = 25
      Caption = 'Sair'
      TabOrder = 6
    end
  end
  object DBEdit1: TDBEdit
    Left = 144
    Top = 24
    Width = 134
    Height = 21
    DataField = 'CLICODIGO'
    DataSource = dtsCadCliente
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 288
    Top = 24
    Width = 377
    Height = 21
    DataField = 'CLINOME'
    DataSource = dtsCadCliente
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 680
    Top = 24
    Width = 105
    Height = 21
    DataField = 'DTCADASTRO'
    DataSource = dtsCadCliente
    ReadOnly = True
    TabOrder = 11
  end
  object DBEdit4: TDBEdit
    Left = 800
    Top = 24
    Width = 97
    Height = 21
    DataField = 'DTATUALIZACAO'
    DataSource = dtsCadCliente
    ReadOnly = True
    TabOrder = 12
  end
  object DBEdit5: TDBEdit
    Left = 144
    Top = 72
    Width = 481
    Height = 21
    DataField = 'CLIENDERECO'
    DataSource = dtsCadCliente
    TabOrder = 2
  end
  object DBEdit6: TDBEdit
    Left = 640
    Top = 72
    Width = 257
    Height = 21
    DataField = 'CLIBAIRRO'
    DataSource = dtsCadCliente
    TabOrder = 3
  end
  object DBEdit7: TDBEdit
    Left = 144
    Top = 120
    Width = 337
    Height = 21
    DataField = 'CLICIDADE'
    DataSource = dtsCadCliente
    TabOrder = 4
  end
  object DBEdit8: TDBEdit
    Left = 496
    Top = 120
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CLIUF'
    DataSource = dtsCadCliente
    TabOrder = 5
  end
  object DBEdit9: TDBEdit
    Left = 552
    Top = 120
    Width = 137
    Height = 21
    DataField = 'CLICEP'
    DataSource = dtsCadCliente
    TabOrder = 6
  end
  object DBEdit10: TDBEdit
    Left = 704
    Top = 120
    Width = 193
    Height = 21
    DataField = 'CLITEL1'
    DataSource = dtsCadCliente
    TabOrder = 7
  end
  object DBEdit11: TDBEdit
    Left = 144
    Top = 168
    Width = 233
    Height = 21
    DataField = 'CLICELULAR'
    DataSource = dtsCadCliente
    TabOrder = 8
  end
  object DBEdit12: TDBEdit
    Left = 392
    Top = 168
    Width = 217
    Height = 21
    DataField = 'CLITEL2'
    DataSource = dtsCadCliente
    TabOrder = 9
  end
  object dtsCadCliente: TDataSource
    DataSet = dmCliente.cdsCadCliente
    Left = 848
    Top = 168
  end
end
