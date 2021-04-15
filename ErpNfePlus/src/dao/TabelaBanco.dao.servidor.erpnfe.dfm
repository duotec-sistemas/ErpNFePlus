inherited TabelaBancoDao: TTabelaBancoDao
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
    object Qry_PesquisaID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 44
    end
    object Qry_PesquisaNOME_TABELA: TStringField
      FieldName = 'NOME_TABELA'
      Origin = 'NOME_TABELA'
      FixedChar = True
      Size = 256
    end
    object Qry_PesquisaNOME_ENTIDADE: TStringField
      FieldName = 'NOME_ENTIDADE'
      Origin = 'NOME_ENTIDADE'
      FixedChar = True
      Size = 256
    end
    object Qry_PesquisaDESCRICAO_TABELA: TStringField
      FieldName = 'DESCRICAO_TABELA'
      Origin = 'DESCRICAO_TABELA'
      FixedChar = True
      Size = 4096
    end
    object Qry_PesquisaDT_HR_INS: TSQLTimeStampField
      FieldName = 'DT_HR_INS'
      Origin = 'DT_HR_INS'
    end
    object Qry_PesquisaDT_HR_ALT: TSQLTimeStampField
      FieldName = 'DT_HR_ALT'
      Origin = 'DT_HR_ALT'
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
    object Qry_PesquisaALIAS_TABELA: TStringField
      FieldName = 'ALIAS_TABELA'
      Origin = 'ALIAS_TABELA'
      FixedChar = True
      Size = 60
    end
    object Qry_PesquisaATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
    end
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
    object Qry_GravacaoID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 44
    end
    object Qry_GravacaoNOME_TABELA: TStringField
      FieldName = 'NOME_TABELA'
      Origin = 'NOME_TABELA'
      FixedChar = True
      Size = 256
    end
    object Qry_GravacaoNOME_ENTIDADE: TStringField
      FieldName = 'NOME_ENTIDADE'
      Origin = 'NOME_ENTIDADE'
      FixedChar = True
      Size = 256
    end
    object Qry_GravacaoDESCRICAO_TABELA: TStringField
      FieldName = 'DESCRICAO_TABELA'
      Origin = 'DESCRICAO_TABELA'
      FixedChar = True
      Size = 4096
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
    object Qry_GravacaoALIAS_TABELA: TStringField
      FieldName = 'ALIAS_TABELA'
      Origin = 'ALIAS_TABELA'
      FixedChar = True
      Size = 60
    end
    object Qry_GravacaoATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
    end
    object Qry_GravacaoEXCLUIDO: TSmallintField
      FieldName = 'EXCLUIDO'
      Origin = 'EXCLUIDO'
    end
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
    object Qry_CamposTabelaID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 44
    end
    object Qry_CamposTabelaID_TBL0003: TStringField
      FieldName = 'ID_TBL0003'
      Origin = 'ID_TBL0003'
      Required = True
      FixedChar = True
      Size = 44
    end
    object Qry_CamposTabelaID_TBL0002: TStringField
      FieldName = 'ID_TBL0002'
      Origin = 'ID_TBL0002'
      Required = True
      FixedChar = True
      Size = 44
    end
    object Qry_CamposTabelaNOME_CAMPO: TStringField
      FieldName = 'NOME_CAMPO'
      Origin = 'NOME_CAMPO'
      FixedChar = True
      Size = 256
    end
    object Qry_CamposTabelaCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Origin = 'COMENTARIO'
      FixedChar = True
      Size = 4096
    end
    object Qry_CamposTabelaNOME_ATRIBUTO: TStringField
      FieldName = 'NOME_ATRIBUTO'
      Origin = 'NOME_ATRIBUTO'
      FixedChar = True
      Size = 256
    end
    object Qry_CamposTabelaUSR_INS: TStringField
      FieldName = 'USR_INS'
      Origin = 'USR_INS'
      FixedChar = True
      Size = 15
    end
    object Qry_CamposTabelaUSR_ALT: TStringField
      FieldName = 'USR_ALT'
      Origin = 'USR_ALT'
      FixedChar = True
      Size = 15
    end
    object Qry_CamposTabelaEXCLUIDO: TSmallintField
      FieldName = 'EXCLUIDO'
      Origin = 'EXCLUIDO'
    end
    object Qry_CamposTabelaATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
    end
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
    object camposID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 44
    end
    object camposID_TBL0003: TStringField
      FieldName = 'ID_TBL0003'
      Origin = 'ID_TBL0003'
      Required = True
      FixedChar = True
      Size = 44
    end
    object camposID_TBL0002: TStringField
      FieldName = 'ID_TBL0002'
      Origin = 'ID_TBL0002'
      Required = True
      FixedChar = True
      Size = 44
    end
    object camposNOME_CAMPO: TStringField
      FieldName = 'NOME_CAMPO'
      Origin = 'NOME_CAMPO'
      FixedChar = True
      Size = 256
    end
    object camposCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Origin = 'COMENTARIO'
      FixedChar = True
      Size = 4096
    end
    object camposNOME_ATRIBUTO: TStringField
      FieldName = 'NOME_ATRIBUTO'
      Origin = 'NOME_ATRIBUTO'
      FixedChar = True
      Size = 256
    end
    object camposDT_HR_INS: TSQLTimeStampField
      FieldName = 'DT_HR_INS'
      Origin = 'DT_HR_INS'
    end
    object camposDT_HR_ALT: TSQLTimeStampField
      FieldName = 'DT_HR_ALT'
      Origin = 'DT_HR_ALT'
    end
    object camposUSR_INS: TStringField
      FieldName = 'USR_INS'
      Origin = 'USR_INS'
      FixedChar = True
      Size = 15
    end
    object camposUSR_ALT: TStringField
      FieldName = 'USR_ALT'
      Origin = 'USR_ALT'
      FixedChar = True
      Size = 15
    end
    object camposATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
    end
    object camposNOME_DOMINIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_DOMINIO'
      Origin = 'NOME_DOMINIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object camposTIPO_CAMPO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_CAMPO'
      Origin = 'TIPO_CAMPO'
      ProviderFlags = []
      ReadOnly = True
    end
    object camposTAMANHO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
      ProviderFlags = []
      ReadOnly = True
    end
    object camposQTD_CASA_DECIMAL: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_CASA_DECIMAL'
      Origin = 'QTD_CASA_DECIMAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object camposNOME_TIPO_CAMPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_TIPO_CAMPO'
      Origin = 'NOME_TIPO_CAMPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
  end
  object DtSrc_Pai: TDataSource
    DataSet = Qry_Pesquisa
    Left = 48
    Top = 128
  end
end
