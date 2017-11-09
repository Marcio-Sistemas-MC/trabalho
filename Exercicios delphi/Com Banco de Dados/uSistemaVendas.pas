unit uSistemaVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ComCtrls;

type
  TfSistemaVendas = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    UF1: TMenuItem;
    N1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    N2: TMenuItem;
    Estoque1: TMenuItem;
    Produtos1: TMenuItem;
    Entradadeprodutos1: TMenuItem;
    Panel1: TPanel;
    barraStatus: TStatusBar;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSistemaVendas: TfSistemaVendas;

implementation

{$R *.dfm}

procedure TfSistemaVendas.Timer1Timer(Sender: TObject);
begin
  barraStatus.Panels[2].Text := dateToStr(date);
  barraStatus.Panels[3].Text := timeToStr(time);
end;

end.
