object FrmInicio: TFrmInicio
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsNone
  ClientHeight = 488
  ClientWidth = 688
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
  object wbPrincipal: TWebBrowser
    Left = 0
    Top = 0
    Width = 688
    Height = 488
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 929
    ExplicitHeight = 510
    ControlData = {
      4C0000001B470000703200000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object WebCharts: TWebCharts
    Left = 56
    Top = 16
  end
  object Cds1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 72
  end
  object Cds2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 128
  end
end
