object View_PDVAzul: TView_PDVAzul
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'View_PDVAzul'
  ClientHeight = 827
  ClientWidth = 1024
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_Back: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 827
    Caption = 'Pnl_Back'
    Color = 14866643
    ParentBackground = False
    TabOrder = 0
    object Pnl_BackInterno: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1016
      Height = 819
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 1014
        Height = 64
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Color = clBlue
        ParentBackground = False
        TabOrder = 0
        object Lbl_PinPad: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 148
          Height = 58
          Align = alLeft
          Caption = 'PINPAD ATIVO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
          ExplicitHeight = 30
        end
      end
      object Panel11: TPanel
        Left = 1
        Top = 65
        Width = 1014
        Height = 753
        Align = alClient
        TabOrder = 1
        object Pnl_DadosProduto: TPanel
          Left = 1
          Top = 1
          Width = 134
          Height = 751
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object GrdPnl_Opcoes: TGridPanel
            Left = 0
            Top = 0
            Width = 134
            Height = 751
            Align = alClient
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Pnl_OpcaoEscape
                Row = 0
              end
              item
                Column = 0
                Control = Panel4
                Row = 1
              end
              item
                Column = 0
                Control = Panel5
                Row = 2
              end
              item
                Column = 0
                Control = Panel6
                Row = 3
              end
              item
                Column = 0
                Control = Panel7
                Row = 4
              end
              item
                Column = 0
                Control = Panel8
                Row = 5
              end
              item
                Column = 0
                Control = Panel9
                Row = 6
              end
              item
                Column = 0
                Control = Panel10
                Row = 7
              end
              item
                Column = 0
                Control = Panel14
                Row = 8
              end
              item
                Column = 0
                Control = Panel15
                Row = 9
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end
              item
                Value = 10.000000000000000000
              end>
            TabOrder = 0
            object Pnl_OpcaoEscape: TPanel
              Left = 0
              Top = 0
              Width = 134
              Height = 75
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Lbl_Esc: TLabel
                Tag = 4
                AlignWithMargins = True
                Left = 3
                Top = 10
                Width = 128
                Height = 25
                Margins.Top = 10
                Align = alTop
                Alignment = taCenter
                Caption = 'ESC'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Lbl_EscDblClick
                ExplicitWidth = 33
              end
              object Lbl_Sair: TLabel
                Tag = 4
                Left = 0
                Top = 38
                Width = 134
                Height = 37
                Align = alClient
                Alignment = taCenter
                Caption = 'Sair'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Lbl_EscDblClick
                ExplicitWidth = 32
                ExplicitHeight = 25
              end
            end
            object Panel4: TPanel
              Left = 0
              Top = 75
              Width = 134
              Height = 75
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label8: TLabel
                Tag = 4
                AlignWithMargins = True
                Left = 3
                Top = 8
                Width = 128
                Height = 25
                Margins.Top = 8
                Align = alTop
                Alignment = taCenter
                Caption = 'F1'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = Label8Click
                ExplicitWidth = 21
              end
              object Label9: TLabel
                Tag = 4
                Left = 0
                Top = 36
                Width = 134
                Height = 39
                Align = alClient
                Alignment = taCenter
                Caption = 'Mais Op'#231#245'es'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnClick = Label8Click
                ExplicitWidth = 108
                ExplicitHeight = 25
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 150
              Width = 134
              Height = 75
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object Btn_PreVenda1: TLabel
                Tag = 4
                AlignWithMargins = True
                Left = 3
                Top = 8
                Width = 128
                Height = 25
                Margins.Top = 8
                Align = alTop
                Alignment = taCenter
                Caption = 'F2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Btn_PreVenda1DblClick
                ExplicitWidth = 21
              end
              object Btn_PreVenda2: TLabel
                Tag = 4
                Left = 0
                Top = 36
                Width = 134
                Height = 39
                Align = alClient
                Alignment = taCenter
                Caption = 'Pr'#233'-Venda'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Btn_PreVenda1DblClick
                ExplicitWidth = 89
                ExplicitHeight = 25
              end
            end
            object Panel6: TPanel
              Left = 0
              Top = 225
              Width = 134
              Height = 75
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 3
              object Lbl_F3: TLabel
                Tag = 4
                AlignWithMargins = True
                Left = 3
                Top = 8
                Width = 128
                Height = 25
                Margins.Top = 8
                Align = alTop
                Alignment = taCenter
                Caption = 'F3'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Lbl_F3DblClick
                ExplicitWidth = 21
              end
              object Lbl_NovaVenda: TLabel
                Tag = 4
                Left = 0
                Top = 36
                Width = 134
                Height = 39
                Align = alClient
                Alignment = taCenter
                Caption = 'Nova Venda'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Lbl_F3DblClick
                ExplicitWidth = 102
                ExplicitHeight = 25
              end
            end
            object Panel7: TPanel
              Left = 0
              Top = 300
              Width = 134
              Height = 75
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 4
              object Label14: TLabel
                Tag = 4
                AlignWithMargins = True
                Left = 3
                Top = 8
                Width = 128
                Height = 25
                Margins.Top = 8
                Align = alTop
                Alignment = taCenter
                Caption = 'F4'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Label14DblClick
                ExplicitWidth = 21
              end
              object Label15: TLabel
                Tag = 4
                Left = 0
                Top = 36
                Width = 134
                Height = 39
                Align = alClient
                Alignment = taCenter
                Caption = 'Quantidade'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Label14DblClick
                ExplicitWidth = 99
                ExplicitHeight = 25
              end
            end
            object Panel8: TPanel
              Left = 0
              Top = 375
              Width = 134
              Height = 76
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 5
              object Lbl_F5: TLabel
                Tag = 4
                AlignWithMargins = True
                Left = 3
                Top = 8
                Width = 128
                Height = 25
                Margins.Top = 8
                Align = alTop
                Alignment = taCenter
                Caption = 'F5'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Lbl_F5DblClick
                ExplicitWidth = 21
              end
              object Lbl_FecharVenda: TLabel
                Tag = 4
                Left = 0
                Top = 36
                Width = 134
                Height = 40
                Align = alClient
                Alignment = taCenter
                Caption = 'Fechar Venda'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Lbl_F5DblClick
                ExplicitWidth = 114
                ExplicitHeight = 25
              end
            end
            object Panel9: TPanel
              Left = 0
              Top = 451
              Width = 134
              Height = 75
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 6
              object Lbl_F6: TLabel
                Tag = 4
                AlignWithMargins = True
                Left = 3
                Top = 8
                Width = 128
                Height = 25
                Margins.Top = 8
                Align = alTop
                Alignment = taCenter
                Caption = 'F6'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Lbl_F6DblClick
                ExplicitWidth = 21
              end
              object Lbl_Cancelar: TLabel
                Tag = 4
                Left = 0
                Top = 36
                Width = 134
                Height = 39
                Align = alClient
                Alignment = taCenter
                Caption = 'Cancelar'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Lbl_F6DblClick
                ExplicitWidth = 74
                ExplicitHeight = 25
              end
            end
            object Panel10: TPanel
              Left = 0
              Top = 526
              Width = 134
              Height = 75
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 7
              object Label20: TLabel
                Tag = 4
                AlignWithMargins = True
                Left = 3
                Top = 8
                Width = 128
                Height = 25
                Margins.Top = 8
                Align = alTop
                Alignment = taCenter
                Caption = 'F7'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Label20DblClick
                ExplicitWidth = 21
              end
              object Label21: TLabel
                Tag = 4
                Left = 0
                Top = 36
                Width = 134
                Height = 39
                Align = alClient
                Alignment = taCenter
                Caption = 'Consultar Produto'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Label20DblClick
                ExplicitWidth = 86
                ExplicitHeight = 50
              end
            end
            object Panel14: TPanel
              Left = 0
              Top = 601
              Width = 134
              Height = 75
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 8
              object Label2: TLabel
                Tag = 4
                AlignWithMargins = True
                Left = 3
                Top = 8
                Width = 128
                Height = 25
                Margins.Top = 8
                Align = alTop
                Alignment = taCenter
                Caption = 'F8'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Label3DblClick
                ExplicitWidth = 21
              end
              object Label3: TLabel
                Tag = 4
                Left = 0
                Top = 36
                Width = 134
                Height = 39
                Align = alClient
                Alignment = taCenter
                Caption = 'Vendedor'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Label3DblClick
                ExplicitWidth = 82
                ExplicitHeight = 25
              end
            end
            object Panel15: TPanel
              Left = 0
              Top = 676
              Width = 134
              Height = 75
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 9
              object Label4: TLabel
                Tag = 4
                AlignWithMargins = True
                Left = 3
                Top = 8
                Width = 128
                Height = 25
                Margins.Top = 8
                Align = alTop
                Alignment = taCenter
                Caption = 'F9'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Label4DblClick
                ExplicitWidth = 21
              end
              object Label5: TLabel
                Tag = 4
                Left = 0
                Top = 36
                Width = 134
                Height = 39
                Align = alClient
                Alignment = taCenter
                Caption = 'NFe/NFCe'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Label4DblClick
                ExplicitWidth = 85
                ExplicitHeight = 25
              end
            end
          end
        end
        object Panel12: TPanel
          Left = 135
          Top = 1
          Width = 878
          Height = 751
          Align = alClient
          Caption = 'Panel12'
          TabOrder = 1
          object Pnl_Rodape: TPanel
            AlignWithMargins = True
            Left = 16
            Top = 628
            Width = 846
            Height = 119
            Margins.Left = 15
            Margins.Right = 15
            Align = alBottom
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object Panel2: TPanel
              Left = 536
              Top = 0
              Width = 310
              Height = 119
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              object Label22: TLabel
                Left = 0
                Top = 0
                Width = 310
                Height = 37
                Align = alTop
                Alignment = taCenter
                Caption = 'SubTotal'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -27
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 106
              end
              object DBEdit1: TDBEdit
                AlignWithMargins = True
                Left = 15
                Top = 47
                Width = 285
                Height = 62
                Margins.Left = 15
                Margins.Top = 10
                Margins.Right = 10
                Margins.Bottom = 10
                Align = alClient
                BorderStyle = bsNone
                Color = 16119285
                DataField = 'VLR_SUBTOTAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -29
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
            end
            object Panel13: TPanel
              Left = 0
              Top = 0
              Width = 536
              Height = 119
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label1: TLabel
                Left = 0
                Top = 0
                Width = 536
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'Mensagem'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 95
              end
              object Memo1: TMemo
                AlignWithMargins = True
                Left = 3
                Top = 28
                Width = 530
                Height = 88
                Align = alClient
                BorderStyle = bsNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                Lines.Strings = (
                  '')
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object Pnl_MensagemOperador: TPanel
            AlignWithMargins = True
            Left = 16
            Top = 4
            Width = 846
            Height = 53
            Margins.Left = 15
            Margins.Right = 15
            Align = alTop
            BevelOuter = bvNone
            Color = 4227327
            ParentBackground = False
            TabOrder = 1
            object Edit1: TEdit
              AlignWithMargins = True
              Left = 3
              Top = 9
              Width = 840
              Height = 29
              Margins.Bottom = 15
              Align = alBottom
              Alignment = taCenter
              BorderStyle = bsNone
              Color = 4227327
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TextHint = 'Digite o c'#243'digo do produto'
            end
          end
          object DBGrid1: TDBGrid
            AlignWithMargins = True
            Left = 9
            Top = 63
            Width = 865
            Height = 559
            Margins.Left = 8
            Align = alClient
            BorderStyle = bsNone
            DataSource = DtSrc_Produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 2
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'POSICAO'
                Title.Caption = '#'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COD_PRODUTO'
                Title.Caption = 'C'#243'digo'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 420
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDADE'
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtdade'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_PRODUTO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vlr.Unit'#225'rio'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL_PRODUTO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vlr.Total'
                Width = 100
                Visible = True
              end>
          end
          object GrdPnl_MaisOpcoes: TGridPanel
            Left = 1
            Top = 60
            Width = 876
            Height = 565
            Align = alClient
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Panel3
                Row = 0
              end
              item
                Column = 0
                Control = Panel16
                Row = 1
              end
              item
                Column = 0
                Control = Panel17
                Row = 2
              end
              item
                Column = 0
                Control = Panel18
                Row = 3
              end
              item
                Column = 0
                Control = Panel19
                Row = 4
              end
              item
                Column = 0
                Control = Panel20
                Row = 5
              end
              item
                Column = 0
                Control = Panel21
                Row = 6
              end
              item
                Column = 0
                Control = Panel22
                Row = 7
              end>
            ParentBackground = False
            RowCollection = <
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end
              item
                Value = 12.500000000000000000
              end>
            TabOrder = 3
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 876
              Height = 71
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Lbl_EscMaisOpcoes: TLabel
                Tag = 4
                Left = 0
                Top = 0
                Width = 876
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'ESC'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Lbl_EscMaisOpcoesDblClick
                ExplicitWidth = 33
              end
              object Lbl_VoltarOpcoes: TLabel
                Tag = 4
                Left = 0
                Top = 25
                Width = 876
                Height = 46
                Align = alClient
                Alignment = taCenter
                Caption = 'Voltar'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Lbl_EscMaisOpcoesDblClick
                ExplicitWidth = 50
                ExplicitHeight = 25
              end
            end
            object Panel16: TPanel
              Left = 0
              Top = 71
              Width = 876
              Height = 70
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label10: TLabel
                Tag = 4
                Left = 0
                Top = 0
                Width = 876
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'F10'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = Label10Click
                ExplicitWidth = 32
              end
              object Label11: TLabel
                Tag = 4
                Left = 0
                Top = 25
                Width = 876
                Height = 45
                Align = alClient
                Alignment = taCenter
                Caption = 'Configurar Dispositivo'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnClick = Label10Click
                ExplicitWidth = 188
                ExplicitHeight = 25
              end
            end
            object Panel17: TPanel
              Left = 0
              Top = 141
              Width = 876
              Height = 71
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object Label12: TLabel
                Tag = 4
                Left = 0
                Top = 0
                Width = 876
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'F11'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Label12DblClick
                ExplicitWidth = 32
              end
              object Label13: TLabel
                Tag = 4
                Left = 0
                Top = 25
                Width = 876
                Height = 46
                Align = alClient
                Alignment = taCenter
                Caption = 'Configurar Usu'#225'rio'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Label12DblClick
                ExplicitWidth = 161
                ExplicitHeight = 25
              end
            end
            object Panel18: TPanel
              Left = 0
              Top = 212
              Width = 876
              Height = 70
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 3
              object Label16: TLabel
                Tag = 4
                Left = 0
                Top = 0
                Width = 876
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'F12'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Lbl_F3DblClick
                ExplicitWidth = 32
              end
              object Label17: TLabel
                Tag = 4
                Left = 0
                Top = 25
                Width = 876
                Height = 45
                Align = alClient
                Alignment = taCenter
                Caption = 'Cancelar TEF'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Lbl_F3DblClick
                ExplicitWidth = 108
                ExplicitHeight = 25
              end
            end
            object Panel19: TPanel
              Left = 0
              Top = 282
              Width = 876
              Height = 71
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 4
              object Label18: TLabel
                Left = 0
                Top = 0
                Width = 876
                Height = 25
                Align = alTop
                Alignment = taCenter
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Label14DblClick
                ExplicitWidth = 5
              end
              object Label19: TLabel
                Left = 0
                Top = 25
                Width = 876
                Height = 46
                Align = alClient
                Alignment = taCenter
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Label14DblClick
                ExplicitWidth = 5
                ExplicitHeight = 25
              end
            end
            object Panel20: TPanel
              Left = 0
              Top = 353
              Width = 876
              Height = 71
              Align = alClient
              BevelOuter = bvNone
              Color = 16311511
              ParentBackground = False
              TabOrder = 5
            end
            object Panel21: TPanel
              Left = 0
              Top = 424
              Width = 876
              Height = 70
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 6
              object Label25: TLabel
                Left = 0
                Top = 0
                Width = 876
                Height = 25
                Align = alTop
                Alignment = taCenter
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Lbl_F6DblClick
                ExplicitWidth = 5
              end
              object Label26: TLabel
                Left = 0
                Top = 25
                Width = 876
                Height = 45
                Align = alClient
                Alignment = taCenter
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Lbl_F6DblClick
                ExplicitWidth = 5
                ExplicitHeight = 25
              end
            end
            object Panel22: TPanel
              Left = 0
              Top = 494
              Width = 876
              Height = 71
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 7
              object Label27: TLabel
                Left = 0
                Top = 0
                Width = 876
                Height = 25
                Align = alTop
                Alignment = taCenter
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Label20DblClick
                ExplicitWidth = 5
              end
              object Label28: TLabel
                Left = 0
                Top = 25
                Width = 876
                Height = 46
                Align = alClient
                Alignment = taCenter
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                OnDblClick = Label20DblClick
                ExplicitWidth = 5
                ExplicitHeight = 25
              end
            end
          end
        end
      end
    end
  end
  object DtSrc_Produto: TDataSource
    OnStateChange = DtSrc_ProdutoStateChange
    Left = 114
    Top = 164
  end
end
