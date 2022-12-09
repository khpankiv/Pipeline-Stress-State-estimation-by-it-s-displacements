unit pereriz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, TeEngine, Series, ArrowCha, ExtCtrls, TeeProcs, Chart, ComCtrls;

type
  TForm5 = class(TForm)
    Label10: TLabel;
    Label15: TLabel;
    Edit6: TEdit;
    TrackBar1: TTrackBar;
    Chart1: TChart;
    Series1: TArrowSeries;
    Series2: TArrowSeries;
    Button2: TButton;
    Button1: TButton;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses napruz,data,elipt;

{$R *.DFM}

procedure TForm5.Button2Click(Sender: TObject);
begin
close;
end;


procedure TForm5.FormActivate(Sender: TObject);
var i,k:integer;
kky,kkz,ay,by,az,bz,y,z,fi:real;
y1,z1,y0,z0,sigmay,sigmaz,yk,zk,y0k,z0k:real;
begin
trackbar1.Max:=km;
series1.Clear;
series2.clear;
k:=trackbar1.Position;
edit6.text:=floattostrf(k*dx,fffixed,10,toc);
k:=k+1;
y1:=sy1[k];
sigmay:=sdy[k]*mky;
//sigmay:=0;
z1:=sz1[k];
sigmaz:=sdz[k]*mkz;
//sigmaz:=0;
kky:=form4.findky(sigmay);
kkz:=form4.findkz(sigmaz);
ay:=(7*kky*kky+1)/(8*kky);
by:=(1-kky*kky)/(8*kky);
az:=(7*kkz*kkz+1)/(8*kkz);
bz:=(1-kkz*kkz)/(8*kkz);
for i:=0 to m do begin
fi:=i*df;
//y:=(d+sigmay)/(sqrt(1+y1*y1))*(ay*cos(fi)-by*cos(3*fi))+(d+sigmay)*((ay+2*by)*cos(fi)+by*cos(3*fi))-d*cos(fi);
//z:=(d+sigmaz)/(sqrt(1+z1*z1))*(az*sin(fi)+bz*sin(3*fi))+(d+sigmaz)*((az+2*bz)*sin(fi)-bz*cos(3*fi))-d*sin(fi);
y:=(d+sigmay)/(sqrt(1+y1*y1))*(ay*cos(fi)-by*cos(3*fi))+(d+sigmaz)*((az+2*bz)*cos(fi)+bz*cos(3*fi))-d*cos(fi);
z:=(d+sigmaz)/(sqrt(1+z1*z1))*(az*sin(fi)+bz*sin(3*fi))+(d+sigmay)*((ay+2*by)*sin(fi)-by*cos(3*fi))-d*sin(fi);
yk:=d*cos(fi);
zk:=d*sin(fi);
if i<>0 then begin
series1.AddArrow(y0,z0,y,z,'',clred);
series2.AddArrow(y0k,z0k,yk,zk,'',clgreen);
end;
y0:=y;
z0:=z;
y0k:=yk;
z0k:=zk;
end;
end;

procedure TForm5.Edit6Exit(Sender: TObject);
var k:real;
begin
k:=strtofloat(edit6.text);
trackbar1.Position:=round(k/dx);
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
chart1.Print;
end;

end.
