object ConexaoSQLLite: TConexaoSQLLite
  OldCreateOrder = False
  Height = 319
  Width = 561
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=.\dados\ErpNfePlus.db'
      'OpenMode=ReadWrite'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 96
    Top = 24
  end
end
