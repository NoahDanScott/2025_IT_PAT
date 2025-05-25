object frmLogIn: TfrmLogIn
  Left = 0
  Top = 0
  Caption = 'frmLogIn'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object pnlInfo: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 441
    Caption = 'pnlInfo'
    Color = clLightgreen
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object imgLogo: TImage
      Left = 168
      Top = 7
      Width = 272
      Height = 177
    end
    object pnlInteract: TPanel
      Left = 0
      Top = 190
      Width = 625
      Height = 251
      Caption = 'pnlInteract'
      Color = 6513507
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      object lblUsername: TLabel
        Left = 64
        Top = 30
        Width = 71
        Height = 20
        Caption = 'Username'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPassword: TLabel
        Left = 336
        Top = 30
        Width = 114
        Height = 20
        Caption = 'Driver Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBusinessName: TLabel
        Left = 64
        Top = 102
        Width = 107
        Height = 20
        Caption = 'Business Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBusinessPassword: TLabel
        Left = 336
        Top = 102
        Width = 132
        Height = 20
        Caption = 'Business Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtUsername: TEdit
        Left = 64
        Top = 56
        Width = 209
        Height = 23
        TabOrder = 0
      end
      object edtPassword: TEdit
        Left = 336
        Top = 56
        Width = 209
        Height = 23
        TabOrder = 1
      end
      object edtBusinessName: TEdit
        Left = 64
        Top = 128
        Width = 209
        Height = 23
        TabOrder = 2
      end
      object edtBusinessPassword: TEdit
        Left = 336
        Top = 128
        Width = 209
        Height = 23
        TabOrder = 3
      end
      object bitbtnLogin: TBitBtn
        Left = 470
        Top = 192
        Width = 75
        Height = 25
        Caption = 'Log In'
        TabOrder = 4
        OnClick = bitbtnLoginClick
      end
      object cbxDriver: TCheckBox
        Left = 64
        Top = 184
        Width = 97
        Height = 33
        Caption = 'Driver'
        TabOrder = 5
      end
      object cbxBusiness: TCheckBox
        Left = 167
        Top = 184
        Width = 97
        Height = 33
        Caption = 'Business'
        TabOrder = 6
      end
    end
  end
end
