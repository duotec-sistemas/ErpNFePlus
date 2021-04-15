object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 299
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 904
    Height = 135
    Align = alClient
    DataSource = DtSrc_Testes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 41
    Align = alTop
    TabOrder = 1
    object Button2: TButton
      Left = 8
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 176
    Width = 904
    Height = 123
    Align = alBottom
    DataField = 'Retorno'
    DataSource = DtSrc_Testes
    TabOrder = 2
  end
  object Tbl_Testes: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 744
    Top = 65528
    object Tbl_TestesStatus: TBooleanField
      FieldName = 'Status'
    end
    object Tbl_TestesUnit: TStringField
      FieldName = 'Unit'
      Size = 30
    end
    object Tbl_TestesMetodo: TStringField
      FieldName = 'Metodo'
      Size = 30
    end
    object Tbl_TestesMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 250
    end
    object Tbl_TestesRetorno: TStringField
      FieldName = 'Retorno'
      Size = 4096
    end
  end
  object DtSrc_Testes: TDataSource
    DataSet = Tbl_Testes
    Left = 672
  end
end
