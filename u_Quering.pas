unit u_Quering;

interface

uses sysutils, math;

type

  TQuering = class

  private

  public

    function NewAccount(bCondition: boolean; BorD_username, Name, Surname,
      Password: string; ID: Integer): boolean;
    function Login(Password, Username: string; bCondition: boolean): boolean;

    Procedure SetDtoB_Relation();
    procedure SetVtoB_Relation();

  end;

implementation

uses dm_Connections, Hashing;

{ TQuering }

function TQuering.Login(Password, Username: string;
  bCondition: boolean): boolean;
var
  objHash: THash;
begin
  // how to check which password is related to
  objHash.GeneratingHashValues(Password);
  dmConnections.qry.SQL.Clear;
  if bCondition then
  begin
    dmConnections.qry.SQL.Add
      ('SELECT Count(*) FROM Driver Where [Username] = :Username AND [Password] = :Password;');

    dmConnections.qry.Parameters.ParamByName('Username').Value := Username;
    dmConnections.qry.Parameters.ParamByName('Password').Value := objHash.Compression;

  end
  else
  begin
    dmConnections.qry.SQL.Add
      ('SELECT Count(*) FROM Business Where [Username] = :Username AND [Password] = :Password;');

    dmConnections.qry.Parameters.ParamByName('Username').Value := Username;
    dmConnections.qry.Parameters.ParamByName('Password').Value := objHash.Compression;
  end;

  dmConnections.qry.Open;

end;

function TQuering.NewAccount(bCondition: boolean; BorD_username, Name, Surname,
  Password: string; ID: Integer): boolean;
var
  objHash: THash;
begin
  // Need a condition to determine which type of account is being created
  // Call Salting and Hashing functions?
  // Need previous comment for Password

  if bCondition then
  begin
    dmConnections.qry.SQL.Clear;
    dmConnections.qry.SQL.Add
      ('Insert into Business ([Business_Name], [Password]) Values (:Name, :Password);');
    dmConnections.qry.Parameters.ParamByName('Name').Value := BorD_username;

    objHash.GeneratingHashValues(Password);

    dmConnections.qry.Parameters.ParamByName('Password').Value :=
      objHash.Compression;
    dmConnections.qry.ExecSQL;
  end
  else
  begin
    dmConnections.qry.SQL.Clear;
    dmConnections.qry.SQL.Add
      ('Insert into Driver ([Username], [Business_ID], [Driver_Name], [Driver_Surname],[Password]) Values (:Name, :ID, :FName, :Surname, :Password);');
    dmConnections.qry.Parameters.ParamByName('Name').Value := BorD_username;
    dmConnections.qry.Parameters.ParamByName('ID').Value := ID;
    dmConnections.qry.Parameters.ParamByName('FName').Value := Name;
    dmConnections.qry.Parameters.ParamByName('Surname').Value := Surname;
    objHash.GeneratingHashValues(Password);

    dmConnections.qry.Parameters.ParamByName('Password').Value :=
      objHash.Compression;

    dmConnections.qry.ExecSQL;
  end;
end;

procedure TQuering.SetDtoB_Relation;
begin
  //
  dmConnections.qry.SQL.Clear;
  dmConnections.qry.SQL.Add
    ('Select Driver.Driver_Name, Driver.Driver_Surname FROM Driver, Business ');
  dmConnections.qry.SQL.Add('WHERE Business.Business_ID = Driver.Business_ID');
  dmConnections.qry.Open;

end;

procedure TQuering.SetVtoB_Relation;
begin
  // Vehicle displayed based on which business it belongs to
  dmConnections.qry.SQL.Clear;
  dmConnections.qry.SQL.Add
    ('Select Vehicle.Vehicle_Licence, Vehicle.Class, Vehicle.Weight FROM Business, Vehicle ');
  dmConnections.qry.SQL.Add('WHERE Business.Business_ID = Vehicle.ID');
  dmConnections.qry.Open;
end;

end.
