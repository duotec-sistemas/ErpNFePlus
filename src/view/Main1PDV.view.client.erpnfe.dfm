object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 827
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_BackGround: TPanel
    Left = 0
    Top = 0
    Width = 1094
    Height = 827
    Align = alClient
    BevelOuter = bvNone
    Color = 14866643
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -389
    ExplicitTop = -501
    ExplicitWidth = 1024
    ExplicitHeight = 800
    object Pnl_BackGroundInterno: TPanel
      Left = 5
      Top = 5
      Width = 1084
      Height = 817
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 1014
      ExplicitHeight = 790
      object Pnl_MensagemOperador: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 71
        Width = 1054
        Height = 53
        Margins.Left = 15
        Margins.Right = 15
        Align = alTop
        BevelOuter = bvNone
        Color = 9538183
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = 94
        ExplicitWidth = 984
      end
      object Pnl_Central: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 130
        Width = 1054
        Height = 559
        Margins.Left = 15
        Margins.Right = 15
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 1038
        ExplicitHeight = 490
        object Pnl_ProdutosVendidos: TPanel
          Left = 140
          Top = 0
          Width = 914
          Height = 559
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 293
          ExplicitWidth = 691
          ExplicitHeight = 410
          object DBGrid1: TDBGrid
            AlignWithMargins = True
            Left = 8
            Top = 3
            Width = 903
            Height = 553
            Margins.Left = 8
            Align = alClient
            BorderStyle = bsNone
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
          Width = 134
          Height = 553
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitHeight = 514
          object GridPanel1: TGridPanel
            Left = 0
            Top = 0
            Width = 134
            Height = 553
            Align = alClient
            BevelOuter = bvNone
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
              end>
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
            TabOrder = 0
            ExplicitWidth = 235
            ExplicitHeight = 514
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 134
              Height = 69
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitWidth = 320
              ExplicitHeight = 30
              object Label6: TLabel
                Left = 0
                Top = 0
                Width = 134
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
                ExplicitTop = -3
                ExplicitWidth = 238
              end
              object Label7: TLabel
                Left = 0
                Top = 25
                Width = 134
                Height = 44
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
              Left = 0
              Top = 69
              Width = 134
              Height = 69
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitLeft = 320
              ExplicitTop = 0
              ExplicitWidth = 320
              ExplicitHeight = 30
              object Label8: TLabel
                Left = 0
                Top = 0
                Width = 134
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'F1'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 21
              end
              object Label9: TLabel
                Left = 0
                Top = 25
                Width = 134
                Height = 44
                Align = alClient
                Alignment = taCenter
                Caption = 'Mais Op'#231#245'es'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                ExplicitWidth = 89
                ExplicitHeight = 21
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 138
              Width = 134
              Height = 69
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitTop = 30
              ExplicitWidth = 320
              ExplicitHeight = 30
              object Btn_PreVenda1: TLabel
                Left = 0
                Top = 0
                Width = 134
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'F2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 21
              end
              object Btn_PreVenda2: TLabel
                Left = 0
                Top = 25
                Width = 134
                Height = 44
                Align = alClient
                Alignment = taCenter
                Caption = 'Pr'#233'-Venda'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                ExplicitWidth = 72
                ExplicitHeight = 21
              end
            end
            object Panel6: TPanel
              Left = 0
              Top = 207
              Width = 134
              Height = 70
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 3
              ExplicitLeft = 320
              ExplicitTop = 30
              ExplicitWidth = 320
              ExplicitHeight = 30
              object Label12: TLabel
                Left = 0
                Top = 0
                Width = 134
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'F3'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 21
              end
              object Label13: TLabel
                Left = 0
                Top = 25
                Width = 134
                Height = 45
                Align = alClient
                Alignment = taCenter
                Caption = 'Nova Venda'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                ExplicitWidth = 84
                ExplicitHeight = 21
              end
            end
            object Panel7: TPanel
              Left = 0
              Top = 277
              Width = 134
              Height = 69
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 4
              ExplicitTop = 60
              ExplicitWidth = 320
              ExplicitHeight = 30
              object Label14: TLabel
                Left = 0
                Top = 0
                Width = 134
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'F4'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 21
              end
              object Label15: TLabel
                Left = 0
                Top = 25
                Width = 134
                Height = 44
                Align = alClient
                Alignment = taCenter
                Caption = 'Quantidade'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                ExplicitWidth = 81
                ExplicitHeight = 21
              end
            end
            object Panel8: TPanel
              Left = 0
              Top = 346
              Width = 134
              Height = 69
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 5
              ExplicitLeft = 320
              ExplicitTop = 60
              ExplicitWidth = 320
              ExplicitHeight = 30
              object Label16: TLabel
                Left = 0
                Top = 0
                Width = 134
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'F5'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 21
              end
              object Label17: TLabel
                Left = 0
                Top = 25
                Width = 134
                Height = 44
                Align = alClient
                Alignment = taCenter
                Caption = 'Fechar Venda'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                ExplicitWidth = 93
                ExplicitHeight = 21
              end
            end
            object Panel9: TPanel
              Left = 0
              Top = 415
              Width = 134
              Height = 69
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 6
              ExplicitTop = 209
              ExplicitWidth = 320
              ExplicitHeight = 30
              object Label18: TLabel
                Left = 0
                Top = 0
                Width = 134
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'F6'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 21
              end
              object Label19: TLabel
                Left = 0
                Top = 25
                Width = 134
                Height = 44
                Align = alClient
                Alignment = taCenter
                Caption = 'Cancelar'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                ExplicitWidth = 60
                ExplicitHeight = 21
              end
            end
            object Panel10: TPanel
              Left = 0
              Top = 484
              Width = 134
              Height = 69
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 7
              ExplicitLeft = 320
              ExplicitTop = 209
              ExplicitWidth = 320
              ExplicitHeight = 30
              object Label20: TLabel
                Left = 0
                Top = 0
                Width = 134
                Height = 25
                Align = alTop
                Alignment = taCenter
                Caption = 'F7'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 21
              end
              object Label21: TLabel
                Left = 0
                Top = 25
                Width = 134
                Height = 44
                Align = alClient
                Alignment = taCenter
                Caption = 'Consultar Produto'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                WordWrap = True
                ExplicitWidth = 127
                ExplicitHeight = 21
              end
            end
          end
        end
      end
      object Pnl_Rodape: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 695
        Width = 1054
        Height = 119
        Margins.Left = 15
        Margins.Right = 15
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        ExplicitTop = 656
        ExplicitWidth = 1038
        object Panel2: TPanel
          Left = 656
          Top = 0
          Width = 398
          Height = 119
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 586
          ExplicitHeight = 149
          object Label22: TLabel
            Left = 0
            Top = 0
            Width = 398
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = 'SubTotal'
            ExplicitWidth = 42
          end
          object DBEdit1: TDBEdit
            AlignWithMargins = True
            Left = 15
            Top = 43
            Width = 373
            Height = 46
            Margins.Left = 15
            Margins.Top = 30
            Margins.Right = 10
            Margins.Bottom = 30
            Align = alClient
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
            ExplicitHeight = 150
          end
        end
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 15
        Top = 3
        Width = 1054
        Height = 62
        Margins.Left = 15
        Margins.Right = 15
        Align = alTop
        BevelOuter = bvNone
        Color = 6445918
        ParentBackground = False
        TabOrder = 3
        ExplicitWidth = 1038
      end
    end
  end
end
