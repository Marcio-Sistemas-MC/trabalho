object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 250
  Width = 388
  object sqlConSisComercial: TSQLConnection
    ConnectionName = 'SisComercial'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=E:\Documentos\GitHub\trabalho\Sitema Natalia\Dados\DADO' +
        'S.FDB'
      'RoleName=RoleName'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ServerCharSet=WIN1254'
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 32
    Top = 16
  end
end
