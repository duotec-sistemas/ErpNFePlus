object View_Main: TView_Main
  Left = 0
  Top = 0
  Caption = 'View_Main'
  ClientHeight = 729
  ClientWidth = 1008
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_BackGround: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1002
    Height = 723
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1194
    object Pnl_Top: TPanel
      Left = 1
      Top = 1
      Width = 1000
      Height = 48
      Align = alTop
      Caption = 'Pnl_Top'
      TabOrder = 0
      ExplicitWidth = 1192
      object Label1: TLabel
        Left = 201
        Top = 21
        Width = 31
        Height = 13
        Caption = 'Label1'
      end
      object Pnl_Menu: TPanel
        Left = 49
        Top = 1
        Width = 64
        Height = 46
        Align = alLeft
        Caption = 'Pnl_Menu'
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 1
          Top = 1
          Width = 62
          Height = 44
          Align = alClient
          Caption = 'rosa'
          Images = DM_Container.ImgLst
          Flat = True
          ExplicitWidth = 48
        end
      end
      object Pnl_Logo: TPanel
        Left = 1
        Top = 1
        Width = 48
        Height = 46
        Align = alLeft
        Caption = 'Pnl_Logo'
        TabOrder = 1
      end
    end
    object Pnl_MenuModulo: TPanel
      Left = 1
      Top = 49
      Width = 232
      Height = 673
      Align = alLeft
      Caption = 'Pnl_MenuModulo'
      Padding.Top = 10
      TabOrder = 1
    end
    object Pnl_View: TPanel
      Left = 233
      Top = 49
      Width = 768
      Height = 673
      Align = alClient
      Caption = 'Pnl_View'
      TabOrder = 2
      ExplicitLeft = 409
      ExplicitWidth = 784
      object Pnl_SubMenu: TPanel
        Left = 1
        Top = 1
        Width = 280
        Height = 671
        Align = alLeft
        Caption = 'Pnl_SubMenuModulo'
        TabOrder = 0
      end
    end
  end
end
