inherited DM_TemplateDaoUnico: TDM_TemplateDaoUnico
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
  end
end
