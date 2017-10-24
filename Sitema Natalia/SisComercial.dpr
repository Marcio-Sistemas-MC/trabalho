program SisComercial;

uses
  Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UdmPrincipal in 'UdmPrincipal.pas' {dmPrincipal: TDataModule},
  UdmCliente in 'UdmCliente.pas' {dmCliente: TDataModule},
  UfrmCadCliente in 'UfrmCadCliente.pas' {frmCadCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.Run;
end.
