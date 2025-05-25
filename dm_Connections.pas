unit dm_Connections;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.SqlExpr, Data.DB,
  Data.Win.ADODB; // step 1

type
  TdmConnections = class(TDataModule)
    ConDB: TADOConnection;
    tblBusiness: TADOTable;
    tblVehicle: TADOTable;
    tblDispatch: TADOTable;
    tblDriver: TADOTable;
    dsBus: TDataSource;
    dsVehichle: TDataSource;
    dsDispatch: TDataSource;
    dsDriver: TDataSource;
    qry: TADOQuery;
    procedure DataModuleCreate(Sender: TObject); // step 2
  private
    { Private declarations }
  public
    { Public declarations }    // step 4
    procedure RestoreDatabase; // step 3

  end;

var
  dmConnections: TdmConnections;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmConnections }

procedure TdmConnections.DataModuleCreate(Sender: TObject);
begin
  //
  ConDB.Connected := true;
  qry.Connection := ConDB;
end;

procedure TdmConnections.RestoreDatabase;
var
  bFail: Boolean;
begin

  DeleteFile('PATV2.mdb');
  // CopyFile('PAT.mdb', 'PATV2.mdb', bFail);
end;

end.
