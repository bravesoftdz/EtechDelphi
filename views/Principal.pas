unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.WinXCtrls,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  dxGDIPlusClasses, Vcl.StdCtrls, NF, AnaliseDinamica, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxWheelPicker, dxNumericWheelPicker,
  dxDateTimeWheelPicker, dxDBDateTimeWheelPicker, cxImage;

type
  TFrmPrincipal = class(TForm)
    pnlUp: TPanel;
    ImageListMenu: TImageList;
    ActionListMenu: TActionList;
    actInicio: TAction;
    actNF: TAction;
    actRelatorio: TAction;
    actAtual: TAction;
    actMenu: TAction;
    Image1: TImage;
    actSair: TAction;
    actConfiguracao: TAction;
    img1: TImage;
    pnlCentral: TPanel;
    SplitView: TSplitView;
    CategoryButtons: TCategoryButtons;
    CategoryButtons1: TCategoryButtons;
    dxDBDateTimeWheelPicker1: TdxDBDateTimeWheelPicker;
    procedure actMenuExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure pnlUpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlUpDblClick(Sender: TObject);
    procedure actNFExecute(Sender: TObject);
    procedure actRelatorioExecute(Sender: TObject);
    procedure actInicioExecute(Sender: TObject);
  private
    procedure CloseForm();
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.actInicioExecute(Sender: TObject);
begin
  CloseForm();
end;

procedure TFrmPrincipal.actMenuExecute(Sender: TObject);
begin
  if SplitView.Opened then
    SplitView.Close
  else
    SplitView.Open
end;

procedure TFrmPrincipal.actNFExecute(Sender: TObject);
begin
  CloseForm();
  FrmNF.Show();
  FrmNF.Parent := pnlCentral;
end;

procedure TFrmPrincipal.actRelatorioExecute(Sender: TObject);
begin
  CloseForm();
  FrmAnaliseDinamica.Show();
  FrmAnaliseDinamica.Parent := pnlCentral;
end;

procedure TFrmPrincipal.actSairExecute(Sender: TObject);
begin
  Close();
end;

procedure TFrmPrincipal.CloseForm();
begin
  FrmNF.Close();
  FrmAnaliseDinamica.Close();
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
