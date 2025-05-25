unit u_SignUp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  u_Driver, u_Business, u_Login;

type
  TfrmSignUp = class(TForm)
    edtName: TEdit;
    edtSurname: TEdit;
    pnlSignUp: TPanel;
    imgLogo: TImage;
    cbxDriver: TCheckBox;
    edtPassword: TEdit;
    edtUsername: TEdit;
    edtBusinessName: TEdit;
    cbxBusiness: TCheckBox;
    pnlInfo: TPanel;
    lblName: TLabel;
    lblSurname: TLabel;
    lblUsername: TLabel;
    lblBusinessName: TLabel;
    lblPassword: TLabel;
    lblRole: TLabel;
    btnSignUp: TBitBtn;
    btnLogIn: TBitBtn;
    edtBusinessID: TEdit;
    lblBusinessID: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnSignUpClick(Sender: TObject);
    procedure cbxBusinessClick(Sender: TObject);
    procedure cbxDriverClick(Sender: TObject);
    procedure btnLogInClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;


var
  frmSignUp: TfrmSignUp;

implementation

uses dm_Connections, u_Dispatch, u_Quering;

{$R *.dfm}

procedure TfrmSignUp.btnLogInClick(Sender: TObject);
begin
  frmSignUp.Hide;
  frmLogIn.Show;
end;

procedure TfrmSignUp.btnSignUpClick(Sender: TObject);
var
  sSQL: String;
  bCondition: boolean;
  objDispatch: TQuering;
begin

  //TODO:: add password stuff to database
  if cbxDriver.Checked then
  begin
    bCondition := true;
    objDispatch.NewAccount(bCondition,edtUsername.Text,edtName.Text,edtSurname.Text,edtPassword.Text, strtoint(edtBusinessID.Text));
    frmDriverMap.Show;
    frmSignUp.Hide;
  end
  else
  begin
    bCondition := false;
    objDispatch.NewAccount(bCondition,edtBusinessName.Text,edtName.Text,edtSurname.Text,edtPassword.Text, strtoint(edtBusinessID.Text));
    frmBusiness.Show;
    frmSignUp.Hide;
  end;
  FileCreate('cookie.txt');

end;

procedure TfrmSignUp.cbxBusinessClick(Sender: TObject);
begin
  cbxDriver.Checked := false;

end;

procedure TfrmSignUp.cbxDriverClick(Sender: TObject);
begin
  cbxBusiness.Checked := false;

end;

procedure TfrmSignUp.FormActivate(Sender: TObject);
var
  tUserFile: TextFile;
  sLine: String;
begin
  imgLogo.Picture.LoadFromFile('NavILogo.bmp');
  imgLogo.Center := true;
  imgLogo.Stretch := true;
  cbxDriver.Checked := true;


 { try
    if FileAge('cookie.txt') <> -1 then
    begin
      frmLogIn.Show;
      frmSignUp.Hide;
    end;
  except

  end;}
end;

end.
