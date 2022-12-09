unit elipt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,data, Grids, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  ArrowCha, ComCtrls, Menus;

  type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit5: TEdit;
    Button5: TButton;
    RadioGroup1: TRadioGroup;
    Button8: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel1: TPanel;
    Label11: TLabel;
    Edit10: TEdit;
    Label12: TLabel;
    Edit11: TEdit;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Edit12: TEdit;
    Label14: TLabel;
    Edit13: TEdit;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Button6: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  mky,mkz:real;
  
implementation
 uses spline, main, napruz, grafik, splash, pereriz;
{$R *.DFM}


procedure TForm3.Button2Click(Sender: TObject);
begin
form_splash.close;
close;
end;

procedure TForm3.Button1Click(Sender: TObject);
var i:integer;
nmin,dmk,del:real;
begin
for i:=1 to km do begin
sdy[i]:=abs(sy2[i]);
sdz[i]:=abs(sz2[i]);
end;
if radiobutton1.Checked=true then begin
mky:=strtofloat(edit10.text);
mkz:=strtofloat(edit11.text);
end
else
begin
edit10.enabled:=true;
edit11.enabled:=true;
mky:=strtofloat(edit10.text);
mkz:=strtofloat(edit11.text);
edit10.enabled:=false;
edit11.enabled:=false;
dmk:=mky;
nmin:=form4.deltay(mky);
mky:=mky+dmk;
del:=form4.deltay(mky);
while abs(nmin-del)>=pohybka do begin
if nmin<del then dmk:=-dmk/2;
nmin:=del;
mky:=mky+dmk;
del:=form4.deltay(mky);
end;
dmk:=mkz;
nmin:=form4.deltaz(mkz);
mkz:=mkz+dmk;
del:=form4.deltaz(mkz);
while abs(nmin-del)>=pohybka do begin
if nmin<del then dmk:=-dmk/2;
nmin:=del;
mkz:=mkz+dmk;
del:=form4.deltaz(mkz);
end;
edit10.text:=floattostrf(mky,fffixed,10,4);
edit11.text:=floattostrf(mkz,fffixed,10,4);
end;
form4.naprugennia;
edit1.text:=floattostrf(sigy,fffixed,10,4);
edit5.text:=floattostrf(sigz,fffixed,10,4);
button6.enabled:=true;
button5.enabled:=true;
button8.enabled:=true;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
vis:=false;
if yb=false then EnterD;
Edit2Change(form3);
form1.show;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
vis:=true;
if zb=false then EnterD;
Edit2Change(form3);
form1.show;
end;


procedure TForm3.FormActivate(Sender: TObject);
var i:integer;
let:boolean;
begin
if (yb=true) and (zb=true) and (km1=km) then begin
let:=true;
for i:=1 to km do
if syx[i]<>szx[i] then let:=false;
if let then
button1.enabled:=true
else button1.enabled:=false;
end
else button1.enabled:=false;
end;


procedure TForm3.Button5Click(Sender: TObject);
begin
form4.show;
end;




procedure TForm3.RadioButton1Click(Sender: TObject);
begin
edit10.enabled:=true;
label11.Enabled:=true;
edit11.enabled:=true;
label12.Enabled:=true;
Edit2Change(form3);
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
edit10.enabled:=false;
label11.Enabled:=false;
edit11.enabled:=false;
label12.Enabled:=false;
Edit2Change(form3);
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
yb:=false;
zb:=false;
end;



procedure TForm3.Edit14Change(Sender: TObject);
begin
yb:=false;
zb:=false;
button1.enabled:=false;
button5.enabled:=false;
button8.enabled:=false;
button6.enabled:=false;
edit1.text:='';
edit5.text:='';
end;


procedure TForm3.Edit2Change(Sender: TObject);
begin
button5.enabled:=false;
button8.enabled:=false;
button6.enabled:=false;
edit1.text:='';
edit5.text:='';
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
form5.show;
end;

end.

