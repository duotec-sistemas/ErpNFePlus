object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 600
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_BackGround: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 600
    Align = alClient
    BevelOuter = bvNone
    Color = 14866643
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -280
    ExplicitTop = -262
    ExplicitWidth = 915
    ExplicitHeight = 561
    object Pnl_BackGroundInterno: TPanel
      Left = 5
      Top = 5
      Width = 990
      Height = 590
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitWidth = 1003
      ExplicitHeight = 542
      object Panel1: TPanel
        Left = 258
        Top = 1
        Width = 731
        Height = 503
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 715
        ExplicitHeight = 600
        object ComboBox1: TComboBox
          Left = 6
          Top = 32
          Width = 401
          Height = 38
          BevelInner = bvNone
          BevelOuter = bvNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 0
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = 'Dinheiro'
          Items.Strings = (
            'Dinheiro'
            'Cart'#227'o Cr'#233'dito '
            'Cart'#227'o D'#233'bito'
            'Pix')
        end
        object Edt_VlrUnitario: TEdit
          AlignWithMargins = True
          Left = 413
          Top = 33
          Width = 150
          Height = 38
          Alignment = taCenter
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16119285
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBGrid1: TDBGrid
          Left = 6
          Top = 88
          Width = 699
          Height = 321
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 257
        Height = 503
        Align = alLeft
        TabOrder = 1
        ExplicitLeft = -5
        ExplicitHeight = 540
        object Label22: TLabel
          Left = 1
          Top = 1
          Width = 255
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'SubTotal'
          ExplicitLeft = -4
          ExplicitTop = 0
        end
        object Label1: TLabel
          Left = 1
          Top = 138
          Width = 255
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'SubTotal'
          ExplicitLeft = -4
          ExplicitTop = 110
        end
        object DBEdit2: TDBEdit
          AlignWithMargins = True
          Left = 16
          Top = 181
          Width = 230
          Height = 64
          Margins.Left = 15
          Margins.Top = 30
          Margins.Right = 10
          Margins.Bottom = 30
          Align = alTop
          BorderStyle = bsNone
          Color = 16119285
          DataField = 'VLR_SUBTOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 14
          ExplicitTop = 288
        end
        object DBEdit1: TDBEdit
          AlignWithMargins = True
          Left = 16
          Top = 44
          Width = 230
          Height = 64
          Margins.Left = 15
          Margins.Top = 30
          Margins.Right = 10
          Margins.Bottom = 30
          Align = alTop
          BorderStyle = bsNone
          Color = 16119285
          DataField = 'VLR_SUBTOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ExplicitLeft = 8
          ExplicitTop = 23
          ExplicitWidth = 225
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 504
        Width = 988
        Height = 85
        Align = alBottom
        Caption = 'Panel4'
        TabOrder = 2
        ExplicitLeft = 0
      end
    end
  end
end
