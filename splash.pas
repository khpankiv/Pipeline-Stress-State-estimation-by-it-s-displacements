unit splash; {ввідне вікно програми}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg, StdCtrls;

type
  TForm_splash = class(TForm)
    z: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_splash: TForm_splash;

implementation

uses elipt;

{$R *.DFM}

procedure TForm_splash.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled:=false;
Form_splash.hide;
Form3.Show;  

end;

end.
