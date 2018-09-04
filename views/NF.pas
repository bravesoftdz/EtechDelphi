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
  dxCustomHint, cxHint, ClassPreencheDataSet, cxDBLookupComboBox;

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
    cxHintStyleController1: TcxHintStyleController;
    dsProduto: TDataSource;
    dsGrupo: TDataSource;
    dsFornecedor: TDataSource;
    imgSombraTopo: TcxImage;
    procedure FormCreate(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FNF: TNF;
    FDataSetNF: TClientDataSet;
    FDatasetGrupo: TClientDataSet;
    FDataSetProduto: TClientDataSet;
    FDataSetFornecedor: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNF: TFrmNF;

implementation

{$R *.dfm}

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

procedure TFrmNF.FormCreate(Sender: TObject);
begin
  cxLocalizer.FileName := (ExtractFilePath(Application.ExeName) + '\TraduçãoDev.ini');
  cxLocalizer.Active := True;
  cxLocalizer.Locale := 1046;

  FNF := TNF.Create;
  FDataSetNF := FNF.GetDataSetNF;
  FDatasetGrupo := FNF.GetDataSetGrupo;
  FDataSetProduto := FNF.GetDataSetProduto;
  FDataSetFornecedor := FNF.GetDataSetFornecedor;


  dsNF.DataSet := FDataSetNF;
  dsGrupo.DataSet := FDatasetGrupo;
  dsProduto.DataSet := FDataSetProduto;
  dsFornecedor.DataSet := FDataSetFornecedor;
end;

procedure TFrmNF.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FDataSetFornecedor);
  FreeAndNil(FDataSetProduto);
  FreeAndNil(FDatasetGrupo);
  FreeAndNil(FDataSetNF);
end;

end.
