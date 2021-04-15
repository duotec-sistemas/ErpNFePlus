inherited DominioBancoDao: TDominioBancoDao
  OldCreateOrder = True
  inherited Qry_Pesquisa: TFDQuery
    SQL.Strings = (
      'SELECT'
      ' T0002.ID,'
      ' T0002.NOME_DOMINIO ,'
      ' T0002.TIPO_CAMPO,'
      ' T0002.TAMANHO,'
      ' T0002.QTD_CASA_DECIMAL,'
      ' T0002.DT_HR_INS,'
      ' T0002.DT_HR_ALT,'
      ' T0002.DT_HR_EXC,'
      ' T0002.USR_INS,'
      ' T0002.USR_ALT,'
      ' T0002.USR_EXC,'
      ' T0002.EXCLUIDO,'
      ' T0002.MOTIVO_EXC,'
      ' T0002.ATIVO'
      ' FROM TBL0002 T0002'
      ' WHERE T0002.EXCLUIDO = 0')
    object Qry_PesquisaID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 44
    end
    object Qry_PesquisaNOME_DOMINIO: TStringField
      FieldName = 'NOME_DOMINIO'
      Origin = 'NOME_DOMINIO'
      Size = 30
    end
    object Qry_PesquisaTIPO_CAMPO: TLargeintField
      FieldName = 'TIPO_CAMPO'
      Origin = 'TIPO_CAMPO'
    end
    object Qry_PesquisaTAMANHO: TLargeintField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
    end
    object Qry_PesquisaQTD_CASA_DECIMAL: TLargeintField
      FieldName = 'QTD_CASA_DECIMAL'
      Origin = 'QTD_CASA_DECIMAL'
    end
    object Qry_PesquisaDT_HR_INS: TSQLTimeStampField
      FieldName = 'DT_HR_INS'
      Origin = 'DT_HR_INS'
    end
    object Qry_PesquisaDT_HR_ALT: TSQLTimeStampField
      FieldName = 'DT_HR_ALT'
      Origin = 'DT_HR_ALT'
    end
    object Qry_PesquisaDT_HR_EXC: TSQLTimeStampField
      FieldName = 'DT_HR_EXC'
      Origin = 'DT_HR_EXC'
    end
    object Qry_PesquisaUSR_INS: TStringField
      FieldName = 'USR_INS'
      Origin = 'USR_INS'
      FixedChar = True
      Size = 15
    end
    object Qry_PesquisaUSR_ALT: TStringField
      FieldName = 'USR_ALT'
      Origin = 'USR_ALT'
      FixedChar = True
      Size = 15
    end
    object Qry_PesquisaUSR_EXC: TStringField
      FieldName = 'USR_EXC'
      Origin = 'USR_EXC'
      FixedChar = True
      Size = 15
    end
    object Qry_PesquisaEXCLUIDO: TSmallintField
      FieldName = 'EXCLUIDO'
      Origin = 'EXCLUIDO'
    end
    object Qry_PesquisaMOTIVO_EXC: TStringField
      FieldName = 'MOTIVO_EXC'
      Origin = 'MOTIVO_EXC'
      Size = 1024
    end
    object Qry_PesquisaATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
    end
  end
  inherited Qry_QtdRegistro: TFDQuery
    SQL.Strings = (
      'SELECT COUNT(ID) AS QTD_REG FROM TBL0002 T0002'
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
      ' T0002.ID,'
      ' T0002.NOME_DOMINIO ,'
      ' T0002.TIPO_CAMPO,'
      ' T0002.TAMANHO,'
      ' T0002.QTD_CASA_DECIMAL,'
      ' T0002.DT_HR_INS,'
      ' T0002.DT_HR_ALT,'
      ' T0002.DT_HR_EXC,'
      ' T0002.USR_INS,'
      ' T0002.USR_ALT,'
      ' T0002.USR_EXC,'
      ' T0002.EXCLUIDO,'
      ' T0002.MOTIVO_EXC,'
      ' T0002.ATIVO'
      ' FROM TBL0002 T0002'
      ' WHERE T0002.EXCLUIDO = 0')
    object Qry_GravacaoID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 44
    end
    object Qry_GravacaoNOME_DOMINIO: TStringField
      FieldName = 'NOME_DOMINIO'
      Origin = 'NOME_DOMINIO'
      Size = 30
    end
    object Qry_GravacaoTIPO_CAMPO: TLargeintField
      FieldName = 'TIPO_CAMPO'
      Origin = 'TIPO_CAMPO'
    end
    object Qry_GravacaoTAMANHO: TLargeintField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
    end
    object Qry_GravacaoDT_HR_INS: TSQLTimeStampField
      FieldName = 'DT_HR_INS'
      Origin = 'DT_HR_INS'
    end
    object Qry_GravacaoDT_HR_ALT: TSQLTimeStampField
      FieldName = 'DT_HR_ALT'
      Origin = 'DT_HR_ALT'
    end
    object Qry_GravacaoQTD_CASA_DECIMAL: TLargeintField
      FieldName = 'QTD_CASA_DECIMAL'
      Origin = 'QTD_CASA_DECIMAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Qry_GravacaoDT_HR_EXC: TSQLTimeStampField
      FieldName = 'DT_HR_EXC'
      Origin = 'DT_HR_EXC'
    end
    object Qry_GravacaoUSR_INS: TStringField
      FieldName = 'USR_INS'
      Origin = 'USR_INS'
      FixedChar = True
      Size = 15
    end
    object Qry_GravacaoUSR_ALT: TStringField
      FieldName = 'USR_ALT'
      Origin = 'USR_ALT'
      FixedChar = True
      Size = 15
    end
    object Qry_GravacaoUSR_EXC: TStringField
      FieldName = 'USR_EXC'
      Origin = 'USR_EXC'
      FixedChar = True
      Size = 15
    end
    object Qry_GravacaoEXCLUIDO: TSmallintField
      FieldName = 'EXCLUIDO'
      Origin = 'EXCLUIDO'
    end
    object Qry_GravacaoMOTIVO_EXC: TStringField
      FieldName = 'MOTIVO_EXC'
      Origin = 'MOTIVO_EXC'
      Size = 1024
    end
    object Qry_GravacaoATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
    end
  end
end
