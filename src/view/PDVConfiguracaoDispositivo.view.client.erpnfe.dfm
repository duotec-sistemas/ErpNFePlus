object View_ConfiguracaoDispositivo: TView_ConfiguracaoDispositivo
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'View_ConfiguracaoDispositivo'
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
        Top = 65
        Width = 988
        Height = 631
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object gbConfigImpressora: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 256
          Width = 980
          Height = 197
          Align = alTop
          Caption = 'Impressora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitTop = 212
          object Label25: TLabel
            Left = 313
            Top = 112
            Width = 91
            Height = 20
            Caption = 'Linhas '#224' pular'
            Color = clBtnFace
            ParentColor = False
          end
          object Label26: TLabel
            Left = 5
            Top = 112
            Width = 133
            Height = 20
            Caption = 'Espa'#231'os entre linhas'
            Color = clBtnFace
            ParentColor = False
          end
          object Label27: TLabel
            Left = 512
            Top = 112
            Width = 52
            Height = 20
            Caption = 'Colunas'
            Color = clBtnFace
            ParentColor = False
          end
          object Label28: TLabel
            Left = 9
            Top = 31
            Width = 52
            Height = 20
            Caption = 'Modelo'
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object Label7: TLabel
            Left = 313
            Top = 31
            Width = 34
            Height = 20
            Caption = 'Porta'
            Color = clBtnFace
            ParentColor = False
          end
          object Label29: TLabel
            Left = 512
            Top = 31
            Width = 99
            Height = 20
            Caption = 'P'#225'g. de c'#243'digo'
            Color = clWhite
            ParentColor = False
            Transparent = False
          end
          object btSerial: TSpeedButton
            Left = 361
            Top = 82
            Width = 25
            Height = 23
          end
          object btProcuraImpressoras: TSpeedButton
            Left = 405
            Top = 82
            Width = 25
            Height = 23
          end
          object seLinhasPular: TSpinEdit
            Left = 313
            Top = 138
            Width = 161
            Height = 30
            MaxValue = 255
            MinValue = 0
            TabOrder = 4
            Value = 0
          end
          object seEspLinhas: TSpinEdit
            Left = 9
            Top = 138
            Width = 145
            Height = 30
            MaxValue = 255
            MinValue = 0
            TabOrder = 3
            Value = 0
          end
          object seColunas: TSpinEdit
            Left = 512
            Top = 138
            Width = 99
            Height = 30
            MaxValue = 999
            MinValue = 1
            TabOrder = 5
            Value = 48
          end
          object cbxModeloPosPrinter: TComboBox
            Left = 9
            Top = 57
            Width = 238
            Height = 28
            Style = csDropDownList
            TabOrder = 0
          end
          object cbxPorta: TComboBox
            Left = 313
            Top = 57
            Width = 161
            Height = 28
            TabOrder = 1
          end
          object cbxPagCodigo: TComboBox
            Left = 512
            Top = 57
            Width = 99
            Height = 28
            Hint = 'Pagina de c'#243'digo usada pela Impressora POS'
            Style = csDropDownList
            TabOrder = 2
          end
          object btTestarPosPrinter: TBitBtn
            Left = 641
            Top = 142
            Width = 177
            Height = 28
            Caption = 'Testar Impressora'
            Layout = blGlyphTop
            TabOrder = 6
          end
        end
        object gbConfigTEF: TGroupBox
          Left = 1
          Top = 45
          Width = 986
          Height = 208
          Align = alTop
          Caption = 'TEF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ExplicitTop = 1
          object Label1: TLabel
            Left = 9
            Top = 16
            Width = 108
            Height = 20
            Caption = 'Gerenciador TEF'
            Color = clBtnFace
            ParentColor = False
          end
          object Label10: TLabel
            Left = 536
            Top = 54
            Width = 81
            Height = 20
            Caption = 'M'#225'x.Cart'#245'es'
            Color = clBtnFace
            ParentColor = False
            Visible = False
          end
          object Label11: TLabel
            Left = 9
            Top = 74
            Width = 55
            Height = 20
            Alignment = taRightJustify
            Caption = 'Arq.Log:'
            Color = clBtnFace
            ParentColor = False
          end
          object SbArqLog: TSpeedButton
            Left = 253
            Top = 100
            Width = 28
            Height = 28
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 536
            Top = 116
            Width = 95
            Height = 20
            Caption = 'Troco M'#225'ximo'
            Color = clBtnFace
            ParentColor = False
            Visible = False
          end
          object Label9: TLabel
            Left = 9
            Top = 141
            Width = 55
            Height = 20
            Caption = 'QRCode'
            Color = clBtnFace
            ParentColor = False
          end
          object cbxGP: TComboBox
            Left = 9
            Top = 36
            Width = 272
            Height = 28
            Style = csDropDownList
            TabOrder = 0
          end
          object cbMultiplosCartoes: TCheckBox
            Left = 536
            Top = 29
            Width = 105
            Height = 19
            Caption = 'Multiplos Cart'#245'es'
            TabOrder = 7
            Visible = False
          end
          object cbSuportaDesconto: TCheckBox
            Left = 512
            Top = 66
            Width = 177
            Height = 19
            Caption = 'Suporta Desconto'
            TabOrder = 4
            Visible = False
          end
          object cbSuportaSaque: TCheckBox
            Left = 512
            Top = 92
            Width = 177
            Height = 19
            Caption = 'Suporta Saque'
            TabOrder = 5
            Visible = False
          end
          object seMaxCartoes: TSpinEdit
            Left = 536
            Top = 80
            Width = 72
            Height = 30
            MaxValue = 20
            MinValue = 0
            TabOrder = 8
            Value = 0
            Visible = False
          end
          object cbIMprimirViaReduzida: TCheckBox
            Left = 313
            Top = 40
            Width = 193
            Height = 19
            Caption = 'Imprimir Via Reduzida'
            TabOrder = 3
            Visible = False
          end
          object edLog: TEdit
            Left = 9
            Top = 100
            Width = 238
            Height = 28
            Cursor = crIBeam
            TabOrder = 1
          end
          object seTrocoMaximo: TSpinEdit
            Left = 544
            Top = 142
            Width = 73
            Height = 30
            MaxValue = 100000
            MinValue = 0
            TabOrder = 9
            Value = 0
            Visible = False
          end
          object cbSuportaReajusteValor: TCheckBox
            Left = 512
            Top = 117
            Width = 168
            Height = 19
            Caption = 'Suporta Reajuste Valor'
            TabOrder = 6
            Visible = False
          end
          object btTestarTEF: TBitBtn
            Left = 298
            Top = 167
            Width = 177
            Height = 28
            Caption = 'Testar TEF'
            TabOrder = 2
          end
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 478
            Top = 25
            Width = 503
            Height = 178
            Align = alRight
            Caption = 'Software House e Aplica'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            object Label14: TLabel
              Left = 16
              Top = 30
              Width = 85
              Height = 20
              Caption = 'Raz'#227'o Social'
              Color = clBtnFace
              ParentColor = False
            end
            object Label16: TLabel
              Left = 24
              Top = 90
              Width = 111
              Height = 20
              Caption = 'Nome Aplica'#231#227'o'
              Color = clBtnFace
              ParentColor = False
            end
            object Label18: TLabel
              Left = 256
              Top = 27
              Width = 55
              Height = 20
              Caption = 'Registro'
              Color = clBtnFace
              ParentColor = False
            end
            object Label19: TLabel
              Left = 264
              Top = 87
              Width = 44
              Height = 20
              Caption = 'Vers'#227'o'
              Color = clBtnFace
              ParentColor = False
            end
            object edRazaoSocial: TEdit
              Left = 16
              Top = 56
              Width = 225
              Height = 28
              TabOrder = 0
              Text = 'PROJETO ACBR'
            end
            object edAplicacaoNome: TEdit
              Left = 19
              Top = 116
              Width = 222
              Height = 28
              TabOrder = 2
              Text = 'TEFDemoNF'
            end
            object edRegistro: TEdit
              Left = 256
              Top = 53
              Width = 84
              Height = 28
              TabOrder = 1
              Text = '123456'
            end
            object edAplicacaoVersao: TEdit
              Left = 257
              Top = 113
              Width = 83
              Height = 28
              TabOrder = 3
              Text = '1.0'
            end
          end
          object cbxQRCode: TComboBox
            Left = 9
            Top = 167
            Width = 272
            Height = 28
            Style = csDropDownList
            TabOrder = 11
            Items.Strings = (
              'N'#227'o Suportado'
              'Auto'
              'Exibir no PinPad'
              'Exibir na Tela'
              'Imprimir')
          end
        end
        object Pnl_Opcoes: TPanel
          Left = 1
          Top = 1
          Width = 986
          Height = 44
          Align = alTop
          TabOrder = 2
          ExplicitTop = -5
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
        Caption = 'CONFIGURANDO DISPOSITIVO'
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
    end
  end
end
