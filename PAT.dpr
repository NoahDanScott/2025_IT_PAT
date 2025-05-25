program PAT;

uses
  Vcl.Forms,
  u_SignUp in 'u_SignUp.pas' {frmSignUp},
  u_Driver in 'u_Driver.pas' {frmDriverMap},
  u_Business in 'u_Business.pas' {frmBusiness},
  u_Login in 'u_Login.pas' {frmLogIn},
  u_Dispatch in 'u_Dispatch.pas',
  dm_Connections in 'dm_Connections.pas' {dmConnections: TDataModule},
  u_Quering in 'u_Quering.pas',
  Hashing in 'Hashing.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSignUp, frmSignUp);
  Application.CreateForm(TfrmDriverMap, frmDriverMap);
  Application.CreateForm(TfrmBusiness, frmBusiness);
  Application.CreateForm(TfrmLogIn, frmLogIn);
  Application.CreateForm(TdmConnections, dmConnections);
  Application.Run;
end.
