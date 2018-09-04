unit ClassPreencheNF;

interface

uses
  Datasnap.DBClient, System.SysUtils, System.Variants, System.Classes, Data.DB;

type
  TNF = class
  private
    FDataSetGrupo: TClientDataSet;
    FDataSetGridNF: TClientDataSet;
    FDataSetProduto: TClientDataSet;
    FDataSetFornecedor: TClientDataSet;
  private
    procedure SetDataSetNF();
    procedure SetDataSetGrupo();
    procedure SetDataSetProduto();
    procedure SetDataSetFornecedor();
  public
    function GetDataSetNF(): TClientDataSet;
    function GetDataSetGrupo(): TClientDataSet;
    function GetDataSetProduto(): TClientDataSet;
    function GetDataSetFornecedor(): TClientDataSet;
  public
    constructor Create;
  end;

implementation

end.
