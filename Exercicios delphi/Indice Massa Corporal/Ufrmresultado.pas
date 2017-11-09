unit Ufrmresultado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, UdadosPessoa;

type
  TfrmResultado = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbAltura: TLabel;
    lbPeso: TLabel;
    lbSexo: TLabel;
    lbIMC: TLabel;
    lbResultado: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResultado: TfrmResultado;

implementation

{$R *.dfm}

procedure TfrmResultado.FormShow(Sender: TObject);
begin
  lbAltura.Caption := floattostr(PdadosPessoa.altura);
  lbPeso.Caption := floattostr(PdadosPessoa.peso);
  lbsexo.Caption := PdadosPessoa.sexo;
  lbIMC.Caption := PdadosPessoa.imc;
  lbresultado.Caption := '..........';
end;

end.
