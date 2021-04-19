inherited View_CadDominio: TView_CadDominio
  Align = alClient
  Caption = 'View_CadDominio'
  ClientHeight = 489
  ClientWidth = 1139
  Color = 16777088
  WindowState = wsMaximized
  ExplicitWidth = 1155
  ExplicitHeight = 528
  PixelsPerInch = 96
  TextHeight = 13
  inherited CardPanel1: TCardPanel
    Width = 1139
    Height = 489
    ParentBackground = False
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 719
    ExplicitHeight = 386
    inherited Crd_Pesquisa: TCard
      Width = 1137
      Height = 487
      ExplicitWidth = 717
      ExplicitHeight = 384
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1137
        Height = 57
        Align = alTop
        Caption = 'Panel2'
        Color = 65408
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 717
      end
      object Panel4: TPanel
        Left = 0
        Top = 57
        Width = 1137
        Height = 430
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 1
        ExplicitWidth = 717
        ExplicitHeight = 311
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 1135
          Height = 428
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
      Width = 1137
      Height = 487
      ExplicitWidth = 717
      ExplicitHeight = 384
      object ScrollBox1: TScrollBox
        Left = 240
        Top = 16
        Width = 697
        Height = 377
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 48
          Width = 31
          Height = 13
          Caption = 'Label1'
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 67
          Width = 153
          Height = 21
          TabOrder = 0
        end
        object Panel1: TPanel
          Left = -2
          Top = 1
          Width = 692
          Height = 41
          TabOrder = 1
        end
      end
    end
  end
end
