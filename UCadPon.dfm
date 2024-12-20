object FCadPon: TFCadPon
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Pontos'
  ClientHeight = 506
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object PanFundo: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 505
    TabOrder = 0
    object PanGrid: TPanel
      Left = 8
      Top = 211
      Width = 751
      Height = 286
      TabOrder = 0
      object GridPon: TDBGrid
        Left = 1
        Top = 25
        Width = 749
        Height = 260
        Align = alClient
        Color = clBtnFace
        DataSource = DmCad.DsCadPon
        DrawingStyle = gdsClassic
        FixedColor = clSkyBlue
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 378
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDCARTELA'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Cartelas'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CONTATO'
            Title.Alignment = taCenter
            Title.Caption = 'Contato'
            Width = 94
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODDIS'
            Title.Alignment = taCenter
            Title.Caption = 'Cod. Distribuidor'
            Width = 103
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 749
        Height = 24
        Align = alTop
        Caption = 'PONTOS'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object BtNew: TBitBtn
      Left = 603
      Top = 101
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
      OnClick = BtNewClick
    end
    object BtCancel: TBitBtn
      Left = 603
      Top = 139
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BtCancelClick
    end
    object BtAlter: TBitBtn
      Left = 684
      Top = 101
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 2
      OnClick = BtAlterClick
    end
    object btExclude: TBitBtn
      Left = 684
      Top = 139
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 4
      OnClick = btExcludeClick
    end
    object BtSave: TBitBtn
      Left = 603
      Top = 178
      Width = 156
      Height = 25
      Caption = 'Gravar'
      TabOrder = 5
      OnClick = BtSaveClick
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 765
      Height = 24
      Align = alTop
      Caption = 'CADASTRO DE PONTOS'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
    end
    object PanInfo: TPanel
      Left = 9
      Top = 101
      Width = 588
      Height = 102
      TabOrder = 7
      object Label1: TLabel
        Left = 161
        Top = 2
        Width = 33
        Height = 15
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 9
        Top = 56
        Width = 123
        Height = 15
        Caption = 'Quantidade de Cartelas'
      end
      object Label2: TLabel
        Left = 160
        Top = 56
        Width = 43
        Height = 15
        Caption = 'Contato'
      end
      object Label7: TLabel
        Left = 350
        Top = 59
        Width = 62
        Height = 15
        Caption = 'Distribuidor'
      end
      object Panel3: TPanel
        Left = 5
        Top = -3
        Width = 151
        Height = 58
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object Label4: TLabel
          Left = 4
          Top = 5
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
        end
        object mCod: TDBEdit
          Left = 4
          Top = 26
          Width = 122
          Height = 23
          DataField = 'ID'
          DataSource = DmCad.DsCadPon
          TabOrder = 0
        end
      end
      object mNom: TDBEdit
        Left = 160
        Top = 23
        Width = 420
        Height = 23
        DataField = 'NOME'
        DataSource = DmCad.DsCadPon
        TabOrder = 1
      end
      object mQtdCar: TDBEdit
        Left = 9
        Top = 74
        Width = 123
        Height = 23
        DataField = 'QTDCARTELA'
        DataSource = DmCad.DsCadPon
        TabOrder = 2
      end
      object mCon: TDBEdit
        Left = 160
        Top = 74
        Width = 162
        Height = 23
        DataField = 'CONTATO'
        DataSource = DmCad.DsCadPon
        TabOrder = 3
      end
      object mCodDis: TDBLookupComboBox
        Left = 350
        Top = 74
        Width = 230
        Height = 23
        DataField = 'CODDIS'
        DataSource = DmCad.DsCadPon
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = DmCad.DsCadDis
        TabOrder = 4
      end
    end
    object PanPes: TPanel
      Left = 9
      Top = 31
      Width = 750
      Height = 62
      TabOrder = 8
      object Label5: TLabel
        Left = 9
        Top = 23
        Width = 71
        Height = 15
        Caption = 'Pesquisar Por'
      end
      object Label6: TLabel
        Left = 251
        Top = 23
        Width = 95
        Height = 15
        Caption = 'Dados a Pesquisar'
      end
      object mPesPor: TComboBox
        Left = 86
        Top = 20
        Width = 145
        Height = 23
        ItemIndex = 0
        TabOrder = 0
        Text = 'C'#243'digo do Ponto'
        Items.Strings = (
          'C'#243'digo do Ponto'
          'Nome'
          'C'#243'digo do Distribuidor')
      end
      object mDadPes: TEdit
        Left = 352
        Top = 20
        Width = 236
        Height = 23
        TabOrder = 1
      end
      object BtSea: TBitBtn
        Left = 611
        Top = 20
        Width = 118
        Height = 23
        Caption = 'Pesquisar'
        TabOrder = 2
        OnClick = BtSeaClick
      end
    end
  end
  object DsTbCadPonDmCad: TDataSource
    DataSet = DmCad.TbCadPon
    OnStateChange = DsTbCadPonDmCadStateChange
    Left = 824
    Top = 16
  end
end
