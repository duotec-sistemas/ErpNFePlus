object View_CheckOut: TView_CheckOut
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'View_CheckOut'
  ClientHeight = 700
  ClientWidth = 1000
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_BackGround: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 600
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
      Height = 590
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel1: TPanel
        Left = 135
        Top = 65
        Width = 854
        Height = 463
        Align = alClient
        TabOrder = 0
        object DBGrd_FormaPagto: TDBGrid
          Left = 1
          Top = 106
          Width = 852
          Height = 261
          Align = alTop
          BorderStyle = bsNone
          DataSource = DtSrc_FormaPagto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrd_FormaPagtoDrawColumnCell
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'STS_APAGAR'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_FORMA_PAGTO'
              ReadOnly = True
              Title.Caption = 'Forma Pagamento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_PAGO'
              ReadOnly = True
              Title.Caption = 'Valor Pago'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 150
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 1
          Top = 367
          Width = 852
          Height = 95
          Align = alClient
          TabOrder = 1
          object GridPanel1: TGridPanel
            Left = 1
            Top = 1
            Width = 850
            Height = 93
            Align = alClient
            ColumnCollection = <
              item
                Value = 25.130632153378090000
              end
              item
                Value = 25.000000000000000000
              end
              item
                Value = 25.000000000000000000
              end
              item
                Value = 24.869367846621910000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Panel5
                Row = 0
              end
              item
                Column = 1
                Control = Panel6
                Row = 0
              end
              item
                Column = 2
                Control = Panel7
                Row = 0
              end
              item
                Column = 3
                Control = Panel8
                Row = 0
              end>
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            TabOrder = 0
            object Panel5: TPanel
              Left = 1
              Top = 1
              Width = 213
              Height = 91
              Align = alClient
              TabOrder = 0
              object Label22: TLabel
                Tag = 4
                Left = 1
                Top = 1
                Width = 211
                Height = 30
                Align = alTop
                Alignment = taCenter
                Caption = 'SubTotal'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 79
              end
              object Edt_SubTotal: TDBEdit
                Tag = 4
                AlignWithMargins = True
                Left = 16
                Top = 36
                Width = 186
                Height = 37
                Margins.Left = 15
                Margins.Top = 5
                Margins.Right = 10
                Margins.Bottom = 0
                TabStop = False
                Align = alTop
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = 16119285
                DataField = 'VLR_SUBTOTAL'
                DataSource = DtSrc_ProdutoNF
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel6: TPanel
              Left = 214
              Top = 1
              Width = 212
              Height = 91
              Align = alClient
              TabOrder = 1
              object Label2: TLabel
                Tag = 4
                Left = 1
                Top = 1
                Width = 210
                Height = 30
                Align = alTop
                Alignment = taCenter
                Caption = 'Valor Pago'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 98
              end
              object Edt_VlrTotalPago: TDBEdit
                Tag = 4
                AlignWithMargins = True
                Left = 16
                Top = 36
                Width = 185
                Height = 37
                Margins.Left = 15
                Margins.Top = 5
                Margins.Right = 10
                Margins.Bottom = 0
                TabStop = False
                Align = alTop
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = 16119285
                DataField = 'VLR_PAGO'
                DataSource = DtSrc_FormaPagto
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel7: TPanel
              Left = 426
              Top = 1
              Width = 212
              Height = 91
              Align = alClient
              TabOrder = 2
              object Label5: TLabel
                Tag = 4
                Left = 1
                Top = 1
                Width = 210
                Height = 30
                Align = alTop
                Alignment = taCenter
                Caption = 'Valor a Pagar'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 121
              end
              object Edt_VlrPagar: TDBEdit
                Tag = 4
                AlignWithMargins = True
                Left = 16
                Top = 36
                Width = 185
                Height = 37
                Margins.Left = 15
                Margins.Top = 5
                Margins.Right = 10
                Margins.Bottom = 0
                TabStop = False
                Align = alTop
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = 16119285
                DataField = 'VLR_SALDO_PAGAR'
                DataSource = DtSrc_NF
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel8: TPanel
              Left = 638
              Top = 1
              Width = 211
              Height = 91
              Align = alClient
              TabOrder = 3
              object Lbl_Troco: TLabel
                Tag = 4
                Left = 1
                Top = 1
                Width = 209
                Height = 30
                Align = alTop
                Alignment = taCenter
                Caption = 'Troco'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 50
              end
              object Edt_VlrTroco: TDBEdit
                Tag = 4
                AlignWithMargins = True
                Left = 16
                Top = 36
                Width = 184
                Height = 37
                Margins.Left = 15
                Margins.Top = 5
                Margins.Right = 10
                Margins.Bottom = 0
                TabStop = False
                Align = alTop
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = 16119285
                DataField = 'VLR_TROCO'
                DataSource = DtSrc_NF
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 852
          Height = 105
          Align = alTop
          TabOrder = 2
          ExplicitLeft = 2
          ExplicitTop = -5
          object Label3: TLabel
            Tag = 4
            Left = 8
            Top = 1
            Width = 179
            Height = 25
            Alignment = taCenter
            Caption = 'Forma de Pagamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Tag = 4
            Left = 431
            Top = 2
            Width = 91
            Height = 25
            Alignment = taCenter
            Caption = 'Valor Pago'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Btn_Adicionar: TJvTransparentButton
            Left = 640
            Top = 32
            Width = 114
            Height = 32
            Caption = 'Adicionar'
            Color = clGreen
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            HotTrackFont.Charset = ANSI_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -19
            HotTrackFont.Name = 'Segoe UI Semibold'
            HotTrackFont.Style = []
            ParentFont = False
            Transparent = False
            OnClick = Btn_AdicionarClick
          end
          object CmbBx_FormaPagto: TComboBox
            Tag = 4
            Left = 8
            Top = 32
            Width = 401
            Height = 33
            BevelInner = bvNone
            BevelOuter = bvNone
            Style = csDropDownList
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
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
          object Edt_VlrPago: TJvCalcEdit
            Tag = 4
            Left = 424
            Top = 32
            Width = 193
            Height = 33
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 16119285
            DecimalPlaceRound = True
            DisplayFormat = ',0.00'
            ButtonWidth = 24
            TabOrder = 1
            DisabledTextColor = 16119285
            DisabledColor = 16119285
            DecimalPlacesAlwaysShown = True
          end
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 65
        Width = 134
        Height = 463
        Align = alLeft
        TabOrder = 1
        object GrdPnl_Opcoes: TGridPanel
          Left = 1
          Top = 1
          Width = 132
          Height = 461
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
              Control = Panel11
              Row = 1
            end
            item
              Column = 0
              Control = Panel13
              Row = 2
            end>
          ParentBackground = False
          RowCollection = <
            item
              Value = 14.285714285714290000
            end
            item
              Value = 14.285714285714290000
            end
            item
              Value = 14.285714285714290000
            end
            item
              Value = 14.285714285714290000
            end
            item
              Value = 14.285714285714290000
            end
            item
              Value = 14.285714285714290000
            end
            item
              Value = 14.285714285714270000
            end>
          TabOrder = 0
          object Pnl_OpcaoEscape: TPanel
            Left = 0
            Top = 0
            Width = 132
            Height = 66
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Lbl_Esc: TLabel
              Tag = 4
              AlignWithMargins = True
              Left = 3
              Top = 10
              Width = 126
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
              ExplicitWidth = 33
            end
            object Lbl_Sair: TLabel
              Tag = 4
              Left = 0
              Top = 38
              Width = 132
              Height = 28
              Align = alClient
              Alignment = taCenter
              Caption = 'Voltar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -19
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              WordWrap = True
              ExplicitWidth = 50
              ExplicitHeight = 25
            end
          end
          object Panel11: TPanel
            Left = 0
            Top = 66
            Width = 132
            Height = 66
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Lbl_F3: TLabel
              Tag = 4
              AlignWithMargins = True
              Left = 3
              Top = 8
              Width = 126
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
              ExplicitWidth = 21
            end
            object Lbl_NovaVenda: TLabel
              Tag = 4
              Left = 0
              Top = 36
              Width = 132
              Height = 30
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
              ExplicitWidth = 102
              ExplicitHeight = 25
            end
          end
          object Panel13: TPanel
            Left = 0
            Top = 132
            Width = 132
            Height = 66
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Lbl_F5: TLabel
              Tag = 4
              AlignWithMargins = True
              Left = 3
              Top = 8
              Width = 126
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
              ExplicitWidth = 21
            end
            object Lbl_FecharVenda: TLabel
              Tag = 4
              Left = 0
              Top = 36
              Width = 132
              Height = 30
              Align = alClient
              Alignment = taCenter
              Caption = 'Encerrar Venda'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -19
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              WordWrap = True
              ExplicitWidth = 129
              ExplicitHeight = 25
            end
          end
        end
      end
      object Pnl_Mensagem: TPanel
        Left = 1
        Top = 528
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
        TabOrder = 2
      end
      object Pnl_Titulo: TPanel
        Left = 1
        Top = 1
        Width = 988
        Height = 64
        Align = alTop
        Caption = 'FINALIZANDO A VENDA'
        Color = clBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object DtSrc_FormaPagto: TDataSource
    Left = 79
    Top = 550
  end
  object DtSrc_ProdutoNF: TDataSource
    Left = 167
    Top = 550
  end
  object DtSrc_NF: TDataSource
    Left = 255
    Top = 542
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 943
    Top = 22
  end
end
