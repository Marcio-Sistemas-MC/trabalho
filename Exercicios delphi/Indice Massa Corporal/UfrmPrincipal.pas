unit UfrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, UfrmRequisitos, UfrmResultado,UdadosPessoa;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    edAltura: TEdit;
    edPeso: TEdit;
    cmbSexo: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  frmRequisitos.ShowModal;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  try
    PdadosPessoa.altura := strtofloat(edAltura.Text);
    PdadosPessoa.peso := strtofloat(edPeso.Text);
    PdadosPessoa.sexo := cmbSexo.Text;
    PdadosPessoa.imc := calcularIMC(PdadosPessoa.peso,PdadosPessoa.altura,PdadosPessoa.sexo);
    frmResultado.ShowModal;
  except
    showmessage('Algum erro ocorreu');
  end;
end;

end.
