program calculadoraIMC;

uses
  Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UFrmRequisitos in 'UFrmRequisitos.pas' {frmRequisitos},
  Ufrmresultado in 'Ufrmresultado.pas' {frmResultado},
  UdadosPessoa in 'UdadosPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmRequisitos, frmRequisitos);
  Application.CreateForm(TfrmResultado, frmResultado);
  Application.Run;
end.
