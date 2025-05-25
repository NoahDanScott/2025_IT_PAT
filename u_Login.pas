unit u_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLogIn = class(TForm)
    pnlInfo: TPanel;
    pnlInteract: TPanel;
    imgLogo: TImage;
    edtUsername: TEdit;
    edtPassword: TEdit;
    edtBusinessName: TEdit;
    edtBusinessPassword: TEdit;
    lblUsername: TLabel;
    lblPassword: TLabel;
    lblBusinessName: TLabel;
    lblBusinessPassword: TLabel;
    bitbtnLogin: TBitBtn;
    cbxDriver: TCheckBox;
    cbxBusiness: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure bitbtnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogIn: TfrmLogIn;

implementation

{$R *.dfm}

uses u_Driver, u_Business, dm_Connections;


procedure TfrmLogIn.bitbtnLoginClick(Sender: TObject);
begin
  if FileAge('cookie.txt') <> -1 then
  begin
    DeleteFile('cookie.txt');
    FileCreate('cookie.txt');
  end;
  if cbxDriver.Checked then
  begin


    frmDriverMap.Show;
    frmLogin.Close;
  end
  else
  begin


    frmBusiness.Show;
    frmLogin.Close;
  end;


end;

procedure TfrmLogIn.FormActivate(Sender: TObject);
begin
  // load image

  imgLogo.Picture.LoadFromFile('NavILogo.bmp');
  imgLogo.Center := true;
  imgLogo.Stretch := true;

  cbxDriver.Checked := true;
end;

end.
