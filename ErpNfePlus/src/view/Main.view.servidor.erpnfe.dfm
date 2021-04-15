object Frm_Main: TFrm_Main
  Left = 0
  Top = 0
  Caption = 'Frm_Main'
  ClientHeight = 201
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbStatus: TLabel
    Left = 8
    Top = 7
    Width = 70
    Height = 13
    Caption = 'Status: Offline'
  end
  object lbPorta: TLabel
    Left = 8
    Top = 26
    Width = 24
    Height = 13
    Caption = 'Port:'
  end
  object btnStop: TBitBtn
    Left = 127
    Top = 45
    Width = 113
    Height = 25
    Caption = 'Stop'
    Enabled = False
    TabOrder = 0
    OnClick = btnStopClick
  end
  object btnStart: TBitBtn
    Left = 8
    Top = 45
    Width = 113
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = btnStartClick
  end
  object Button1: TButton
    Left = 104
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end
