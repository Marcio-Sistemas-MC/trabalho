object dmCliente: TdmCliente
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 275
  Width = 136
  object sdsCadCliente: TSQLDataSet
    CommandText = 'select * from cliente'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPrincipal.sqlConSisComercial
    Left = 16
    Top = 8
  end
  object dspCadCliente: TDataSetProvider
    DataSet = sdsCadCliente
    Left = 16
    Top = 64
  end
  object cdsCadCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadCliente'
    Left = 32
    Top = 120
    object cdsCadClienteCLICODIGO: TIntegerField
      FieldName = 'CLICODIGO'
      Required = True
    end
    object cdsCadClienteCLINOME: TStringField
      FieldName = 'CLINOME'
      Size = 100
    end
    object cdsCadClienteCLIENDERECO: TStringField
      FieldName = 'CLIENDERECO'
      Size = 100
    end
    object cdsCadClienteCLIBAIRRO: TStringField
      FieldName = 'CLIBAIRRO'
      Size = 50
    end
    object cdsCadClienteCLICIDADE: TStringField
      FieldName = 'CLICIDADE'
      Size = 50
    end
    object cdsCadClienteCLIUF: TStringField
      FieldName = 'CLIUF'
      FixedChar = True
      Size = 2
    end
    object cdsCadClienteCLITEL1: TStringField
      FieldName = 'CLITEL1'
    end
    object cdsCadClienteCLITEL2: TStringField
      FieldName = 'CLITEL2'
    end
    object cdsCadClienteCLICELULAR: TStringField
      FieldName = 'CLICELULAR'
    end
    object cdsCadClienteCLICEP: TStringField
      FieldName = 'CLICEP'
      Size = 9
    end
    object cdsCadClienteDTCADASTRO: TSQLTimeStampField
      FieldName = 'DTCADASTRO'
    end
    object cdsCadClienteDTATUALIZACAO: TSQLTimeStampField
      FieldName = 'DTATUALIZACAO'
    end
  end
end