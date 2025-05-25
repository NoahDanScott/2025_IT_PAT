object frmBusiness: TfrmBusiness
  Left = 0
  Top = 0
  Caption = 'frmBusiness'
  ClientHeight = 539
  ClientWidth = 802
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
    Width = 809
    Height = 313
    Caption = 'pnlInfo'
    Color = 6513507
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object lblDispatch: TLabel
      Left = 10
      Top = 17
      Width = 194
      Height = 25
      Caption = 'Table of all Dispatches'
      Color = 6513507
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblDrivers: TLabel
      Left = 537
      Top = 17
      Width = 138
      Height = 25
      Caption = 'Table of Drivers'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVehicles: TLabel
      Left = 537
      Top = 159
      Width = 145
      Height = 25
      Caption = 'Table of Vehicles'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblBusinessID: TLabel
      Left = 272
      Top = 21
      Width = 102
      Height = 21
      Caption = 'lblBusinessID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbDispatch: TDBGrid
      Left = 10
      Top = 48
      Width = 487
      Height = 257
      Align = alCustom
      DataSource = dmConnections.dsDispatch
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object dbDriver: TDBGrid
      Left = 536
      Top = 48
      Width = 257
      Height = 105
      DataSource = dmConnections.dsDriver
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object dbVehicle: TDBGrid
      Left = 536
      Top = 190
      Width = 257
      Height = 115
      DataSource = dmConnections.dsVehichle
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object bitbtnSignOut: TBitBtn
      Left = 744
      Top = 0
      Width = 57
      Height = 24
      Caption = 'Sign Out'
      TabOrder = 3
      OnClick = bitbtnSignOutClick
    end
    object btibtnClose: TBitBtn
      Left = 681
      Top = 0
      Width = 57
      Height = 24
      Caption = 'Close'
      TabOrder = 4
      OnClick = btibtnCloseClick
    end
  end
  object pnlInteract: TPanel
    Left = 0
    Top = 311
    Width = 801
    Height = 226
    Caption = 'pnlInteract'
    Color = clLightgreen
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 60
      Height = 15
      Caption = 'Destination'
    end
    object Label2: TLabel
      Left = 16
      Top = 53
      Width = 32
      Height = 15
      Caption = 'Cargo'
    end
    object lblDriver: TLabel
      Left = 168
      Top = 114
      Width = 31
      Height = 15
      Caption = 'Driver'
    end
    object lblVehicleLicence: TLabel
      Left = 16
      Top = 117
      Width = 77
      Height = 15
      Caption = 'Vehicle licence'
    end
    object memOutput: TMemo
      Left = 480
      Top = 8
      Width = 313
      Height = 209
      ReadOnly = True
      TabOrder = 0
    end
    object bitbtnReport: TBitBtn
      Left = 328
      Top = 148
      Width = 121
      Height = 25
      Caption = 'Dispatch Report'
      TabOrder = 1
      OnClick = bitbtnReportClick
    end
    object bitbtnFileDispatch: TBitBtn
      Left = 328
      Top = 192
      Width = 121
      Height = 25
      Caption = 'File Dispatch Report'
      TabOrder = 2
    end
    object bitbtnCreateNewDispatch: TBitBtn
      Left = 328
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Create New Dispatch'
      TabOrder = 3
    end
    object edtDestination: TEdit
      Left = 16
      Top = 24
      Width = 202
      Height = 23
      TabOrder = 4
      TextHint = 'Type in destination...'
    end
    object edtCargo: TEdit
      Left = 16
      Top = 69
      Width = 202
      Height = 23
      TabOrder = 5
      TextHint = 'Type in cargo being delivered...'
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 138
      Width = 113
      Height = 23
      TabOrder = 6
      Text = 'Select Vehicle'
    end
    object ComboBox2: TComboBox
      Left = 168
      Top = 138
      Width = 121
      Height = 23
      TabOrder = 7
      Text = 'Select Driver'
    end
    object bitbtnDelete: TBitBtn
      Left = 328
      Top = 60
      Width = 121
      Height = 25
      Caption = 'Delete A Dispatch'
      TabOrder = 8
    end
    object bitbtnEdit: TBitBtn
      Left = 328
      Top = 104
      Width = 121
      Height = 25
      Caption = 'Edit Dispatch'
      TabOrder = 9
    end
    object bitbtnAddInfo: TBitBtn
      Left = 16
      Top = 176
      Width = 113
      Height = 33
      Caption = 'Add Business Info'
      TabOrder = 10
    end
  end
end
