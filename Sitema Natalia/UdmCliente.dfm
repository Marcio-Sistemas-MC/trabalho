object dmCliente: TdmCliente
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 275
  Width = 201
  object sdsCadCliente: TSQLDataSet
    CommandText = 'select * from cliente'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPrincipal.sqlConSisComercial
    Left = 40
    Top = 8
    object sdsCadClienteCLICODIGO: TIntegerField
      FieldName = 'CLICODIGO'
    end
    object sdsCadClienteCLINOME: TStringField
      FieldName = 'CLINOME'
      Size = 100
    end
    object sdsCadClienteCLIENDERECO: TStringField
      FieldName = 'CLIENDERECO'
      Size = 100
    end
    object sdsCadClienteCLIBAIRRO: TStringField
      FieldName = 'CLIBAIRRO'
      Size = 50
    end
    object sdsCadClienteCLICIDADE: TStringField
      FieldName = 'CLICIDADE'
      Size = 50
    end
    object sdsCadClienteCLIUF: TStringField
      FieldName = 'CLIUF'
      FixedChar = True
      Size = 2
    end
    object sdsCadClienteCLITEL1: TStringField
      FieldName = 'CLITEL1'
    end
    object sdsCadClienteCLITEL2: TStringField
      FieldName = 'CLITEL2'
    end
    object sdsCadClienteCLICELULAR: TStringField
      FieldName = 'CLICELULAR'
    end
    object sdsCadClienteCLICEP: TStringField
      FieldName = 'CLICEP'
      Size = 9
    end
    object sdsCadClienteDTCADASTRO: TSQLTimeStampField
      FieldName = 'DTCADASTRO'
    end
    object sdsCadClienteDTATUALIZACAO: TSQLTimeStampField
      FieldName = 'DTATUALIZACAO'
    end
  end
  object dspCadCliente: TDataSetProvider
    DataSet = sdsCadCliente
    Left = 56
    Top = 72
  end
  object cdsCadCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadCliente'
    Left = 40
    Top = 128
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
    object cdsCadClienteCLICODIGO: TIntegerField
      FieldName = 'CLICODIGO'
    end
  end
end
