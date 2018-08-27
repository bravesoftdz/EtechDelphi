unit NF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, cxLocalization, Datasnap.DBClient, cxLabel, cxSpinEdit,
  cxTextEdit, cxCurrencyEdit, cxDBNavigator, cxDropDownEdit, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Vcl.CategoryButtons, System.ImageList,
  Vcl.ImgList, dxGDIPlusClasses, cxContainer, cxImage, dxScreenTip,
  dxCustomHint, cxHint;

type
  TActionDataSet = (adInserir, adEditar, adSalvar, adDeletar, adAtualizar);

type
  TFrmNF = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsNF: TDataSource;
    cxLocalizer: TcxLocalizer;
    StyleRepositoryNF: TcxStyleRepository;
    GridLinha1: TcxStyle;
    GridLinha2: TcxStyle;
    Selecionado: TcxStyle;
    cdsNF: TClientDataSet;
    cdsNFMes: TStringField;
    cdsNFSemana: TIntegerField;
    cdsNFDia: TIntegerField;
    cdsNFGrupo: TStringField;
    cdsNFFornecedor: TStringField;
    cdsNFProduto: TStringField;
    cdsNFUnd: TStringField;
    cdsNFQtd: TFloatField;
    cdsNFVlTotal: TFloatField;
    cdsNFNF: TIntegerField;
    cxGrid1DBTableView1Mes: TcxGridDBColumn;
    cxGrid1DBTableView1Semana: TcxGridDBColumn;
    cxGrid1DBTableView1Dia: TcxGridDBColumn;
    cxGrid1DBTableView1Grupo: TcxGridDBColumn;
    cxGrid1DBTableView1Fornecedor: TcxGridDBColumn;
    cxGrid1DBTableView1Produto: TcxGridDBColumn;
    cxGrid1DBTableView1Und: TcxGridDBColumn;
    cxGrid1DBTableView1Qtd: TcxGridDBColumn;
    cxGrid1DBTableView1VlTotal: TcxGridDBColumn;
    cxGrid1DBTableView1NF: TcxGridDBColumn;
    GridBackground: TcxStyle;
    cxGrid1DBTableView1Preco: TcxGridDBColumn;
    pnlNavigator: TPanel;
    CategoryButtons1: TCategoryButtons;
    actlstBotao: TActionList;
    actInserir: TAction;
    actSalvar: TAction;
    actDelete: TAction;
    actEditar: TAction;
    actAltualizar: TAction;
    ilBotao: TImageList;
    cxImage1: TcxImage;
    cxHintStyleController1: TcxHintStyleController;
    procedure FormCreate(Sender: TObject);
    procedure actAltualizarExecute(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
  private
    FDataSet: TClientDataSet;
  private
    procedure CriarDataSet();
    procedure PreencheDataSet();
  public
    { Public declarations }
  end;

var
  FrmNF: TFrmNF;

implementation

{$R *.dfm}

procedure TFrmNF.actAltualizarExecute(Sender: TObject);
begin
  PreencheDataSet();
end;

procedure TFrmNF.actDeleteExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir este registro', 'Confirmar', MB_ICONQUESTION+MB_YESNO) = mrYes then
    cxGrid1DBTableView1.DataController.DataSet.Delete();
end;

procedure TFrmNF.actEditarExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSet.Edit();
end;

procedure TFrmNF.actInserirExecute(Sender: TObject);
begin
    cxGrid1DBTableView1.DataController.DataSet.Append();
end;

procedure TFrmNF.actSalvarExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSet.Post();
end;

procedure TFrmNF.CriarDataSet();
begin
  FDataSet := TClientDataSet.Create(nil);
  FDataSet.FieldDefs.Add('Mes', ftString, 20);
  FDataSet.FieldDefs.Add('Semana', ftString, 20);
  FDataSet.FieldDefs.Add('Dia', ftInteger, 0);
  FDataSet.FieldDefs.Add('Grupo', ftString, 50);
  FDataSet.FieldDefs.Add('Fornecedor', ftString, 50);
  FDataSet.FieldDefs.Add('Produto', ftString, 50);
  FDataSet.FieldDefs.Add('Und', ftString, 20);
  FDataSet.FieldDefs.Add('Qtd', ftFloat, 0);
  FDataSet.FieldDefs.Add('Preco', ftFloat, 0);
  FDataSet.FieldDefs.Add('VlTotal', ftFloat, 0);
  FDataSet.FieldDefs.Add('NF', ftInteger, 0);
  FDataSet.CreateDataSet();
  dsNF.DataSet := FDataSet;
end;

procedure TFrmNF.FormCreate(Sender: TObject);
begin
  CriarDataSet();
  cxLocalizer.FileName := (ExtractFilePath(Application.ExeName) + '\TraduçãoDev.ini');
  cxLocalizer.Active := True;
  cxLocalizer.Locale := 1046;
end;

procedure TFrmNF.PreencheDataSet;
var
  lBookMark: TBookmark;
begin
  Screen.Cursor := crHourGlass;
  try
    lBookMark := FDataSet.GetBookmark;
    FDataSet.Append;
    FDataSet.FieldByName('Mes').AsString := 'Agosto';
    FDataSet.FieldByName('Semana').AsString := 'Semana 1';
    FDataSet.FieldByName('Dia').AsInteger := 21;
    FDataSet.FieldByName('Grupo').AsString := 'Bebida';
    FDataSet.FieldByName('Fornecedor').AsString := 'Bebidas do vale';
    FDataSet.FieldByName('Produto').AsString := 'Coca-Cola';
    FDataSet.FieldByName('Und').AsString := 'Unid';
    FDataSet.FieldByName('Qtd').AsFloat := 6;
    FDataSet.FieldByName('VlTotal').AsFloat := 12.25;
    FDataSet.FieldByName('Preco').AsFloat := 9.50;
    FDataSet.FieldByName('NF').AsInteger := 22145;
    FDataSet.Post;
    FDataSet.GotoBookmark(lBookMark);
  finally
    FDataSet.FreeBookmark(lBookMark);
    Screen.Cursor := crDefault;
  end;
end;

end.
