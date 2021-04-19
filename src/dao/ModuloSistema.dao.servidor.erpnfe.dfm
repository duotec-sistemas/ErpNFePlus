inherited ModuloSistemaDao: TModuloSistemaDao
  OldCreateOrder = True
  inherited Qry_Pesquisa: TFDQuery
    SQL.Strings = (
      'SELECT'
      'T0005.ID,'
      'T0005.NOME_MODULO,'
      'T0005.USR_INS,'
      'T0005.USR_ALT,'
      'T0005.DT_HR_INS,'
      'T0005.DT_HR_ALT,'
      'T0005.IMG,'
      'T0005.ATIVO'
      ' FROM TBL0005 T0005'
      ' WHERE T0005.EXCLUIDO = 0')
    object Qry_PesquisaID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 44
    end
    object Qry_PesquisaNOME_MODULO: TStringField
      FieldName = 'NOME_MODULO'
      Origin = 'NOME_MODULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 60
    end
    object Qry_PesquisaUSR_INS: TStringField
      FieldName = 'USR_INS'
      Origin = 'USR_INS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object Qry_PesquisaUSR_ALT: TStringField
      FieldName = 'USR_ALT'
      Origin = 'USR_ALT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object Qry_PesquisaDT_HR_INS: TSQLTimeStampField
      FieldName = 'DT_HR_INS'
      Origin = 'DT_HR_INS'
      ProviderFlags = [pfInUpdate]
    end
    object Qry_PesquisaDT_HR_ALT: TSQLTimeStampField
      FieldName = 'DT_HR_ALT'
      Origin = 'DT_HR_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object Qry_PesquisaIMG: TBlobField
      FieldName = 'IMG'
      Origin = 'IMG'
      ProviderFlags = [pfInUpdate]
    end
    object Qry_PesquisaATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      ProviderFlags = [pfInUpdate]
    end
  end
  inherited Qry_QtdRegistro: TFDQuery
    SQL.Strings = (
      'SELECT COUNT(ID) AS QTD_REG FROM TBL0005 T0005'
      'WHERE EXCLUIDO = 0')
    object Qry_QtdRegistroQTD_REG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_REG'
      Origin = 'QTD_REG'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  inherited Qry_Gravacao: TFDQuery
    SQL.Strings = (
      'SELECT'
      'T0005.ID,'
      'T0005.NOME_MODULO,'
      'T0005.USR_INS,'
      'T0005.USR_ALT,'
      'T0005.IMG,'
      'T0005.ATIVO,'
      'T0005.EXCLUIDO'
      ' FROM TBL0005 T0005'
      ' WHERE T0005.EXCLUIDO = 0')
    object Qry_GravacaoID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 44
    end
    object Qry_GravacaoNOME_MODULO: TStringField
      FieldName = 'NOME_MODULO'
      Origin = 'NOME_MODULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 60
    end
    object Qry_GravacaoUSR_INS: TStringField
      FieldName = 'USR_INS'
      Origin = 'USR_INS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object Qry_GravacaoUSR_ALT: TStringField
      FieldName = 'USR_ALT'
      Origin = 'USR_ALT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object Qry_GravacaoIMG: TBlobField
      FieldName = 'IMG'
      Origin = 'IMG'
      ProviderFlags = [pfInUpdate]
    end
    object Qry_GravacaoATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      ProviderFlags = [pfInUpdate]
    end
    object Qry_GravacaoEXCLUIDO: TSmallintField
      FieldName = 'EXCLUIDO'
      Origin = 'EXCLUIDO'
      ProviderFlags = [pfInUpdate]
    end
  end
end
