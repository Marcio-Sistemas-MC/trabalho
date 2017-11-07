unit Ueditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ComCtrls, ToolWin, ImgList, ExtCtrls;

type
  TfEditor = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Novo1: TMenuItem;
    abrir1: TMenuItem;
    Salvar1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Editar1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N2: TMenuItem;
    SelecionarTudo1: TMenuItem;
    Formatar1: TMenuItem;
    Fonte1: TMenuItem;
    PlanodeFundo1: TMenuItem;
    meTexto: TMemo;
    listaImagens: TImageList;
    barraFerramentas: TToolBar;
    ToolButton1: TToolButton;
    btAbrir: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    btRecortar: TToolButton;
    btCopiar: TToolButton;
    btColar: TToolButton;
    barraStatus: TStatusBar;
    caixaAbrir: TOpenDialog;
    caixaSalvar: TSaveDialog;
    caixaFontes: TFontDialog;
    caixaCores: TColorDialog;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure meTextoChange(Sender: TObject);
    procedure abrir1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure PlanodeFundo1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure SelecionarTudo1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure exibirHint(Sender: TObject);
    procedure Inicio(Sender: TObject);
  public
    { Public declarations }
  end;

var
  fEditor: TfEditor;

implementation

{$R *.dfm}

procedure TfEditor.exibirHint(Sender: TObject);
begin
  barraStatus.Panels[0].Text := Application.Hint;
end;

procedure TfEditor.Inicio(Sender: TObject);
begin
  meTexto.Clear;
  recortar1.Enabled := false;
  copiar1.Enabled := false;
  colar1.Enabled := false;
  selecionarTudo1.Enabled := false;
  btRecortar.Enabled := false;
  btCopiar.Enabled := false;
  btColar.Enabled := false;
end;

procedure TfEditor.FormCreate(Sender: TObject);
begin
  Application.OnHint := exibirHint;
  Inicio(Sender);
end;

procedure TfEditor.Novo1Click(Sender: TObject);
begin
  Inicio(Sender);
end;

procedure TfEditor.meTextoChange(Sender: TObject);
begin
  if meTexto.Text <> '' then
  begin
    recortar1.Enabled := true;
    copiar1.Enabled := true;
    selecionarTudo1.Enabled := true;
    btRecortar.Enabled := true;
    btCopiar.Enabled := true;
  end
  else
  begin
    recortar1.Enabled := false;
    copiar1.Enabled := false;
    selecionarTudo1.Enabled := false;
    btRecortar.Enabled := false;
    btCopiar.Enabled := false;
  end;
end;

procedure TfEditor.abrir1Click(Sender: TObject);
begin
  if caixaAbrir.Execute then
    meTexto.Lines.LoadFromFile(CaixaAbrir.FileName);
end;

procedure TfEditor.Salvar1Click(Sender: TObject);
begin
  if caixaSalvar.Execute then
    meTexto.Lines.SaveToFile(caixaSalvar.FileName);
end;

procedure TfEditor.Fonte1Click(Sender: TObject);
begin
  if caixaFontes.Execute then
    meTexto.Font := caixaFontes.Font;
end;

procedure TfEditor.PlanodeFundo1Click(Sender: TObject);
begin
  if caixaCores.Execute then
    meTexto.Color := caixaCores.Color;
end;

procedure TfEditor.Recortar1Click(Sender: TObject);
begin
  meTexto.CutToClipboard;
  colar1.Enabled := true;
  btColar.Enabled := true;
end;

procedure TfEditor.Copiar1Click(Sender: TObject);
begin
  meTexto.CopyToClipboard;
  colar1.Enabled := true;
  btColar.Enabled := true;
end;

procedure TfEditor.Colar1Click(Sender: TObject);
begin
  meTexto.PasteFromClipboard;
end;

procedure TfEditor.SelecionarTudo1Click(Sender: TObject);
begin
  meTexto.SelectAll;
end;

procedure TfEditor.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TfEditor.Timer1Timer(Sender: TObject);
begin
  barraStatus.Panels[1].Text := datetoStr(date);
  barraStatus.Panels[2].Text := timeToStr(time);
end;

end.
