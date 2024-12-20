object FCadDis: TFCadDis
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Distribuidores'
  ClientHeight = 507
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
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
        DataSource = DmCad.DsCadDis
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
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 632
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 749
        Height = 24
        Align = alTop
        Caption = 'DISTRIBUIDORES'
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
      Top = 102
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
      OnClick = BtNewClick
    end
    object BtCancel: TBitBtn
      Left = 603
      Top = 140
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BtCancelClick
    end
    object BtAlter: TBitBtn
      Left = 684
      Top = 102
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 2
      OnClick = BtAlterClick
    end
    object btExclude: TBitBtn
      Left = 684
      Top = 140
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 4
      OnClick = btExcludeClick
    end
    object BtSave: TBitBtn
      Left = 603
      Top = 179
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
      Caption = 'CADASTRO DE DISTRIBUIDORES'
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
      Top = 102
      Width = 588
      Height = 102
      TabOrder = 7
      object Label1: TLabel
        Left = 161
        Top = 23
        Width = 33
        Height = 15
        Caption = 'Nome'
      end
      object Panel3: TPanel
        Left = 5
        Top = 18
        Width = 151
        Height = 58
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object Label4: TLabel
          Left = 4
          Top = 7
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
        end
        object mCod: TDBEdit
          Left = 4
          Top = 28
          Width = 122
          Height = 23
          DataField = 'ID'
          DataSource = DmCad.DsCadDis
          TabOrder = 0
        end
      end
      object mNom: TDBEdit
        Left = 160
        Top = 44
        Width = 420
        Height = 23
        DataField = 'NOME'
        DataSource = DmCad.DsCadDis
        TabOrder = 1
      end
    end
    object PanPes: TPanel
      Left = 9
      Top = 31
      Width = 749
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
        Text = 'C'#243'digo'
        Items.Strings = (
          'C'#243'digo'
          'Nome')
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
  object DsCadDisDmCad: TDataSource
    DataSet = DmCad.TbCadDis
    OnStateChange = DsCadDisDmCadStateChange
    Left = 808
    Top = 16
  end
end
