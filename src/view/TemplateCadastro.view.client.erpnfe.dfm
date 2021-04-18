inherited View_TemplateCadastro: TView_TemplateCadastro
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  object CardPanel1: TCardPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 386
    Align = alClient
    ActiveCard = Crd_Dados
    Caption = 'CardPanel1'
    TabOrder = 0
    ExplicitLeft = 56
    ExplicitTop = 32
    ExplicitWidth = 300
    ExplicitHeight = 200
    object Crd_Pesquisa: TCard
      Left = 1
      Top = 1
      Width = 602
      Height = 384
      Caption = 'Crd_Pesquisa'
      CardIndex = 0
      TabOrder = 0
      ExplicitWidth = 298
      ExplicitHeight = 198
    end
    object Crd_Dados: TCard
      Left = 1
      Top = 1
      Width = 602
      Height = 384
      Caption = 'Crd_Dados'
      CardIndex = 1
      TabOrder = 1
      ExplicitWidth = 298
      ExplicitHeight = 198
    end
  end
end
