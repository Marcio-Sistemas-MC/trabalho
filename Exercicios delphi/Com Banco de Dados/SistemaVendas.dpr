program SistemaVendas;

uses
  Forms,
  uSistemaVendas in 'uSistemaVendas.pas' {fSistemaVendas},
  udmDados in 'udmDados.pas' {dmdados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfSistemaVendas, fSistemaVendas);
  Application.CreateForm(Tdmdados, dmdados);
  Application.Run;
end.
