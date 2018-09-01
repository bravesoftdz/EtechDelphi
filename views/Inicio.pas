unit Inicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, View.WebCharts,
  Data.DB, Datasnap.DBClient;

type
  TFrmInicio = class(TForm)
    wbPrincipal: TWebBrowser;
    WebCharts: TWebCharts;
    Cds1: TClientDataSet;
    Cds2: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure CriarDataSet();
    procedure ExibiRelatorio();
    procedure AlimentarDataSet(const pDataSet: TDataSet; pLabel, pValue, pRGB: String);
  public
    { Public declarations }
  end;

var
  FrmInicio: TFrmInicio;

implementation

{$R *.dfm}

{ TFrmInicio }

procedure TFrmInicio.AlimentarDataSet(const pDataSet: TDataSet; pLabel, pValue, pRGB: String);
begin
  pDataSet.Append();
  pDataSet.FieldByName('Label').AsString := pLabel;
  pDataSet.FieldByName('Value').AsString := pValue;
  pDataSet.FieldByName('RGB').AsString := pRGB;
  pDataSet.Post();
end;

procedure TFrmInicio.CriarDataSet;
begin
  Cds1.FieldDefs.Add('Label', ftString, 50);
  Cds1.FieldDefs.Add('Value', ftString, 50);
  Cds1.FieldDefs.Add('RGB', ftString, 20);
  Cds1.CreateDataSet;

  Cds2.FieldDefs.Add('Label', ftString, 50);
  Cds2.FieldDefs.Add('Value', ftString, 50);
  Cds2.FieldDefs.Add('RGB', ftString, 20);
  Cds2.CreateDataSet;
end;

procedure TFrmInicio.ExibiRelatorio();
begin
  WebCharts
    .NewProject
      .Rows
        .Title
          .Configuracoes
            .H3('Vendas')
          .&End
        .&End
      .&End
      .Rows
        .Tag
          .Add(
            WebCharts
              .ContinuosProject
                .Charts
                  .Doughnut
                    .Attributes
                      .Name('b1')
                      .ColSpan(8)
                      .Title('Bebidas')
                      .DataSet
                        .DataSet(Cds1)
                        .textLabel('Semana1')
                      .&End
                      .DataSet
                        .DataSet(Cds2)
                        .textLabel('Semana 2')
                      .&End
                    .&End
                  .&End
                .&End
               .HTML
            )
          .&End
        .Tag
          .Add(
            WebCharts
              .ContinuosProject
                .Charts
                  .Doughnut
                    .Attributes
                      .Name('b1')
                      .ColSpan(8)
                      .Title('Bebidas')
                      .DataSet
                        .DataSet(Cds1)
                        .textLabel('Semana1')
                      .&End
                      .DataSet
                        .DataSet(Cds2)
                        .textLabel('Semana 2')
                      .&End
                    .&End
                  .&End
                .&End
               .HTML
            )
          .&End
        .&End
        .WebBrowser(wbPrincipal)
        .Generated;
end;

procedure TFrmInicio.FormCreate(Sender: TObject);
begin
  CriarDataSet();
end;

procedure TFrmInicio.FormShow(Sender: TObject);
begin
  AlimentarDataSet(Cds1, 'Bebidas', '2019510', '227, 233, 235');
  AlimentarDataSet(Cds1, 'Frutos do Mar', '1519510', '227, 233, 235');
  AlimentarDataSet(Cds1, 'Carnes', '1019510', '227, 233, 235');
  AlimentarDataSet(Cds1, 'Legumes', '2119510', '30, 182, 203');

  AlimentarDataSet(Cds2, 'Congelados', '3119510', '227, 233, 235');
  AlimentarDataSet(Cds2, 'Processados', '3519510', '227, 233, 235');
  AlimentarDataSet(Cds2, 'Frios', '1919510', '30, 182, 203');
  ExibiRelatorio();
end;

end.
