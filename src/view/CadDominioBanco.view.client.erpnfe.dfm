inherited View_CadDominio: TView_CadDominio
  Align = alClient
  Caption = 'View_CadDominio'
  ClientWidth = 719
  Color = 16777088
  WindowState = wsMaximized
  ExplicitWidth = 735
  PixelsPerInch = 96
  TextHeight = 13
  inherited CardPanel1: TCardPanel
    Width = 719
    ActiveCard = Crd_Pesquisa
    ParentBackground = False
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 604
    ExplicitHeight = 386
    inherited Crd_Pesquisa: TCard
      Width = 717
      ExplicitLeft = 0
      ExplicitTop = 6
      ExplicitWidth = 602
      ExplicitHeight = 343
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 717
        Height = 57
        Align = alTop
        Caption = 'Panel2'
        Color = 65408
        ParentBackground = False
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 0
        Top = 368
        Width = 717
        Height = 16
        Align = alBottom
        Caption = 'Panel3'
        Color = 33023
        ParentBackground = False
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 0
        Top = 57
        Width = 717
        Height = 311
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 2
        ExplicitLeft = 88
        ExplicitTop = 72
        ExplicitWidth = 489
        ExplicitHeight = 177
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 715
          Height = 309
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    inherited Crd_Dados: TCard
      Width = 717
      ExplicitWidth = 602
      ExplicitHeight = 384
    end
  end
end
