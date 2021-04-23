inherited OrcamentoDao: TOrcamentoDao
  OldCreateOrder = True
  Height = 384
  Width = 731
  inherited Qry_Pesquisa: TFDQuery
    CachedUpdates = True
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
  end
  object Qry_ProdutoOrcamento: TFDQuery
    Connection = FDConexao
    FetchOptions.AssignedValues = [evRecsMax, evRowsetSize]
    FetchOptions.RowsetSize = 1000
    FetchOptions.RecsMax = 1000
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    Left = 64
    Top = 168
  end
end
