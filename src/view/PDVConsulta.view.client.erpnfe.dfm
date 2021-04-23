object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 561
  ClientWidth = 915
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_BackGround: TPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 561
    Align = alClient
    BevelOuter = bvNone
    Color = 7346457
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 724
    ExplicitHeight = 441
    object Pnl_BackGroundInterno: TPanel
      Left = 5
      Top = 5
      Width = 905
      Height = 551
      Align = alClient
      Color = 14866643
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 1014
      ExplicitHeight = 790
      object Pnl_Central: TPanel
        AlignWithMargins = True
        Left = 16
        Top = 93
        Width = 873
        Height = 400
        Margins.Left = 15
        Margins.Right = 15
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 248
        ExplicitWidth = 982
        ExplicitHeight = 383
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 873
          Height = 400
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'Num.Or'#231'amento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'Cod.Cliente'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'Nome Cliente'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 420
              Visible = True
            end
            item
              Expanded = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'Vlr.Or'#231'amento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'Dt.Or'#231'amento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 100
              Visible = True
            end>
        end
      end
      object Pnl_Cabecalho: TPanel
        Left = 1
        Top = 1
        Width = 903
        Height = 89
        Align = alTop
        TabOrder = 1
        ExplicitLeft = 24
        ExplicitTop = 16
        ExplicitWidth = 689
        object Label1: TLabel
          Left = 32
          Top = 38
          Width = 60
          Height = 21
          Caption = 'Procurar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 765
          Top = 33
          Width = 32
          Height = 32
        end
        object Edit1: TEdit
          Left = 112
          Top = 35
          Width = 649
          Height = 29
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'Edit1'
        end
      end
      object Pnl_Rodape: TPanel
        Left = 1
        Top = 496
        Width = 903
        Height = 54
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 664
      end
    end
  end
end
