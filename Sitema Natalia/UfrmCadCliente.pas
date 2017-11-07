unit UfrmCadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls;

type
  TfrmCadCliente = class(TForm)
    pnlCliente: TPanel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnSair: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dtsCadCliente: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

uses UdmCliente, UdmPrincipal;

{$R *.dfm}

procedure TfrmCadCliente.FormCreate(Sender: TObject);
begin
  if not assigned(dmCliente) then
    dmCliente := TdmCliente.Create(self);
  dmCliente.cdsCadCliente.Open;
end;

procedure TfrmCadCliente.FormDestroy(Sender: TObject);
begin
  dmCliente.Free;
  dmCliente := nil;
end;

procedure TfrmCadCliente.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dmCliente.cdsCadCliente.Close;
end;

procedure TfrmCadCliente.btnNovoClick(Sender: TObject);
begin
  dmcliente.cdsCadCliente.Append;
  btnsalvar.Enabled := true;
  btnalterar.Enabled := false;
  btncancelar.Enabled := true;
  btnexcluir.Enabled := false;
  btnnovo.Enabled := false;
  btnlocalizar.Enabled := false;
  btnsair.Enabled := false;
end;

procedure TfrmCadCliente.btnAlterarClick(Sender: TObject);
begin
  dmcliente.cdsCadCliente.Edit;
  btnsalvar.Enabled := true;
  btnalterar.Enabled := false;
  btncancelar.Enabled := true;
  btnexcluir.Enabled := false;
  btnnovo.Enabled := false;
  btnlocalizar.Enabled := false;
  btnsair.Enabled := false;
end;

procedure TfrmCadCliente.btnCancelarClick(Sender: TObject);
begin
  dmcliente.cdsCadCliente.Cancel;
  dmcliente.cdsCadCliente.CancelUpdates;
  btnsalvar.Enabled := false;
  btnalterar.Enabled := false;
  btncancelar.Enabled := false;
  btnexcluir.Enabled := false;
  btnnovo.Enabled := true;
  btnlocalizar.Enabled := true;
  btnsair.Enabled := true;
end;

procedure TfrmCadCliente.btnSalvarClick(Sender: TObject);
begin
  dmcliente.cdsCadCliente.Post;
  if dmcliente.cdsCadCliente.ApplyUpdates(0) <> 0 then
    dmcliente.cdsCadCliente.CancelUpdates;
  btnsalvar.Enabled := false;
  btnalterar.Enabled := false;
  btncancelar.Enabled := false;
  btnexcluir.Enabled := false;
  btnnovo.Enabled := true;
  btnlocalizar.Enabled := true;
  btnsair.Enabled := true;
end;

procedure TfrmCadCliente.btnExcluirClick(Sender: TObject);
begin
  dmcliente.cdsCadCliente.Delete;
  if dmcliente.cdsCadCliente.ApplyUpdates(0) <> 0 then
    dmcliente.cdsCadCliente.CancelUpdates;

  btnsalvar.Enabled := false;
  btnalterar.Enabled := false;
  btncancelar.Enabled := false;
  btnexcluir.Enabled := false;
  btnnovo.Enabled := true;
  btnlocalizar.Enabled := true;
  btnsair.Enabled := true;
end;

procedure TfrmCadCliente.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadCliente.DBEdit1Change(Sender: TObject);
begin

end;

end.






