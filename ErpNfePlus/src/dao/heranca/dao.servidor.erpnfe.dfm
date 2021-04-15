object ServidorDao: TServidorDao
  OldCreateOrder = False
  Height = 170
  Width = 435
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=d:\duosig\dados\duotec_case.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=NB-LENOVO-TONE'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 8
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 192
    Top = 8
  end
  object Qry_Pesquisa: TFDQuery
    Connection = FDConexao
    Left = 48
    Top = 80
  end
  object Qry_QtdRegistro: TFDQuery
    Connection = FDConexao
    Left = 192
    Top = 80
  end
  object Qry_Gravacao: TFDQuery
    Connection = FDConexao
    Left = 312
    Top = 24
  end
end
