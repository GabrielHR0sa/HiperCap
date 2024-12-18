object DmCad: TDmCad
  Height = 480
  Width = 640
  object TbCadPon: TFDQuery
    OnNewRecord = TbCadPonNewRecord
    CachedUpdates = True
    Connection = FMain.DbConnection
    SQL.Strings = (
      'Select * From TbCadPon'
      '  Order By ID')
    Left = 24
    Top = 8
    object TbCadPonID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbCadPonNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object TbCadPonCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 11
    end
    object TbCadPonQTDCARTELA: TIntegerField
      FieldName = 'QTDCARTELA'
      Origin = 'QTDCARTELA'
    end
    object TbCadPonCODDIS: TIntegerField
      FieldName = 'CODDIS'
      Origin = 'CODDIS'
    end
  end
  object DsCadPon: TDataSource
    DataSet = TbCadPon
    Left = 24
    Top = 64
  end
  object TbAux: TFDQuery
    Connection = FMain.DbConnection
    Left = 600
    Top = 8
  end
  object DsDivCar: TDataSource
    DataSet = TbDivCar
    Left = 104
    Top = 64
  end
  object TbDivCar: TFDMemTable
    FieldDefs = <
      item
        Name = 'Nome'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'QtdCartela'
        DataType = ftInteger
      end
      item
        Name = 'NumIni'
        DataType = ftInteger
      end
      item
        Name = 'NumFin'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 104
    Top = 8
    object TbDivCarNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object TbDivCarQtdCartela: TIntegerField
      FieldName = 'QtdCartela'
    end
    object TbDivCarNumIni: TIntegerField
      FieldName = 'NumIni'
    end
    object TbDivCarNumFin: TIntegerField
      FieldName = 'NumFin'
    end
  end
  object TbCadDis: TFDQuery
    OnNewRecord = TbCadDisNewRecord
    CachedUpdates = True
    Connection = FMain.DbConnection
    SQL.Strings = (
      'Select * From TbCadDis')
    Left = 192
    Top = 8
    object TbCadDisID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TbCadDisNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
  end
  object DsCadDis: TDataSource
    DataSet = TbCadDis
    Left = 192
    Top = 64
  end
end
