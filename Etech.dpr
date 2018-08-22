program Etech;

{$R 'TBGWebChartsResource.res' '..\..\Components\TBGWebCharts\trunk\TBGWebChartsResource.rc'}

uses
  Vcl.Forms,
  Principal in 'views\Principal.pas' {FrmPrincipal},
  NF in 'views\NF.pas' {FrmNF},
  AnaliseDinamica in 'views\AnaliseDinamica.pas' {FrmAnaliseDinamica};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmNF, FrmNF);
  Application.CreateForm(TFrmAnaliseDinamica, FrmAnaliseDinamica);
  Application.Run;
end.
