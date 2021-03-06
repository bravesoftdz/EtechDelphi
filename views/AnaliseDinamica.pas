unit AnaliseDinamica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, View.WebCharts,
  Data.DB, Datasnap.DBClient;

type
  TFrmAnaliseDinamica = class(TForm)
    WebBrowser1: TWebBrowser;
    WebCharts1: TWebCharts;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Label: TStringField;
    ClientDataSet1Value: TStringField;
    ClientDataSet1RGB: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure AlimentarDataSet(const pLabel, pValue, pRGB: String);
  public
    { Public declarations }
  end;

var
  FrmAnaliseDinamica: TFrmAnaliseDinamica;

implementation

{$R *.dfm}

procedure TFrmAnaliseDinamica.AlimentarDataSet(const pLabel, pValue,
  pRGB: String);
begin
  ClientDataSet1.Append();
  ClientDataSet1.FieldByName('Label').AsString := pLabel;
  ClientDataSet1.FieldByName('Value').AsString := pValue;
  ClientDataSet1.FieldByName('RGB').AsString := pRGB;
  ClientDataSet1.Post();
end;

procedure TFrmAnaliseDinamica.FormCreate(Sender: TObject);
begin
  ClientDataSet1.CreateDataSet();
  AlimentarDataSet('Bebida', '1032522', '227, 233, 235');
  AlimentarDataSet('HortFruit', '209021', '227, 233, 235');
  AlimentarDataSet('Carne', '1378520', '227, 233, 235');
  AlimentarDataSet('Descartavel', '987301', '227, 233, 235');
  AlimentarDataSet('Escritorio', '109280', '232, 75, 48');
  AlimentarDataSet('Limpeza', '1409921', '30, 182, 203');
  AlimentarDataSet('Sobremesa', '480210', '227, 233, 235');
  AlimentarDataSet('Sushi', '598019', '227, 233, 235');
  AlimentarDataSet('Fierinha', '111109', '227, 233, 235');
end;

procedure TFrmAnaliseDinamica.FormShow(Sender: TObject);
begin
  WebCharts1
    .NewProject
      .Charts
        .Bar
          .Attributes
            .Name('b1')
            .Title('An�lise Din�mica')
            .DataSet
              .DataSet(ClientDataSet1)
            .&End
          .&End
        .&End
      .&End
      .WebBrowser(WebBrowser1)
      .Generated;
end;

end.
