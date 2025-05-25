object frmSignUp: TfrmSignUp
  Left = 0
  Top = 0
  Caption = 'frmSignUp'
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
  object pnlSignUp: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 441
    Color = clLightgreen
    ParentBackground = False
    TabOrder = 0
    object imgLogo: TImage
      Left = 160
      Top = 7
      Width = 272
      Height = 177
    end
    object pnlInfo: TPanel
      Left = 0
      Top = 190
      Width = 625
      Height = 251
      Color = 6513507
      ParentBackground = False
      TabOrder = 7
      object lblName: TLabel
        Left = 104
        Top = 5
        Width = 42
        Height = 20
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSurname: TLabel
        Left = 427
        Top = 5
        Width = 62
        Height = 20
        Caption = 'Surname'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblUsername: TLabel
        Left = 104
        Top = 54
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
      object lblBusinessName: TLabel
        Left = 104
        Top = 109
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
      object lblPassword: TLabel
        Left = 422
        Top = 109
        Width = 67
        Height = 20
        Caption = 'Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRole: TLabel
        Left = 259
        Top = 160
        Width = 76
        Height = 20
        Caption = 'Select Role'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBusinessID: TLabel
        Left = 408
        Top = 54
        Width = 81
        Height = 20
        Caption = 'Business ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnSignUp: TBitBtn
        Left = 206
        Top = 216
        Width = 75
        Height = 25
        Caption = 'Sign Up'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnSignUpClick
      end
      object btnLogIn: TBitBtn
        Left = 311
        Top = 216
        Width = 75
        Height = 25
        Caption = 'Log In'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnLogInClick
      end
      object edtBusinessID: TEdit
        Left = 368
        Top = 80
        Width = 121
        Height = 23
        TabOrder = 2
      end
    end
    object cbxBusiness: TCheckBox
      Left = 311
      Top = 376
      Width = 97
      Height = 17
      Caption = 'Business'
      Color = clWhite
      ParentColor = False
      TabOrder = 6
      OnClick = cbxBusinessClick
    end
    object cbxDriver: TCheckBox
      Left = 184
      Top = 376
      Width = 97
      Height = 17
      Caption = 'Driver'
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      OnClick = cbxDriverClick
    end
    object edtBusinessName: TEdit
      Left = 104
      Top = 320
      Width = 177
      Height = 23
      TabOrder = 5
    end
    object edtName: TEdit
      Left = 104
      Top = 216
      Width = 177
      Height = 23
      TabOrder = 2
    end
    object edtPassword: TEdit
      Left = 311
      Top = 320
      Width = 178
      Height = 23
      TabOrder = 3
    end
    object edtSurname: TEdit
      Left = 311
      Top = 216
      Width = 178
      Height = 23
      TabOrder = 1
    end
    object edtUsername: TEdit
      Left = 104
      Top = 270
      Width = 177
      Height = 23
      TabOrder = 4
    end
  end
end
