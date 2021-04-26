object View_PDV: TView_PDV
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'View_PDV'
  ClientHeight = 800
  ClientWidth = 1024
  Color = clBlack
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 25
  object Pnl_BackGround: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 800
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
      Width = 1014
      Height = 790
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Pnl_MensagemOperador: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 94
        Width = 984
        Height = 53
        Margins.Left = 15
        Margins.Right = 15
        Align = alTop
        BevelOuter = bvNone
        Color = 9538183
        ParentBackground = False
        TabOrder = 0
      end
      object Pnl_Central: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 222
        Width = 984
        Height = 410
        Margins.Left = 15
        Margins.Right = 15
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Pnl_ProdutosVendidos: TPanel
          Left = 293
          Top = 0
          Width = 691
          Height = 410
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object DBGrid1: TDBGrid
            AlignWithMargins = True
            Left = 8
            Top = 3
            Width = 680
            Height = 404
            Margins.Left = 8
            Align = alClient
            DataSource = DtSrc_Produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
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
                Width = 250
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
        end
        object Pnl_DadosProduto: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 287
          Height = 404
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 311
            Width = 281
            Height = 25
            Margins.Top = 10
            Align = alTop
            Caption = 'Vlr.Total'
            ExplicitWidth = 68
          end
          object Label2: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 234
            Width = 281
            Height = 25
            Margins.Top = 10
            Align = alTop
            Caption = 'Desconto'
            ExplicitWidth = 79
          end
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 157
            Width = 281
            Height = 25
            Margins.Top = 10
            Align = alTop
            Caption = 'Vlr.Unit'#225'rio'
            ExplicitWidth = 96
          end
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 80
            Width = 281
            Height = 25
            Margins.Top = 10
            Align = alTop
            Caption = 'Quantidade'
            ExplicitWidth = 99
          end
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 281
            Height = 25
            Align = alTop
            Caption = 'Cod.Produto'
            ExplicitWidth = 106
          end
          object Edt_VlrTotalProduto: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 342
            Width = 281
            Height = 33
            Align = alTop
            Alignment = taCenter
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 16119285
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object Edt_VlrDesconto: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 265
            Width = 281
            Height = 33
            Align = alTop
            Alignment = taCenter
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 16119285
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object Edt_VlrUnitario: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 188
            Width = 281
            Height = 33
            Align = alTop
            Alignment = taCenter
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 16119285
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object Edt_Qtdade: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 111
            Width = 281
            Height = 33
            Align = alTop
            Alignment = taCenter
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 16119285
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object Edt_CodProduto: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 34
            Width = 281
            Height = 33
            Align = alTop
            Alignment = taCenter
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 16119285
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            Text = '18'
          end
        end
      end
      object Pnl_Rodape: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 638
        Width = 984
        Height = 149
        Margins.Left = 15
        Margins.Right = 15
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Panel2: TPanel
          Left = 586
          Top = 0
          Width = 398
          Height = 149
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object Label22: TLabel
            Left = 0
            Top = 0
            Width = 398
            Height = 25
            Align = alTop
            Alignment = taCenter
            Caption = 'SubTotal'
            ExplicitWidth = 72
          end
          object DBEdit1: TDBEdit
            AlignWithMargins = True
            Left = 15
            Top = 55
            Width = 373
            Height = 64
            Margins.Left = 15
            Margins.Top = 30
            Margins.Right = 10
            Margins.Bottom = 30
            Align = alClient
            BorderStyle = bsNone
            Color = 16119285
            DataField = 'VLR_SUBTOTAL'
            DataSource = DtSrc_Produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -32
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object GridPanel1: TGridPanel
          Left = 0
          Top = 0
          Width = 586
          Height = 149
          Align = alClient
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 25.000000000000000000
            end
            item
              Value = 25.000000000000000000
            end
            item
              Value = 25.000000000000000000
            end
            item
              Value = 25.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Panel3
              Row = 0
            end
            item
              Column = 1
              Control = Panel4
              Row = 0
            end
            item
              Column = 2
              Control = Panel5
              Row = 0
            end
            item
              Column = 3
              Control = Panel6
              Row = 0
            end
            item
              Column = 0
              Control = Panel7
              Row = 1
            end
            item
              Column = 1
              Control = Panel8
              Row = 1
            end
            item
              Column = 2
              Control = Panel9
              Row = 1
            end
            item
              Column = 3
              Control = Panel10
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 1
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 146
            Height = 74
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              Left = 0
              Top = 0
              Width = 146
              Height = 25
              Align = alTop
              Alignment = taCenter
              Caption = 'ESC'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 33
            end
            object Label7: TLabel
              Left = 0
              Top = 25
              Width = 146
              Height = 49
              Align = alClient
              Alignment = taCenter
              Caption = 'Sair'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              WordWrap = True
              ExplicitWidth = 27
              ExplicitHeight = 21
            end
          end
          object Panel4: TPanel
            Left = 146
            Top = 0
            Width = 147
            Height = 74
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label8: TLabel
              Left = 0
              Top = 0
              Width = 147
              Height = 25
              Align = alTop
              Alignment = taCenter
              Caption = 'F1'
              ExplicitWidth = 19
            end
            object Label9: TLabel
              Left = 0
              Top = 25
              Width = 147
              Height = 49
              Align = alClient
              Alignment = taCenter
              Caption = 'Mais Op'#231#245'es'
              WordWrap = True
              ExplicitWidth = 108
              ExplicitHeight = 25
            end
          end
          object Panel5: TPanel
            Left = 293
            Top = 0
            Width = 146
            Height = 74
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Btn_PreVenda1: TLabel
              Left = 0
              Top = 0
              Width = 146
              Height = 25
              Align = alTop
              Alignment = taCenter
              Caption = 'F2'
              OnClick = Btn_PreVenda2Click
              ExplicitWidth = 19
            end
            object Btn_PreVenda2: TLabel
              Left = 0
              Top = 25
              Width = 146
              Height = 49
              Align = alClient
              Alignment = taCenter
              Caption = 'Pr'#233'-Venda'
              WordWrap = True
              OnClick = Btn_PreVenda2Click
              ExplicitWidth = 89
              ExplicitHeight = 25
            end
          end
          object Panel6: TPanel
            Left = 439
            Top = 0
            Width = 147
            Height = 74
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            object Label12: TLabel
              Left = 0
              Top = 0
              Width = 147
              Height = 25
              Align = alTop
              Alignment = taCenter
              Caption = 'F3'
              ExplicitWidth = 19
            end
            object Label13: TLabel
              Left = 0
              Top = 25
              Width = 147
              Height = 49
              Align = alClient
              Alignment = taCenter
              Caption = 'Nova Venda'
              WordWrap = True
              ExplicitWidth = 102
              ExplicitHeight = 25
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 74
            Width = 146
            Height = 75
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            object Label14: TLabel
              Left = 0
              Top = 0
              Width = 146
              Height = 25
              Align = alTop
              Alignment = taCenter
              Caption = 'F4'
              ExplicitWidth = 19
            end
            object Label15: TLabel
              Left = 0
              Top = 25
              Width = 146
              Height = 50
              Align = alClient
              Alignment = taCenter
              Caption = 'Quantidade'
              WordWrap = True
              ExplicitWidth = 99
              ExplicitHeight = 25
            end
          end
          object Panel8: TPanel
            Left = 146
            Top = 74
            Width = 147
            Height = 75
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 5
            object Label16: TLabel
              Left = 0
              Top = 0
              Width = 147
              Height = 25
              Align = alTop
              Alignment = taCenter
              Caption = 'F5'
              OnClick = Label16Click
              ExplicitWidth = 19
            end
            object Label17: TLabel
              Left = 0
              Top = 25
              Width = 147
              Height = 50
              Align = alClient
              Alignment = taCenter
              Caption = 'Fechar Venda'
              WordWrap = True
              ExplicitWidth = 114
              ExplicitHeight = 25
            end
          end
          object Panel9: TPanel
            Left = 293
            Top = 74
            Width = 146
            Height = 75
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 6
            object Label18: TLabel
              Left = 0
              Top = 0
              Width = 146
              Height = 25
              Align = alTop
              Alignment = taCenter
              Caption = 'F6'
              ExplicitWidth = 19
            end
            object Label19: TLabel
              Left = 0
              Top = 25
              Width = 146
              Height = 50
              Align = alClient
              Alignment = taCenter
              Caption = 'Cancelar'
              WordWrap = True
              ExplicitWidth = 74
              ExplicitHeight = 25
            end
          end
          object Panel10: TPanel
            Left = 439
            Top = 74
            Width = 147
            Height = 75
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 7
            object Label20: TLabel
              Left = 0
              Top = 0
              Width = 147
              Height = 25
              Align = alTop
              Alignment = taCenter
              Caption = 'F7'
              ExplicitWidth = 19
            end
            object Label21: TLabel
              Left = 0
              Top = 25
              Width = 147
              Height = 50
              Align = alClient
              Alignment = taCenter
              Caption = 'Consultar Produto'
              WordWrap = True
              ExplicitWidth = 86
            end
          end
        end
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 3
        Width = 984
        Height = 85
        Margins.Left = 15
        Margins.Right = 15
        Align = alTop
        BevelOuter = bvNone
        Color = 6445918
        ParentBackground = False
        TabOrder = 3
      end
      object Pnl_DescricaoProduto: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 153
        Width = 984
        Height = 63
        Margins.Left = 15
        Margins.Right = 15
        Align = alTop
        BevelOuter = bvNone
        Color = 12432569
        ParentBackground = False
        TabOrder = 4
      end
    end
  end
  object DtSrc_Produto: TDataSource
    Left = 114
    Top = 164
  end
end
