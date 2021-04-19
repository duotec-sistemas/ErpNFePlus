object View_Main: TView_Main
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'View_Main'
  ClientHeight = 641
  ClientWidth = 1200
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
    Width = 1194
    Height = 635
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object Pnl_Top: TPanel
      Left = 1
      Top = 1
      Width = 1192
      Height = 48
      Align = alTop
      Caption = 'Pnl_Top'
      TabOrder = 0
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
      object Button4: TButton
        Left = 872
        Top = 12
        Width = 75
        Height = 25
        Caption = 'Button4'
        TabOrder = 2
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 1048
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Button5'
        TabOrder = 3
        OnClick = Button5Click
      end
    end
    object Pnl_MenuModulo: TPanel
      Left = 1
      Top = 49
      Width = 128
      Height = 585
      Align = alLeft
      Caption = 'Pnl_MenuModulo'
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      TabOrder = 1
      object Button1: TButton
        Left = 0
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 16
        Top = 328
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 16
        Top = 384
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 2
      end
    end
    object Pnl_View: TPanel
      Left = 129
      Top = 49
      Width = 1064
      Height = 585
      Align = alClient
      Caption = 'Pnl_View'
      TabOrder = 2
      object Pnl_SubMenu: TPanel
        Left = 1
        Top = 1
        Width = 128
        Height = 583
        Align = alLeft
        Caption = 'Pnl_SubMenuModulo'
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        TabOrder = 0
        Visible = False
      end
    end
  end
end
