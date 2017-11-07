unit UfrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedor1: TMenuItem;
    N1: TMenuItem;
    Usurio1: TMenuItem;
    N2: TMenuItem;
    Produto1: TMenuItem;
    N3: TMenuItem;
    FormasdePagamentp1: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    Vendas1: TMenuItem;
    Pedido1: TMenuItem;
    N4: TMenuItem;
    Pesquisar1: TMenuItem;
    Compra1: TMenuItem;
    Pedidos1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    stbDataHora: TStatusBar;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function dataStatus: String;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses UfrmCadCliente;

{$R *.dfm}

{ TfrmPrincipal }

function TfrmPrincipal.dataStatus: String;
  const
    meses: array[1..12] of String = ('Janeiro', 'Fevereiro','Março','Abril','Maio','Junho',
                              'Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');
    semana: array[1..7] of string = ('Domingo', 'Segunda-Feira','Terça-Feira','Quarta-Feira',
                              'Quinta-Feira','Sexta-Feira','Sábado');
  var
    dia,mes,ano,diaSem: Word;
begin
  decodedate(date,ano,mes,dia);
  diaSem := dayofweek(date);
  result := semana[diaSem] + ', ' + inttostr(dia) + ' de ' +  meses[mes] + ' de '+ inttostr(ano);
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  stbDataHora.Panels[0].Text := datetostr(date);//Transforma data em string
  stbDataHora.Panels[1].Text := timetostr(time);//transforma a hora em string
  stbDataHora.Panels[2].Text := DataStatus;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
  try
    frmCadCliente := TfrmCadCliente.Create(self);
    frmCadCliente.ShowModal;
  finally
    frmCadCliente.Free;
    frmCadCliente := nil;
  end;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

end.
