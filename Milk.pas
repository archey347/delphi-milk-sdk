unit Milk;

interface

uses
  System.SysUtils, System.Classes;

type
  TMilk = class(TComponent)
  private
    FConnected : boolean;
    FUsername : String;
    FPassword : String;


    { Private declarations }
  protected
    procedure SetConnected(Value: boolean);
    { Protected declarations }
  public
    procedure Connect();
    procedure Disconnect();

    property Connected: boolean read FConnected write FConnected;
    property Username: string read FUsername write FUsername;
    property Password: string read FPassword write FPassword;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Milk', [TMilk]);
end;

procedure TMilk.connect();
begin
  // Connect
end;

procedure TMilk.disconnect();
begin
  // Disconnect
end;

procedure TMilk.SetConnected(Value: Boolean);
begin
  if Value then
    Connect()
  else
    Disconnect();
end;

end.
