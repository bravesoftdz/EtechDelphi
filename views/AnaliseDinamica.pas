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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAnaliseDinamica: TFrmAnaliseDinamica;

implementation

{$R *.dfm}

procedure TFrmAnaliseDinamica.FormShow(Sender: TObject);
begin
  WebCharts1
    .NewProject
      .Charts
        .Bar
          .Attributes
            .Name('b1')
            .Title('Meu gráfico')
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
