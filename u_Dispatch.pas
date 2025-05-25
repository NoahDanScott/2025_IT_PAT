unit u_Dispatch;

interface

uses sysutils, vcl.dialogs;

type
  TDispatch = class

  private
    fDriver: string;
    fVehicle: String;
    fDestination: String;
    fCurrentLoaction: String;
    fArrived, fDeparted: Boolean;
    fArrival: TDateTime;
    fDeparture: TDateTime;
    sSql: String;

  public
    Constructor Create(sDriver, sVehicle, sLocation: String;
      iBusinessID: INteger)overload;
    function ToString: string;
    function ToFile: string;
    
    function GetDriver: string;
    function GetDestination: string;
    function GetVehicle: String;
    function GetArrival: TDateTime;
    function GetDeparture: TDateTime;
    function GetCompletness: Boolean;
    function CalculateDistance(sCurrentLocation: String): Real;

    procedure SetArrival(tArrival: TDateTime);
    procedure SetDeparture(tDeparture: TDateTime);
    procedure SetCompletness(bCondition: Boolean);

  end;

implementation

{ TDispatch }
uses dm_Connections;

function TDispatch.CalculateDistance(sCurrentLocation: String): Real;
begin
  // Haversine Formula

end;

constructor TDispatch.Create(sDriver, sVehicle, sLocation: String;
  iBusinessID: INteger);
begin
  Self.fDriver := sDriver;
  Self.fVehicle := sVehicle;
  Self.fDestination := sLocation;

  Self.fArrived := false;
  Self.fDeparted := false;

end;

function TDispatch.GetArrival: TDateTime;
begin
  // Retrieves from DRIVER FORM
  Self.fArrived := true;
  // Result :=
end;

function TDispatch.GetCompletness: Boolean;
begin
  // Retrieves from DRIVER FORM
  // Based on condition
  // When departure is clicked
  // Will return an error if Arrival information has not been added yet
  if (Self.fArrived) AND (Self.fDeparted) then
  begin

  end;
end;

function TDispatch.GetDeparture: TDateTime;
begin
  // Retrieves Departure from DRIVER FORM
  // Will return an error if Arrival information has not been added yet
  if Self.fArrived then
  begin
    // Result :=
    Self.fDeparted := true;
  end;

end;

function TDispatch.GetDestination: string;
begin
  // Retrieves Destination information from DRIVER FORM
  Result := Self.fDestination;
end;

function TDispatch.GetDriver: string;
begin
  // Retrieves driver information from database
  Result := Self.fDriver;
end;

function TDispatch.GetVehicle: String;
begin
  // Retrieves vehicle information from database
  Result := Self.fVehicle;

end;

procedure TDispatch.SetArrival(tArrival: TDateTime);
begin
  // Set time to Arrival in database
  sSql := ('INSERT INTO Dispatch (Arrival) Values (' +
    datetostr(tArrival) + ');');
  dmConnections.qry.SQL.Clear;
  dmConnections.qry.SQL.Add(sSql);
  dmConnections.qry.open;

end;

procedure TDispatch.SetCompletness(bCondition: Boolean);
begin
  // Set Dispatch to completed in database

end;

procedure TDispatch.SetDeparture(tDeparture: TDateTime);
begin
  // Set time to Departure in database
  sSql := ('INSERT INTO Dispatch (Departure) Values (#' +
    datetostr(tDeparture) + '#);');
  dmConnections.qry.SQL.Clear;
  dmConnections.qry.SQL.Add(sSql);
  dmConnections.qry.open;
end;

function TDispatch.ToFile: string;
begin
  // Once btnReport is selected
  // Retrieves condition whether if all reports are needed OR specific dispatch
  // Puts ToString into TEXTFILE

end;

function TDispatch.ToString: string;
begin
  Result := '';
end;

end.
