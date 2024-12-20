object FDivCar: TFDivCar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Divis'#227'o de Cartelas'
  ClientHeight = 641
  ClientWidth = 769
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
    Width = 769
    Height = 641
    TabOrder = 0
    object PanInfo: TPanel
      Left = 8
      Top = 92
      Width = 401
      Height = 121
      TabOrder = 0
      object Label2: TLabel
        Left = 24
        Top = 39
        Width = 48
        Height = 15
        Caption = 'N'#186' Inicial'
      end
      object Label1: TLabel
        Left = 30
        Top = 86
        Width = 42
        Height = 15
        Caption = 'N'#186' Final'
      end
      object mNumIni: TEdit
        Left = 78
        Top = 36
        Width = 121
        Height = 23
        TabOrder = 0
      end
      object mNumFin: TEdit
        Left = 78
        Top = 83
        Width = 121
        Height = 23
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 399
        Height = 24
        Align = alTop
        Caption = 'DADOS PARA C'#193'LCULO'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
      end
      object BtSave: TBitBtn
        Left = 205
        Top = 36
        Width = 156
        Height = 70
        Caption = 'Iniciar Divis'#227'o'
        TabOrder = 3
        OnClick = BtSaveClick
      end
    end
    object PanGrid: TPanel
      Left = 8
      Top = 221
      Width = 749
      Height = 380
      TabOrder = 1
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 747
        Height = 24
        Align = alTop
        Caption = 'DIVIS'#195'O DE CARTELAS'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object GridPon: TDBGrid
        Left = 1
        Top = 25
        Width = 747
        Height = 354
        Align = alClient
        Color = clBtnFace
        DataSource = DmCad.DsDivCar
        DrawingStyle = gdsClassic
        FixedColor = clSkyBlue
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Width = 471
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QtdCartela'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Cartelas'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumIni'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Inicial'
            Width = 83
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumFin'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Final'
            Width = 83
            Visible = True
          end>
      end
    end
    object PanQtd: TPanel
      Left = 416
      Top = 92
      Width = 341
      Height = 121
      Enabled = False
      TabOrder = 2
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 185
        Height = 119
        Align = alLeft
        Caption = 'Qtd Total de Cartelas'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object mQtdCar: TEdit
        Left = 200
        Top = 50
        Width = 121
        Height = 23
        TabOrder = 1
      end
    end
    object PanPes: TPanel
      Left = 8
      Top = 16
      Width = 749
      Height = 62
      TabOrder = 3
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 472
        Height = 60
        Align = alLeft
        Caption = 'Selecione um distribuidor para a divis'#227'o das cartelas'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object mCodDis: TDBLookupComboBox
        Left = 496
        Top = 18
        Width = 233
        Height = 23
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = DmCad.DsCadDis
        TabOrder = 1
      end
    end
    object BtImp: TBitBtn
      Left = 648
      Top = 607
      Width = 109
      Height = 25
      Caption = 'Gerar Relat'#243'rio'
      PopupMenu = PopupMenu1
      TabOrder = 4
      OnClick = BtImpClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 689
    Top = 94
    object EditarRelatrio1: TMenuItem
      Caption = 'Editar Relat'#243'rio'
      OnClick = EditarRelatrio1Click
    end
  end
  object FrxDivisao: TfrxDBDataset
    UserName = 'FrxDivisao'
    CloseDataSource = False
    DataSet = DmCad.TbDivCar
    BCDToCurrency = False
    DataSetOptions = []
    Left = 592
    Top = 309
    FieldDefs = <
      item
        FieldName = 'Nome'
        FieldType = fftString
        Size = 80
      end
      item
        FieldName = 'QtdCartela'
      end
      item
        FieldName = 'NumIni'
      end
      item
        FieldName = 'NumFin'
      end>
  end
end
