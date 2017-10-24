unit UdmCliente;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmCliente = class(TDataModule)
    sdsCadCliente: TSQLDataSet;
    dspCadCliente: TDataSetProvider;
    cdsCadCliente: TClientDataSet;
    cdsCadClienteCLICODIGO: TIntegerField;
    cdsCadClienteCLINOME: TStringField;
    cdsCadClienteCLIENDERECO: TStringField;
    cdsCadClienteCLIBAIRRO: TStringField;
    cdsCadClienteCLICIDADE: TStringField;
    cdsCadClienteCLIUF: TStringField;
    cdsCadClienteCLITEL1: TStringField;
    cdsCadClienteCLITEL2: TStringField;
    cdsCadClienteCLICELULAR: TStringField;
    cdsCadClienteCLICEP: TStringField;
    cdsCadClienteDTCADASTRO: TSQLTimeStampField;
    cdsCadClienteDTATUALIZACAO: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCliente: TdmCliente;

implementation

uses UdmPrincipal;

{$R *.dfm}

end.
