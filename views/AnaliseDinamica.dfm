object FrmAnaliseDinamica: TFrmAnaliseDinamica
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsNone
  ClientHeight = 466
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 719
    Height = 466
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 336
    ExplicitTop = 224
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C000000504A00002A3000000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object WebCharts1: TWebCharts
    Left = 640
    Top = 40
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 640
    Top = 96
    object ClientDataSet1Label: TStringField
      FieldName = 'Label'
    end
    object ClientDataSet1Value: TStringField
      FieldName = 'Value'
    end
    object ClientDataSet1RGB: TStringField
      FieldName = 'RGB'
    end
  end
end
