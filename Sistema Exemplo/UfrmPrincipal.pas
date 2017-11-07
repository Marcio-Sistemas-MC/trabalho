unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Sair1: TMenuItem;
    Timer1: TTimer;
    stbdata: TStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
    Function dataStatus : String;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

function TfrmPrincipal.dataStatus: String;
const
  meses: array[1..12] of string = ('Janeiro','Fevereiro','Março','Abril','Maio','Junho',
                                  'Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');
  semana: array[1..7] of string = ('Domingo','Segunda-Feira','Terça-Feira','Quarta-Feira',
                                   'Quinta-Feira','Sexta-Feira','Sábado');
  var dia, mes, ano, diaSem: word;
begin
  decodeDate(date,ano,mes,dia);
  diaSem:=dayofweek(date);
  result:= semana[diaSem] + ', ' + inttostr(dia) + ' de ' + meses[mes]
            + ' de ' + inttostr(ano);
end;

end.
