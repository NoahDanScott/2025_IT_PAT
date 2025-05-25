unit u_Driver;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmDriverMap = class(TForm)
    pnlInfo: TPanel;
    edtDestination: TEdit;
    btnArrival: TButton;
    btnDeparture: TButton;
    pnlMap: TPanel;
    edtUniqueDispatchCode: TEdit;
    cbxActivate: TCheckBox;
    lblDestination: TLabel;
    lblDispatchCode: TLabel;
    imgTempMap: TImage;
    tTimeStamp: TTimer;
    lblCurrentLocation: TLabel;
    edtCurrentLocation: TEdit;
    btnSignOut: TBitBtn;
    procedure btnSignOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDriverMap: TfrmDriverMap;

implementation

{$R *.dfm}

uses u_SignUp;

procedure TfrmDriverMap.btnSignOutClick(Sender: TObject);
begin
frmSignUp.Show;
if FileExists('cookie.txt') then
begin
Deletefile('cokie.txt');
end;
frmDriverMap.Close;

end;

end.
