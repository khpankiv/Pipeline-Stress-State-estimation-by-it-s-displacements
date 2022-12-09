unit grafik;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TeEngine, Series, StdCtrls, ExtCtrls, TeeProcs, Chart, Menus;

type
  TForm6 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Series1: TLineSeries;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Series2: TLineSeries;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses napruz;

{$R *.DFM}

procedure TForm6.Button1Click(Sender: TObject);
begin
close;
end;


procedure TForm6.Button2Click(Sender: TObject);
var m,mm,dm,dely,delz:real;
begin
series1.Clear;
series2.Clear;
m:=strtofloat(edit1.text);
mm:=strtofloat(edit2.text);
dm:=(mm-m)/10;
while m<=mm do begin
dely:=form4.deltay(m);
delz:=form4.deltaz(m);
series1.addxy(m,dely);
series2.addxy(m,delz);
m:=m+dm;
end;
button3.enabled:=true;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
chart1.Print;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
series1.clear;
series2.clear;
button3.enabled:=false;
end;

end.
