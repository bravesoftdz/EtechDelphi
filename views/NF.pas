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
  cxGrid, Vcl.StdCtrls, cxLocalization, Datasnap.DBClient;

type
  TFrmNF = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsNF: TDataSource;
    cdsNF: TClientDataSet;
    cdsNFMes: TStringField;
    cdsNFSemana: TStringField;
    cdsNFDia: TIntegerField;
    cdsNFGrupo: TStringField;
    cdsNFFornecedor: TStringField;
    cdsNFProduto: TStringField;
    cdsNFUndMedida: TStringField;
    cdsNFQtd: TFloatField;
    cdsNFValorTotal: TFloatField;
    cdsNFNF: TIntegerField;
    cxGrid1DBTableView1Mes: TcxGridDBColumn;
    cxGrid1DBTableView1Semana: TcxGridDBColumn;
    cxGrid1DBTableView1Dia: TcxGridDBColumn;
    cxGrid1DBTableView1Grupo: TcxGridDBColumn;
    cxGrid1DBTableView1Fornecedor: TcxGridDBColumn;
    cxGrid1DBTableView1Produto: TcxGridDBColumn;
    cxGrid1DBTableView1UndMedida: TcxGridDBColumn;
    cxGrid1DBTableView1Qtd: TcxGridDBColumn;
    cxGrid1DBTableView1ValorTotal: TcxGridDBColumn;
    cxGrid1DBTableView1NF: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNF: TFrmNF;

implementation

{$R *.dfm}

procedure TFrmNF.FormShow(Sender: TObject);
begin
  cdsNF.Append;
  cdsNF.FieldByName('Mes').AsString := 'Agosto';
  cdsNF.FieldByName('Semana').AsString := '3';
  cdsNF.FieldByName('Dia').AsInteger := 21;
  cdsNF.FieldByName('Grupo').AsString := 'Bebida';
  cdsNF.FieldByName('Fornecedor').AsString := 'Coca';
  cdsNF.FieldByName('Produto').AsString := 'Coca-Cola';
//  cdsNF.FieldByName('UndMedida').AsString := 'Unid';
//  cdsNF.FieldByName('Qtd').AsFloat := 6;
//  cdsNF.FieldByName('ValorTotal').AsFloat := 12.25;
//  cdsNF.FieldByName('NF').AsInteger := 22145;
  cdsNF.Post;
end;

end.
