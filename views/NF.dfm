object FrmNF: TFrmNF
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsNone
  ClientHeight = 505
  ClientWidth = 998
  Color = clBtnFace
  TransparentColorValue = clNone
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 998
    Height = 505
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsNF
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1Mes: TcxGridDBColumn
        Caption = 'M'#234's'
        DataBinding.FieldName = 'Mes'
        PropertiesClassName = 'TcxLabelProperties'
        MinWidth = 82
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Width = 82
      end
      object cxGrid1DBTableView1Semana: TcxGridDBColumn
        DataBinding.FieldName = 'Semana'
        Width = 92
      end
      object cxGrid1DBTableView1Dia: TcxGridDBColumn
        DataBinding.FieldName = 'Dia'
        Width = 83
      end
      object cxGrid1DBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Width = 102
      end
      object cxGrid1DBTableView1Fornecedor: TcxGridDBColumn
        DataBinding.FieldName = 'Fornecedor'
      end
      object cxGrid1DBTableView1Produto: TcxGridDBColumn
        DataBinding.FieldName = 'Produto'
      end
      object cxGrid1DBTableView1UndMedida: TcxGridDBColumn
        DataBinding.FieldName = 'Und Medida'
      end
      object cxGrid1DBTableView1Qtd: TcxGridDBColumn
        DataBinding.FieldName = 'Qtd.'
      end
      object cxGrid1DBTableView1ValorTotal: TcxGridDBColumn
        DataBinding.FieldName = 'Valor Total'
        Width = 122
      end
      object cxGrid1DBTableView1NF: TcxGridDBColumn
        DataBinding.FieldName = 'NF'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dsNF: TDataSource
    DataSet = cdsNF
    Left = 960
  end
  object cdsNF: TClientDataSet
    PersistDataPacket.Data = {
      F90000009619E0BD01000000180000000A000000000003000000F900034D6573
      01004900000001000557494454480200020014000653656D616E610100490000
      0001000557494454480200020014000344696104000100000000000547727570
      6F01004900000001000557494454480200020014000A466F726E656365646F72
      01004900000001000557494454480200020014000750726F6475746F01004900
      000001000557494454480200020014000A556E64204D65646964610100490000
      000100055749445448020002001400045174642E08000400000000000B56616C
      6F7220546F74616C0800040000000000024E4604000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 928
    object cdsNFMes: TStringField
      FieldName = 'Mes'
    end
    object cdsNFSemana: TStringField
      FieldName = 'Semana'
    end
    object cdsNFDia: TIntegerField
      FieldName = 'Dia'
    end
    object cdsNFGrupo: TStringField
      FieldName = 'Grupo'
    end
    object cdsNFFornecedor: TStringField
      FieldName = 'Fornecedor'
    end
    object cdsNFProduto: TStringField
      FieldName = 'Produto'
    end
    object cdsNFUndMedida: TStringField
      FieldName = 'Und Medida'
    end
    object cdsNFQtd: TFloatField
      FieldName = 'Qtd.'
    end
    object cdsNFValorTotal: TFloatField
      FieldName = 'Valor Total'
    end
    object cdsNFNF: TIntegerField
      FieldName = 'NF'
    end
  end
  object cxLocalizer: TcxLocalizer
    Active = True
    FileName = 
      'C:\Users\lynka\Documents\Projetos\Etech&Turl\public\TraducaoDev\' +
      'Tradu'#231#227'oDev.ini'
    Locale = 1046
    Left = 896
  end
end
