unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.WinXCtrls,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  dxGDIPlusClasses, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    pnlUp: TPanel;
    ImageListMenu: TImageList;
    ActionListMenu: TActionList;
    actInicio: TAction;
    actNF: TAction;
    actRelatorio: TAction;
    actAtual: TAction;
    SplitView: TSplitView;
    CategoryButtons: TCategoryButtons;
    actMenu: TAction;
    Image1: TImage;
    actSair: TAction;
    actConfiguracao: TAction;
    CategoryButtons1: TCategoryButtons;
    img1: TImage;
    procedure actMenuExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure pnlUpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlUpDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.actMenuExecute(Sender: TObject);
begin
  if SplitView.Opened then
    SplitView.Close
  else
    SplitView.Open
end;

procedure TFrmPrincipal.actSairExecute(Sender: TObject);
begin
  Close();
end;

procedure TFrmPrincipal.pnlUpDblClick(Sender: TObject);
begin
  if Self.WindowState = wsNormal then
    Self.WindowState := wsMaximized
  else
    Self.WindowState := wsNormal;
end;

procedure TFrmPrincipal.pnlUpMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
