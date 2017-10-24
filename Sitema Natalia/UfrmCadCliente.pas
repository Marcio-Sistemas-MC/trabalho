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

end.






