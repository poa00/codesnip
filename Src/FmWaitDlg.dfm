inherited WaitDlg: TWaitDlg
  Left = 557
  Top = 335
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'WaitDlg'
  ClientHeight = 151
  ClientWidth = 294
  Font.Height = -37
  OnClose = FormClose
  ExplicitWidth = 294
  ExplicitHeight = 151
  PixelsPerInch = 168
  TextHeight = 50
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 294
    Height = 151
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object lblCaption: TLabel
      Left = 7
      Top = 44
      Width = 98
      Height = 23
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Alignment = taCenter
      Caption = 'lblCaption'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
end
