program Editor;

uses
  Forms,
  Ueditor in 'Ueditor.pas' {fEditor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfEditor, fEditor);
  Application.Run;
end.
