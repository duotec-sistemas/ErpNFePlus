object View_ConsultaOrcamento: TView_ConsultaOrcamento
  Left = 0
  Top = 0
  ActiveControl = Edt_Pesquisa
  Caption = 'View_ConsultaOrcamento'
  ClientHeight = 561
  ClientWidth = 915
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_BackGround: TPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 561
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
      Width = 905
      Height = 551
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Pnl_Central: TPanel
        AlignWithMargins = True
        Left = 16
        Top = 157
        Width = 873
        Height = 336
        Margins.Left = 15
        Margins.Right = 15
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBGrd_Consulta: TDBGrid
          Left = 0
          Top = 0
          Width = 873
          Height = 336
          Align = alClient
          BorderStyle = bsNone
          DataSource = DtSrc_Orcamento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGrd_ConsultaDblClick
          OnEnter = DBGrd_ConsultaEnter
          OnExit = DBGrd_ConsultaExit
          OnKeyDown = DBGrd_ConsultaKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'NUM_ORCAMENTO'
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
              FieldName = 'COD_CLIENTE'
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
              FieldName = 'NOME_CLIENTE'
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
              FieldName = 'VLR_ORCAMENTO'
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
              FieldName = 'DT_ORCAMENTO'
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
        Top = 65
        Width = 903
        Height = 89
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label1: TLabel
          Left = 112
          Top = 32
          Width = 114
          Height = 21
          Caption = 'Nome do cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Btn_Pesquisar: TSpeedButton
          Left = 623
          Top = 29
          Width = 32
          Height = 32
          ImageIndex = 11
          Images = DM_Container.ImgLst
          Flat = True
          OnClick = Btn_PesquisarClick
        end
        object Edt_Pesquisa: TEdit
          Left = 264
          Top = 29
          Width = 353
          Height = 29
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = Edt_PesquisaEnter
          OnKeyPress = Edt_PesquisaKeyPress
        end
      end
      object Pnl_Rodape: TPanel
        Left = 1
        Top = 496
        Width = 903
        Height = 54
        Align = alBottom
        TabOrder = 2
        object Lbl_Mensagem: TLabel
          Left = 15
          Top = 16
          Width = 610
          Height = 25
          Alignment = taCenter
          AutoSize = False
          Caption = 'Lbl_Mensagem'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object PraButtonStyle1: TPraButtonStyle
          AlignWithMargins = True
          Left = 622
          Top = 4
          Width = 169
          Height = 46
          Align = alRight
          OnClick = PraButtonStyle1Click
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Brush.Color = 4564776
          BrushDown.Color = 4564776
          BrushFocused.Color = 4564776
          BrushDisabled.Color = 4564776
          FontDown.Charset = ANSI_CHARSET
          FontDown.Color = clWhite
          FontDown.Height = -16
          FontDown.Name = 'Segoe UI Semibold'
          FontDown.Style = [fsBold]
          FontFocused.Charset = ANSI_CHARSET
          FontFocused.Color = clWhite
          FontFocused.Height = -16
          FontFocused.Name = 'Segoe UI Semibold'
          FontFocused.Style = [fsBold]
          FontDisabled.Charset = ANSI_CHARSET
          FontDisabled.Color = clWhite
          FontDisabled.Height = -16
          FontDisabled.Name = 'Segoe UI Semibold'
          FontDisabled.Style = [fsBold]
          Caption = 'Confirma Or'#231'amento'
          TabOrder = 1
          ExplicitLeft = 623
          ExplicitTop = 1
          ExplicitHeight = 52
        end
        object PraButtonStyle2: TPraButtonStyle
          AlignWithMargins = True
          Left = 797
          Top = 4
          Width = 102
          Height = 46
          Align = alRight
          OnClick = PraButtonStyle2Click
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Brush.Color = 12100119
          BrushDown.Color = 4564776
          BrushFocused.Color = 4564776
          BrushDisabled.Color = 4564776
          FontDown.Charset = ANSI_CHARSET
          FontDown.Color = clWhite
          FontDown.Height = -16
          FontDown.Name = 'Segoe UI Semibold'
          FontDown.Style = [fsBold]
          FontFocused.Charset = ANSI_CHARSET
          FontFocused.Color = clWhite
          FontFocused.Height = -16
          FontFocused.Name = 'Segoe UI Semibold'
          FontFocused.Style = [fsBold]
          FontDisabled.Charset = ANSI_CHARSET
          FontDisabled.Color = clWhite
          FontDisabled.Height = -16
          FontDisabled.Name = 'Segoe UI Semibold'
          FontDisabled.Style = [fsBold]
          Caption = 'Sair [ESC]'
          TabOrder = 0
          ExplicitLeft = 800
          ExplicitTop = 1
          ExplicitHeight = 52
        end
      end
      object Pnl_Titulo: TPanel
        Left = 1
        Top = 1
        Width = 903
        Height = 64
        Align = alTop
        Caption = 'CONSULTAR PR'#201'-VENDA'
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
  object DtSrc_Orcamento: TDataSource
    Left = 165
    Top = 242
  end
end
