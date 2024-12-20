object FMain: TFMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Hiper Sa'#250'de - Divis'#227'o Cartelas'
  ClientHeight = 81
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object PanFundo: TPanel
    Left = 0
    Top = 0
    Width = 444
    Height = 81
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 440
    ExplicitHeight = 80
    object btPont: TBitBtn
      Left = 40
      Top = 16
      Width = 169
      Height = 25
      Caption = 'Cadastro de Pontos'
      TabOrder = 0
      OnClick = btPontClick
    end
    object BitBtn2: TBitBtn
      Left = 224
      Top = 16
      Width = 169
      Height = 25
      Caption = 'Divis'#227'o de Cartelas'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 128
      Top = 47
      Width = 169
      Height = 25
      Caption = 'Cadastro de Distribuidores'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object DbConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Bancos\Hiper.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 400
    Top = 8
  end
  object FR: TfrxReport
    Version = '2024.2.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41471.728820590300000000
    ReportOptions.LastChange = 45557.629606828700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      ''
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'FROnReportPrint'
    Left = 8
    Top = 21
    Datasets = <
      item
        DataSetName = 'FDsPreOrdCli'
      end
      item
        DataSetName = 'FDsTbPreOrd'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      PageCount = 2
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object Memo34: TfrxMemoView
        AllowVectorExport = True
        Left = 1100.000620000000000000
        Top = 439.086907090000000000
        Width = 60.472480000000000000
        Height = 15.118110240000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          'QTD. MTS.')
        ParentFont = False
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260049670000000000
          Width = 147.401673590000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Distribui'#231#227'o de Cartelas')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338589670000000000
          Top = 26.456708670000000000
          Width = 75.590603590000000000
          Height = 18.897647860000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Distribuidor:')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 49.133890000000000000
          Width = 37.795303590000000000
          Height = 18.897647860000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Data:')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250730000000000
          Top = 26.456708670000000000
          Width = 94.488250730000000000
          Height = 18.897647860000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
        end
      end
    end
  end
  object FRD: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 40
    Top = 16
  end
end
