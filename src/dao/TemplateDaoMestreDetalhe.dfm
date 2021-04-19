inherited DM_TemplateDaoMestreDetalhe: TDM_TemplateDaoMestreDetalhe
  OldCreateOrder = True
  Height = 304
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 216
  end
  inherited Qry_Pesquisa: TFDQuery
    SQL.Strings = (
      
        'select T0003.ID, T0003.NOME_TABELA, T0003.NOME_ENTIDADE, T0003.D' +
        'ESCRICAO_TABELA, T0003.DT_HR_INS, T0003.DT_HR_ALT,'
      
        '       T0003.USR_INS, T0003.USR_ALT, T0003.ALIAS_TABELA, T0003.A' +
        'TIVO'
      'from TBL0003 T0003'
      'where T0003.EXCLUIDO = 0')
    Top = 64
  end
  inherited Qry_QtdRegistro: TFDQuery
    SQL.Strings = (
      'SELECT COUNT(ID) AS QTD_REG FROM TBL0003 T0003'
      'WHERE EXCLUIDO = 0')
    Left = 216
    Top = 64
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
      
        'select T0003.ID, T0003.NOME_TABELA, T0003.NOME_ENTIDADE, T0003.D' +
        'ESCRICAO_TABELA,'
      
        '       T0003.USR_INS, T0003.USR_ALT, T0003.ALIAS_TABELA, T0003.A' +
        'TIVO, T0003.EXCLUIDO'
      'from TBL0003 T0003'
      'where T0003.EXCLUIDO = 0')
    Left = 352
    Top = 16
  end
  object Qry_CamposTabela: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select T0004.ID,'
      
        '       T0004.ID_TBL0003, T0004.ID_TBL0002, T0004.NOME_CAMPO, T00' +
        '04.COMENTARIO, T0004.NOME_ATRIBUTO,'
      
        '        T0004.USR_INS, T0004.USR_ALT, T0004.EXCLUIDO, T0004.ATIV' +
        'O'
      'from TBL0004 T0004'
      'where T0004.EXCLUIDO = 0')
    Left = 352
    Top = 104
  end
  object campos: TFDQuery
    MasterSource = DtSrc_Pai
    MasterFields = 'ID'
    Connection = FDConexao
    SQL.Strings = (
      
        'select T0004.ID, T0004.ID_TBL0003, T0004.ID_TBL0002, T0004.NOME_' +
        'CAMPO, T0004.COMENTARIO, T0004.NOME_ATRIBUTO,'
      
        '       T0004.DT_HR_INS, T0004.DT_HR_ALT, T0004.USR_INS, T0004.US' +
        'R_ALT, T0004.ATIVO, T0002.NOME_DOMINIO,'
      '       T0002.TIPO_CAMPO, T0002.TAMANHO, T0002.QTD_CASA_DECIMAL,'
      '       case T0002.TIPO_CAMPO'
      '         when '#39'1'#39' then '#39'VarChar'#39
      '         when '#39'2'#39' then '#39'Integer'#39
      '         when '#39'3'#39' then '#39'Date'#39
      '         when '#39'4'#39' then '#39'TimeStamp'#39
      '         when '#39'5'#39' then '#39'Numeric'#39
      '         when '#39'6'#39' then '#39'BigInt'#39
      '         when '#39'7'#39' then '#39'Boolean'#39
      '         when '#39'8'#39' then '#39'BlobTexto'#39
      '         when '#39'9'#39' then '#39'BlobBinario'#39
      '         when '#39'10'#39' then '#39'Float'#39
      '       end as NOME_TIPO_CAMPO'
      'from TBL0004 T0004'
      'left join TBL0002 T0002 on T0002.ID = T0004.ID_TBL0002'
      'where T0004.EXCLUIDO = 0'
      'AND T0004.ID_TBL0003 = :ID'
      ''
      '  ')
    Left = 64
    Top = 200
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Size = 44
        Value = Null
      end>
  end
  object DtSrc_Pai: TDataSource
    DataSet = Qry_Pesquisa
    Left = 48
    Top = 128
  end
end
