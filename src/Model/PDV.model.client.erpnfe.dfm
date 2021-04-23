object PdvModel: TPdvModel
  OldCreateOrder = False
  Height = 313
  Width = 646
  object NotaFiscal: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 72
    Top = 32
    object NotaFiscalID: TStringField
      FieldName = 'ID'
      Size = 44
    end
    object NotaFiscalID_ORCAMENTO: TStringField
      FieldName = 'ID_ORCAMENTO'
      Size = 44
    end
    object NotaFiscalCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object NotaFiscalNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object NotaFiscalDT_NF: TDateField
      FieldName = 'DT_NF'
    end
    object NotaFiscalNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
    end
    object NotaFiscalVLR_NF: TCurrencyField
      FieldName = 'VLR_NF'
    end
    object NotaFiscalVLR_DESCONTO: TCurrencyField
      FieldName = 'VLR_DESCONTO'
    end
    object NotaFiscalCOD_VENDEDOR: TStringField
      FieldName = 'COD_VENDEDOR'
      Size = 3
    end
    object NotaFiscalCOD_LOJA: TStringField
      FieldName = 'COD_LOJA'
      Size = 2
    end
    object NotaFiscalCOD_CONDICAO_PAGTO: TIntegerField
      FieldName = 'COD_CONDICAO_PAGTO'
    end
    object NotaFiscalCOD_TP_ESTOQUE: TIntegerField
      FieldName = 'COD_TP_ESTOQUE'
    end
    object NotaFiscalNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object NotaFiscalEMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 256
    end
  end
  object ProdutoNotaFiscal: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    AggregatesActive = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 400
    Top = 24
    object ProdutoNotaFiscalID: TStringField
      FieldName = 'ID'
      Size = 44
    end
    object ProdutoNotaFiscalCOD_PRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_PRODUTO'
      Size = 44
    end
    object ProdutoNotaFiscalDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object ProdutoNotaFiscalQTDADE: TFloatField
      DisplayLabel = 'Qtdade'
      FieldName = 'QTDADE'
    end
    object ProdutoNotaFiscalVLR_PRODUTO: TCurrencyField
      DisplayLabel = 'Vlr.Produto'
      FieldName = 'VLR_PRODUTO'
      DisplayFormat = '#,###,###,###,##0.00'
      currency = False
    end
    object ProdutoNotaFiscalVLR_TOTAL_PRODUTO: TCurrencyField
      DisplayLabel = 'Vlr.Total'
      FieldName = 'VLR_TOTAL_PRODUTO'
      DisplayFormat = '#,###,###,###,##0.00'
      currency = False
    end
    object ProdutoNotaFiscalVLR_DESCONTO_PRODUTO: TCurrencyField
      DisplayLabel = 'Vlr.Desconto'
      FieldName = 'VLR_DESCONTO_PRODUTO'
      DisplayFormat = '#,###,###,###,##0.00'
      currency = False
    end
    object ProdutoNotaFiscalPOSICAO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'POSICAO'
    end
    object ProdutoNotaFiscalNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object ProdutoNotaFiscalVLR_SUBTOTAL: TAggregateField
      Alignment = taCenter
      DisplayLabel = 'Vlr.Subtotal'
      FieldName = 'VLR_SUBTOTAL'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,###,###,###,##0.00'
      Expression = 'SUM(VLR_TOTAL_PRODUTO)'
    end
  end
  object FormasPagto: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 208
    Top = 24
    object FormasPagtoID: TStringField
      FieldName = 'ID'
      Size = 44
    end
    object FormasPagtoID_CABECALHO: TStringField
      FieldName = 'ID_CABECALHO'
      Size = 44
    end
    object FormasPagtoCOD_FORMA_PAGTO: TStringField
      FieldName = 'COD_FORMA_PAGTO'
      Size = 6
    end
    object FormasPagtoNOME_FORMA_PAGTO: TStringField
      FieldName = 'NOME_FORMA_PAGTO'
      Size = 60
    end
    object FormasPagtoVLR_RECEBIDO: TCurrencyField
      FieldName = 'VLR_RECEBIDO'
    end
  end
  object ProdutoOrcamento: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 248
    Top = 120
  end
  object Orcamento: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 80
    Top = 120
  end
end
