object View_AlterarVendedor: TView_AlterarVendedor
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'View_AlterarVendedor'
  ClientHeight = 636
  ClientWidth = 1031
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_BackGround: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 768
    BevelOuter = bvNone
    Color = 14866643
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    object Pnl_BackGroundInterno: TPanel
      Left = 5
      Top = 5
      Width = 990
      Height = 758
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel1: TPanel
        Left = 1
        Top = 109
        Width = 988
        Height = 587
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 111
        object Label11: TLabel
          Left = 264
          Top = 42
          Width = 72
          Height = 21
          Alignment = taRightJustify
          Caption = 'Vendedor'
          Color = clBtnFace
          ParentColor = False
        end
        object ComboBox1: TComboBox
          Left = 342
          Top = 39
          Width = 425
          Height = 29
          TabOrder = 0
          Text = 'CmbBx_Vendedor'
        end
      end
      object Pnl_Mensagem: TPanel
        Left = 1
        Top = 696
        Width = 988
        Height = 61
        Align = alBottom
        Caption = 'Pnl_Mensagem'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
      object Pnl_Titulo: TPanel
        Left = 1
        Top = 1
        Width = 988
        Height = 64
        Align = alTop
        Caption = 'ALTERAR VENDEDOR'
        Color = clBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
      end
      object Pnl_Opcoes: TPanel
        Left = 1
        Top = 65
        Width = 988
        Height = 44
        Align = alTop
        TabOrder = 3
        ExplicitTop = 19
        ExplicitWidth = 986
        object Btn_Salvar: TJvgSpeedButton
          AlignWithMargins = True
          Left = 133
          Top = 4
          Width = 123
          Height = 36
          Align = alLeft
          AllowAllUp = True
          Caption = '&Salvar'
          Enabled = True
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Color = clGreen
          ActiveColor = clWhite
          Frame = False
          FrameColor = clGreen
          DefaultStyle = False
          ModalResult = 0
          ExplicitLeft = 859
          ExplicitTop = 5
          ExplicitHeight = 34
        end
        object JvgSpeedButton1: TJvgSpeedButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 123
          Height = 36
          Align = alLeft
          AllowAllUp = True
          Caption = 'Voltar [ESC]'
          Enabled = True
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Color = clGreen
          ActiveColor = clWhite
          Frame = False
          FrameColor = clGreen
          DefaultStyle = False
          ModalResult = 0
          ExplicitLeft = 711
          ExplicitHeight = 34
        end
      end
    end
  end
end
