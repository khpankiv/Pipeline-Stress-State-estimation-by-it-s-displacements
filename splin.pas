unit splin;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, TeEngine, Series, TeeProcs, Chart,Messages, results, data,
  ComCtrls, Grids;

type
  Tsgraph = class(TForm)
    Button1: TButton;
    Button2: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Chart4: TChart;
    LineSeries5: TLineSeries;
    LineSeries6: TLineSeries;
    PointSeries1: TPointSeries;
    CheckBox4: TCheckBox;
    Chart1: TChart;
    LineSeries7: TLineSeries;
    LineSeries8: TLineSeries;
    CheckBox1: TCheckBox;
    Chart2: TChart;
    LineSeries1: TLineSeries;
    LineSeries2: TLineSeries;
    CheckBox2: TCheckBox;
    TabSheet4: TTabSheet;
    Chart3: TChart;
    LineSeries3: TLineSeries;
    LineSeries4: TLineSeries;
    CheckBox3: TCheckBox;
    Series1: TLineSeries;
    StringGrid3: TStringGrid;
    Button3: TButton;

    procedure grafics;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  end;

var
  sgraph: Tsgraph;
implementation
uses  main, spline, Execute;

{$R *.DFM}


procedure Tsgraph.grafics;
var
 i:integer;
begin
stringgrid3.ColCount:=nm+2;
stringgrid3.Cells[0,0]:='X, ì';
stringgrid3.Cells[0,1]:='P';
for i:=1 to nm+1 do begin
stringgrid3.Cells[i,0]:=floattostrf(x[i],fffixed,10,toc);
stringgrid3.Cells[i,1]:=floattostrf(p[i],fffixed,10,toc);
end;

LineSeries5.clear;
LineSeries6.clear;
PointSeries1.clear;
LineSeries7.clear;
LineSeries8.clear;
LineSeries1.clear;
LineSeries2.clear;
LineSeries3.clear;
LineSeries4.clear;
Series1.Clear;

for i:=1 to nm+1 do    {measurement points}
PointSeries1.addxy(x[i],f[i]);

if form1.CheckBox4.Checked=true then begin  {reference stresses}
for i:=1 to nm+1 do
Series1.addxy(x[i],eta[i]);
end;

if sp1=true then    {Spline}
for i:=1 to km do
begin
LineSeries5.Addxy(zx[i],zg[i]);
LineSeries7.Addxy(zx[i],zg1[i]);
LineSeries1.Addxy(zx[i],zg2[i]);
LineSeries3.Addxy(zx[i],zig[i]);
end;

if sp2=true then       {smoothing spline}
for i:=1 to km do
begin
LineSeries6.Addxy(sx[i],sg[i]);
LineSeries8.Addxy(sx[i],sg1[i]);
LineSeries2.Addxy(sx[i],sg2[i]);
LineSeries4.Addxy(sx[i],sig[i]);
end;
end;


procedure Tsgraph.Button2Click(Sender: TObject);
var i:integer;
begin
for i:=1 to nm+1 do
form1.stringgrid2.cells[i,1]:=stringgrid3.cells[i,1];
Enter_P;
less:=false;
count;
grafics;
end;

procedure Tsgraph.Button1Click(Sender: TObject);
begin
if checkbox4.Checked then chart4.Print;
if checkbox1.Checked then chart1.Print;
if checkbox2.Checked then chart2.Print;
if checkbox3.Checked then chart3.Print;
end;

procedure Tsgraph.FormActivate(Sender: TObject);
begin
grafics;
end;

procedure Tsgraph.Button3Click(Sender: TObject);
begin
close;
end;

end.

