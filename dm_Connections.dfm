object dmConnections: TdmConnections
  OnCreate = DataModuleCreate
  Height = 556
  Width = 766
  object ConDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\nscott\Doc' +
      'uments\Embarcadero\Studio\Projects\Win32\Debug\dbPATV2.mdb;Mode=' +
      'ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 48
  end
  object tblBusiness: TADOTable
    Connection = ConDB
    CursorType = ctStatic
    TableName = 'Business'
    Left = 32
    Top = 272
  end
  object tblVehicle: TADOTable
    Connection = ConDB
    CursorType = ctStatic
    TableName = 'Vehicle'
    Left = 24
    Top = 192
  end
  object tblDispatch: TADOTable
    Connection = ConDB
    CursorType = ctStatic
    TableName = 'Dispatch'
    Left = 24
    Top = 344
  end
  object tblDriver: TADOTable
    Connection = ConDB
    CursorType = ctStatic
    TableName = 'Driver'
    Left = 40
    Top = 128
  end
  object dsBus: TDataSource
    DataSet = tblBusiness
    Left = 120
    Top = 280
  end
  object dsVehichle: TDataSource
    DataSet = tblVehicle
    Left = 144
    Top = 200
  end
  object dsDispatch: TDataSource
    DataSet = tblDispatch
    Left = 128
    Top = 352
  end
  object dsDriver: TDataSource
    DataSet = tblDriver
    Left = 152
    Top = 128
  end
  object qry: TADOQuery
    Connection = ConDB
    Parameters = <>
    Left = 248
    Top = 120
  end
end
