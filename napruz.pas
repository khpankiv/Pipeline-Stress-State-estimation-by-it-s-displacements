unit napruz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, ComCtrls,data;

type
  TForm4 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button1: TButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    StringGrid6: TStringGrid;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    PageControl4: TPageControl;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    PageControl5: TPageControl;
    TabSheet19: TTabSheet;
    TabSheet20: TTabSheet;
    TabSheet21: TTabSheet;
    TabSheet22: TTabSheet;
    PageControl6: TPageControl;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    TabSheet25: TTabSheet;
    TabSheet26: TTabSheet;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    StringGrid7: TStringGrid;
    StringGrid8: TStringGrid;
    StringGrid9: TStringGrid;
    StringGrid10: TStringGrid;
    StringGrid11: TStringGrid;
    StringGrid12: TStringGrid;
    StringGrid13: TStringGrid;
    StringGrid14: TStringGrid;
    StringGrid15: TStringGrid;
    StringGrid16: TStringGrid;
    StringGrid17: TStringGrid;
    StringGrid18: TStringGrid;
    StringGrid19: TStringGrid;
    StringGrid20: TStringGrid;
    StringGrid21: TStringGrid;
  function findky(sigma:real):real;
  function ffy(kk,sigma:real):real;
  function findkz(sigma:real):real;
  function ffz(kk,sigma:real):real;
  procedure naprugennia;
  function deltay(my:real):real;
  function deltaz(mz:real):real;
  procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  syx,szx,sy1,sy2,sdy,sz1,sz2,sdz:aralong;
  sigy1,sigy2,sigy3,sigz1,sigz2,sigz3,sigy,sigz:real;

implementation
 uses spline, main, elipt;
{$R *.DFM}


function TForm4.ffy(kk,sigma:real):real;
var i:integer;
sum,fi,rozt:real;
begin
sum:=0;
rozt:=strtofloat(form3.edit12.text);
for i:=0 to m do begin
fi:=i*df;
sum:=sum+sqrt(kk*kk*sin(fi)*sin(fi)+cos(fi)*cos(fi));
end;
sum:=sum*2*pi/(m+1)-2*pi*d*(1+rozt)/(d+sigma);
ffy:=sum;
end;

function TForm4.ffz(kk,sigma:real):real;
var i:integer;
sum,fi,rozt:real;
begin
sum:=0;
rozt:=strtofloat(form3.edit13.text);
for i:=0 to m do begin
fi:=i*df;
sum:=sum+sqrt(sin(fi)*sin(fi)+kk*kk*cos(fi)*cos(fi));
end;
sum:=sum*2*pi/(m+1)-2*pi*d*(1+rozt)/(d+sigma);
ffz:=sum;
end;


function TForm4.findky(sigma:real):real;
var
kk0,kk1,kk,poh,toc:real;
begin
kk0:=1;
kk1:=1-pohybka;
repeat
poh:=(ffy(kk1,sigma)-ffy(kk0,sigma))/(kk1-kk0);
toc:=ffy(kk1,sigma);
kk:=kk1-toc/poh;
kk0:=kk1;
kk1:=kk;
until abs(kk1-kk0)<pohybka;
findky:=kk;
end;

function TForm4.findkz(sigma:real):real;
var
kk0,kk1,kk,poh,toc:real;
begin
kk0:=1;
kk1:=1-pohybka;
repeat
poh:=(ffz(kk1,sigma)-ffz(kk0,sigma))/(kk1-kk0);
toc:=ffz(kk1,sigma);
kk:=kk1-toc/poh;
kk0:=kk1;
kk1:=kk;
until abs(kk1-kk0)<pohybka;
findkz:=kk;
end;



procedure TForm4.naprugennia;
var  i,k,j:integer;
delc11,delc22,delc33,delc23,tnn:real;
dely11,dely22,dely33,dely23:real;
delz11,delz22,delz33,delz23:real;
my,mz:real;
filec,ft:textfile;
begin
if form3.checkbox1.checked=true then begin
assignfile(filec,'common.obc');
rewrite(filec);
assignfile(ft,'tn.obc');
rewrite(ft);
for j:=1 to m do begin
 Write(filec,'sigmac11(',j,'), ּֿא'#9'sigmac22(',j,'), ּֿא'#9'sigmac33(',j,')'#9'sigmac23(',j,'), ּֿא'#9);
 end;
 writeln(filec);
end;
 deltay(mky);
 deltaz(mkz);
 stringgrid18.Cells[0,0]:='Sigmac11, ּֿא';
 stringgrid18.rowcount:=km;
 stringgrid18.colcount:=m+2;
 stringgrid19.Cells[0,0]:='Sigmac22, ּֿא';
 stringgrid19.rowcount:=km;
 stringgrid19.colcount:=m+2;
 stringgrid20.Cells[0,0]:='Sigmac33, ּֿא';
 stringgrid20.rowcount:=km;
 stringgrid20.colcount:=m+2;
 stringgrid21.Cells[0,0]:='Sigmac23, ּֿא';
 stringgrid21.rowcount:=km;
 stringgrid21.colcount:=m+2;
 stringgrid6.Cells[0,0]:='Tn';
 stringgrid6.rowcount:=km;
 stringgrid6.colcount:=m+2;
for k:=2 to km do begin
stringgrid18.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid19.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid20.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid21.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid6.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';

for j:=0 to m do begin
dely11:=strtofloat(stringgrid5.Cells[j+1,k-1]);
dely22:=strtofloat(stringgrid7.Cells[j+1,k-1]);
dely33:=strtofloat(stringgrid8.Cells[j+1,k-1]);
dely23:=strtofloat(stringgrid9.Cells[j+1,k-1]);
delz11:=strtofloat(stringgrid14.Cells[j+1,k-1]);
delz22:=strtofloat(stringgrid15.Cells[j+1,k-1]);
delz33:=strtofloat(stringgrid16.Cells[j+1,k-1]);
delz23:=strtofloat(stringgrid17.Cells[j+1,k-1]);
delc11:=dely11+delz11-1/3*(dely11+delz11+d*d*(dely22+delz22)+dely33+delz33);
delc22:=dely22+delz22-1/3*(dely11+delz11+d*d*(dely22+delz22)+dely33+delz33)/(d*d);
delc33:=dely33+delz33-1/3*(dely11+delz11+d*d*(dely22+delz22)+dely33+delz33);
delc23:=dely23+delz23;
tnn:=sqrt(delc11*delc11+d*d*d*d*delc22*delc22+delc33*delc33+d*d*delc23*delc23);

stringgrid18.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid18.Cells[j+1,k-1]:=floattostrf(delc11,fffixed,10,toc);
stringgrid19.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid19.Cells[j+1,k-1]:=floattostrf(delc22,fffixed,10,toc);
stringgrid20.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid20.Cells[j+1,k-1]:=floattostrf(delc33,fffixed,10,toc);
stringgrid21.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid21.Cells[j+1,k-1]:=floattostrf(delc23,fffixed,10,toc);
stringgrid6.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid6.Cells[j+1,k-1]:=floattostrf(tnn,fffixed,10,toc);

if form3.checkbox1.checked=true then begin
write(filec,delc11:0:toc,#9);
write(filec,delc22:0:toc,#9);
write(filec,delc33:0:toc,#9);
write(filec,delc23:0:toc,#9);
write(ft,tnn:0:toc,#9);
end;
end;
if form3.checkbox1.checked=true then begin
writeln(filec);
writeln(ft);
end;
end;
if form3.checkbox1.checked=true then begin
closefile(filec);
closefile(ft);
end;
end;


function TForm4.deltay(my:real):real;
var  i,k,j:integer;
mu,lam,xx,fi:real;
y1,y2,y3,ay,by,kky,fy1,fy2,fy3,sigmay1:real;
ey11,ey22,ey33,ey23,iey,dely11,dely22,dely33,dely23:real;
filey1,filey2:textfile;
begin
if form3.checkbox1.checked=true then begin
assignfile(filey1,'deform_y.obc');
rewrite(filey1);
assignfile(filey2,'naprug_y.obc');
rewrite(filey2);
 for j:=1 to m do begin
 Write(filey1,'ey11(',j,')*e-3'#9'ey22(',j,')*e-3'#9'ey33(',j,')*e-3'#9'ey23(',j,')*e-3'#9);
 Write(filey2,'sigmay11(',j,'), ּֿא'#9'sigmay22(',j,'), ּֿא'#9'sigmay33(',j,'), ּֿא'#9'sigmay23(',j,'), ּֿא'#9);
 end;
 writeln(filey1);
 writeln(filey2);
end;
mu:=e/(2*(sigg+1));
lam:=e*sigg/((sigg+1)*(1-2*sigg));
 y2:=0;
 sigy1:=0;
 sigy2:=0;
 sigy3:=0;
 stringgrid1.Cells[0,0]:='Ey11*e-3';
 stringgrid1.rowcount:=km;
 stringgrid1.colcount:=m+2;
 stringgrid2.Cells[0,0]:='Ey22*e-3';
 stringgrid2.rowcount:=km;
 stringgrid2.colcount:=m+2;
 stringgrid3.Cells[0,0]:='Ey33*e-3';
 stringgrid3.rowcount:=km;
 stringgrid3.colcount:=m+2;
 stringgrid4.Cells[0,0]:='Ey23*e-3';
 stringgrid4.rowcount:=km;
 stringgrid4.colcount:=m+2;
 stringgrid5.Cells[0,0]:='Sigmay11, ּֿא';
 stringgrid5.rowcount:=km;
 stringgrid5.colcount:=m+2;
 stringgrid7.Cells[0,0]:='Sigmay22, ּֿא';
 stringgrid7.rowcount:=km;
 stringgrid7.colcount:=m+2;
 stringgrid8.Cells[0,0]:='Sigmay33, ּֿא';
 stringgrid8.rowcount:=km;
 stringgrid8.colcount:=m+2;
 stringgrid9.Cells[0,0]:='Sigmay23, ּֿא';
 stringgrid9.rowcount:=km;
 stringgrid9.colcount:=m+2;

for k:=2 to km do begin
   xx:=syx[k];
   y1:=sy1[k];
   y2:=sy2[k];
   y3:=(sy2[k]-sy2[k-1])/(syx[k]-syx[k-1]);
   sigmay1:=sdy[k]*my;
   //sigmay1:=0;
kky:=findky(sigmay1);
ay:=(7*kky*kky+1)/(8*kky);
by:=(1-kky*kky)/(8*kky);
stringgrid1.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid2.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid3.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid4.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid5.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid7.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid8.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid9.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';

for j:=0 to m do begin
fi:=j*df;
ey11:=1/2*y1*y1-(d+sigmay1)*y2/sqrt(1+y1*y1)*(ay*cos(fi)-by*cos(3*fi))+
        (d+sigmay1)*(d+sigmay1)*y2*y2*(ay*cos(fi)-by*cos(3*fi))*(ay*cos(fi)-by*cos(3*fi))/(2*(1+y1*y1)*(1+y1*y1));
ey22:=1/2*((d+sigmay1)*(d+sigmay1)*((-ay*sin(fi)+3*by*sin(3*fi))*(-ay*sin(fi)+3*by*sin(3*fi))+((ay+2*by)*cos(fi)-3*by*cos(3*fi))*((ay+2*by)*cos(fi)-3*by*cos(3*fi)))-d*d);
ey33:=1/2*(((ay*cos(fi)-by*cos(3*fi))*(ay*cos(fi)-by*cos(3*fi))+((ay+2*by)*sin(fi)-by*sin(3*fi))*((ay+2*by)*sin(fi)-by*sin(3*fi)))-1);
ey23:=1/2*(d+sigmay1)*((-ay*sin(fi)+3*by*sin(3*fi))*(ay*cos(fi)-by*cos(3*fi))+((ay+2*by)*cos(fi)-3*by*cos(3*fi))*((ay+2*by)*sin(fi)-by*sin(3*fi)));
iey:=ey11+ey22/(d*d)+ey33;
dely11:=lam*iey+2*mu*ey11;
dely22:=lam*iey/(d*d)+2*mu/(d*d*d*d)*ey22;
dely33:=lam*iey+2*mu*ey33;
dely23:=2*mu/(d*d)*ey23;
fy1:=(lam+2*mu)*(y1*y2-(d+sigmay1)*(ay*cos(fi)-by*cos(3*fi))*
        (y3*(1+y1*y1)-y1*y2*y2)/(sqrt(1+y1*y1)*sqrt(1+y1*y1)*sqrt(1+y1*y1))+
        (d+sigmay1)*(d+sigmay1)*(ay*cos(fi)-by*cos(3*fi))*(ay*cos(fi)-by*cos(3*fi))/
        ((1+y1*y1)*(1+y1*y1)*(1+y1*y1))*(y2*y3*(1+y1*y1)-2*y2*y2*y2*y1));
fy2:=lam/(d*d)*(-(d+sigmay1)*y2/sqrt(1+y1*y1)*(-ay*sin(fi)+3*by*sin(3*fi))+
        (d+sigmay1)*(d+sigmay1)*y2*y2*(ay*cos(fi)-by*cos(3*fi))*(-ay*sin(fi)+3*by*sin(3*fi))/((1+y1*y1)*(1+y1*y1)))+
        (lam+2*mu)/(d*d*d*d)*(d+sigmay1)*(d+sigmay1)*((-ay*sin(fi)+3*by*sin(3*fi))*(-ay*cos(fi)+9*by*cos(3*fi))+
        ((ay+2*by)*cos(fi)-3*by*cos(3*fi))*(-(ay+2*by)*sin(fi)+9*by*sin(3*fi)))+
        lam/(d*d)*((ay*cos(fi)-by*cos(3*fi))*(-ay*sin(fi)+3*by*sin(3*fi))+((ay+2*by)*sin(fi)-by*sin(3*fi))*((ay+2*by)*cos(fi)-3*by*cos(3*fi)))+
        2*mu/(d*d)*((-ay*sin(fi)+3*by*sin(3*fi))*(ay*cos(fi)-by*cos(3*fi))+((ay+2*by)*cos(fi)-3*by*cos(3*fi))*((ay+2*by)*sin(fi)-by*sin(3*fi)))+
        1/d*dely23;
fy3:=lam*(-y2/sqrt(1+y1*y1)*(ay*cos(fi)-by*cos(3*fi))+(d+sigmay1)*(ay*cos(fi)-by*cos(3*fi))*(ay*cos(fi)-by*cos(3*fi))*y2*y2/((1+y1*y1)*(1+y1*y1)))+
        lam/(d*d)*((d+sigmay1)*((-ay*sin(fi)+3*by*sin(3*fi))*(-ay*sin(fi)+3*by*sin(3*fi))+((ay+2*by)*cos(fi)-3*by*cos(3*fi))*((ay+2*by)*cos(fi)-3*by*cos(3*fi)))-d)+
        mu/(d*d)*(d+sigmay1)*((-ay*cos(fi)+9*by*cos(3*fi))*(ay*cos(fi)-by*cos(3*fi))+(-ay*sin(fi)+3*by*sin(3*fi))*(-ay*sin(fi)+3*by*sin(3*fi))+
        (-(ay+2*by)*sin(fi)+9*by*sin(3*fi))*((ay+2*by)*sin(fi)-by*sin(3*fi))+((ay+2*by)*cos(fi)-3*by*cos(3*fi))*((ay+2*by)*cos(fi)-3*by*cos(3*fi)))-
        2*lam/(d*d*d)*ey22-d*dely22+1/d*dely33;

stringgrid1.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid1.Cells[j+1,k-1]:=floattostrf(ey11*1000,fffixed,10,toc);
stringgrid2.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid2.Cells[j+1,k-1]:=floattostrf(ey22*1000,fffixed,10,toc);
stringgrid3.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid3.Cells[j+1,k-1]:=floattostrf(ey33*1000,fffixed,10,toc);
stringgrid4.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid4.Cells[j+1,k-1]:=floattostrf(ey23*1000,fffixed,10,toc);
stringgrid5.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid5.Cells[j+1,k-1]:=floattostrf(dely11,fffixed,10,toc);
stringgrid7.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid7.Cells[j+1,k-1]:=floattostrf(dely22,fffixed,10,toc);
stringgrid8.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid8.Cells[j+1,k-1]:=floattostrf(dely33,fffixed,10,toc);
stringgrid9.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid9.Cells[j+1,k-1]:=floattostrf(dely23,fffixed,10,toc);
sigy1:=sigy1+fy1;
sigy2:=sigy2+fy2;
sigy3:=sigy3+fy3;
if form3.checkbox1.checked=true then begin
write(filey1,ey11*1000:0:toc,#9);
write(filey1,ey22*1000:0:toc,#9);
write(filey1,ey33*1000:0:toc,#9);
write(filey1,ey23*1000:0:toc,#9);
write(filey2,dely11:0:toc,#9);
write(filey2,dely22:0:toc,#9);
write(filey2,dely33:0:toc,#9);
write(filey2,dely23:0:toc,#9);
end;
end;
if form3.checkbox1.checked=true then begin
writeln(filey1);
writeln(filey2);
end;
end;
sigy1:=sigy1*pi*(d*d-d1*d1)*xx/(km*m);
sigy2:=sigy2*pi*(d*d-d1*d1)*xx/(km*m);
sigy3:=sigy3*pi*(d*d-d1*d1)*xx/(km*m);
sigy:=sqrt(sigy1*sigy1+sigy2*sigy2+sigy3*sigy3);
deltay:=sigy;
if form3.checkbox1.checked=true then begin
closefile(filey1);
closefile(filey2);
end;
end;



function TForm4.deltaz(mz:real):real;
var  i,k,j:integer;
mu,lam,xx,fi:real;
z1,z2,z3,az,bz,kkz,fz1,fz2,fz3,sigmaz1:real;
ez11,ez22,ez33,ez23,iez,delz11,delz22,delz33,delz23:real;
filez1,filez2:textfile;
begin
if form3.checkbox1.checked=true then begin
assignfile(filez1,'deform_z.obc');
rewrite(filez1);
assignfile(filez2,'naprug_z.obc');
rewrite(filez2);
 for j:=1 to m do begin
 Write(filez1,'ez11(',j,')*e-3'#9'ez22(',j,')*e-3'#9'ez33(',j,')*e-3'#9'ez23(',j,')*e-3'#9);
 Write(filez2,'sigmaz11(',j,'), ּֿא'#9'sigmaz22(',j,'), ּֿא'#9'sigmaz33(',j,'), ּֿא'#9'sigmaz23(',j,'), ּֿא'#9);
 end;
 writeln(filez1);
 writeln(filez2);
end;
mu:=e/(2*(sigg+1));
lam:=e*sigg/((sigg+1)*(1-2*sigg));
 z2:=0;
 sigz1:=0;
 sigz2:=0;
 sigz3:=0;
 stringgrid10.Cells[0,0]:='Ez11*e-3';
 stringgrid10.rowcount:=km;
 stringgrid10.colcount:=m+2;
 stringgrid11.Cells[0,0]:='Ez22*e-3';
 stringgrid11.rowcount:=km;
 stringgrid11.colcount:=m+2;
 stringgrid12.Cells[0,0]:='Ez33*e-3';
 stringgrid12.rowcount:=km;
 stringgrid12.colcount:=m+2;
 stringgrid13.Cells[0,0]:='Ez23*e-3';
 stringgrid13.rowcount:=km;
 stringgrid13.colcount:=m+2;
 stringgrid14.Cells[0,0]:='Sigmaz11, ּֿא';
 stringgrid14.rowcount:=km;
 stringgrid14.colcount:=m+2;
 stringgrid15.Cells[0,0]:='Sigmaz22, ּֿא';
 stringgrid15.rowcount:=km;
 stringgrid15.colcount:=m+2;
 stringgrid16.Cells[0,0]:='Sigmaz33, ּֿא';
 stringgrid16.rowcount:=km;
 stringgrid16.colcount:=m+2;
 stringgrid17.Cells[0,0]:='Sigmaz23, ּֿא';
 stringgrid17.rowcount:=km;
 stringgrid17.colcount:=m+2;
for k:=2 to km do begin
   xx:=syx[k];
   z1:=sz1[k];
   z2:=sz2[k];
   z3:=(sz2[k]-sz2[k-1])/(syx[k]-syx[k-1]);
   sigmaz1:=sdz[k]*mz;
   //sigmaz1:=0;
kkz:=findkz(sigmaz1);
az:=(7*kkz*kkz+1)/(8*kkz);
bz:=(1-kkz*kkz)/(8*kkz);
stringgrid10.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid11.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid12.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid13.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid14.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid15.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid16.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
stringgrid17.Cells[0,k-1]:=floattostrf((k-1)*dx,fffixed,10,toc)+', ל';
for j:=0 to m do begin
fi:=j*df;
ez11:=1/2*z1*z1-(d+sigmaz1)*z2/sqrt(1+z1*z1)*(az*sin(fi)+bz*sin(3*fi))+
        (d+sigmaz1)*(d+sigmaz1)*z2*z2*(az*sin(fi)+bz*sin(3*fi))*(az*sin(fi)+bz*sin(3*fi))/(2*(1+z1*z1)*(1+z1*z1));
ez22:=1/2*((d+sigmaz1)*(d+sigmaz1)*((az*cos(fi)+3*bz*cos(3*fi))*(az*cos(fi)+3*bz*cos(3*fi))+(-(az+2*bz)*sin(fi)-3*bz*sin(3*fi))*(-(az+2*bz)*sin(fi)-3*bz*sin(3*fi)))-d*d);
ez33:=1/2*(((az*sin(fi)+bz*sin(3*fi))*(az*sin(fi)+bz*sin(3*fi))+((az+2*bz)*cos(fi)+bz*cos(3*fi))*((az+2*bz)*cos(fi)+bz*cos(3*fi)))-1);
ez23:=1/2*(d+sigmaz1)*((az*cos(fi)+3*bz*cos(3*fi))*(az*sin(fi)+bz*sin(3*fi))+(-(az+2*bz)*sin(fi)-3*bz*sin(3*fi))*((az+2*bz)*cos(fi)-bz*cos(3*fi)));
iez:=ez11+ez22/(d*d)+ez33;
delz11:=lam*iez+2*mu*ez11;
delz22:=lam*iez/(d*d)+2*mu/(d*d*d*d)*ez22;
delz33:=lam*iez+2*mu*ez33;
delz23:=2*mu/(d*d)*ez23;
fz1:=(lam+2*mu)*(z1*z2-(d+sigmaz1)*(az*sin(fi)+bz*sin(3*fi))*
        (z3*(1+z1*z1)-z1*z2*z2)/(sqrt(1+z1*z1)*sqrt(1+z1*z1)*sqrt(1+z1*z1))+
        (d+sigmaz1)*(d+sigmaz1)*(az*sin(fi)+bz*sin(3*fi))*(az*sin(fi)+bz*sin(3*fi))/
        ((1+z1*z1)*(1+z1*z1)*(1+z1*z1))*(z2*z3*(1+z1*z1)-2*z2*z2*z2*z1));
fz2:=lam/(d*d)*(-(d+sigmaz1)*z2/sqrt(1+z1*z1)*(az*cos(fi)+3*bz*cos(3*fi))+
        (d+sigmaz1)*(d+sigmaz1)*z2*z2*(az*sin(fi)+bz*sin(3*fi))*(az*cos(fi)+3*bz*cos(3*fi))/((1+z1*z1)*(1+z1*z1)))+
        (lam+2*mu)/(d*d*d*d)*(d+sigmaz1)*(d+sigmaz1)*((az*cos(fi)+3*bz*cos(3*fi))*(-az*sin(fi)-9*bz*sin(3*fi))+
        (-(az+2*bz)*sin(fi)-3*bz*sin(3*fi))*(-(az+2*bz)*cos(fi)-9*bz*cos(3*fi)))+
        lam/(d*d)*((az*sin(fi)+bz*sin(3*fi))*(az*cos(fi)+3*bz*cos(3*fi))+((az+2*bz)*cos(fi)+bz*cos(3*fi))*(-(az+2*bz)*sin(fi)-3*bz*sin(3*fi)))+
        2*mu/(d*d)*((az*cos(fi)+3*bz*cos(3*fi))*(az*sin(fi)+bz*sin(3*fi))+(-(az+2*bz)*sin(fi)-3*bz*sin(3*fi))*((az+2*bz)*cos(fi)+bz*cos(3*fi)))+
        1/d*delz23;
fz3:=lam*(-z2/sqrt(1+z1*z1)*(az*sin(fi)+bz*sin(3*fi))+(d+sigmaz1)*(az*sin(fi)+bz*sin(3*fi))*(az*sin(fi)+bz*sin(3*fi))*z2*z2/((1+z1*z1)*(1+z1*z1)))+
        lam/(d*d)*((d+sigmaz1)*((az*cos(fi)+3*bz*cos(3*fi))*(az*cos(fi)+3*bz*cos(3*fi))+(-(az+2*bz)*sin(fi)-3*bz*sin(3*fi))*(-(az+2*bz)*sin(fi)-3*bz*sin(3*fi)))-d)+
        mu/(d*d)*(d+sigmaz1)*((-az*sin(fi)-9*bz*sin(3*fi))*(az*sin(fi)+bz*sin(3*fi))+(az*cos(fi)+3*bz*cos(3*fi))*(az*cos(fi)+3*bz*cos(3*fi))+
        (-(az+2*bz)*cos(fi)-9*bz*cos(3*fi))*((az+2*bz)*cos(fi)+bz*cos(3*fi))+(-(az+2*bz)*sin(fi)-3*bz*sin(3*fi))*(-(az+2*bz)*sin(fi)-3*bz*sin(3*fi)))-
        2*lam/(d*d*d)*ez22-d*delz22+1/d*delz33;

stringgrid10.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid10.Cells[j+1,k-1]:=floattostrf(ez11*1000,fffixed,10,toc);
stringgrid11.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid11.Cells[j+1,k-1]:=floattostrf(ez22*1000,fffixed,10,toc);
stringgrid12.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid12.Cells[j+1,k-1]:=floattostrf(ez33*1000,fffixed,10,toc);
stringgrid13.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid13.Cells[j+1,k-1]:=floattostrf(ez23*1000,fffixed,10,toc);
stringgrid14.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid14.Cells[j+1,k-1]:=floattostrf(delz11,fffixed,10,toc);
stringgrid15.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid15.Cells[j+1,k-1]:=floattostrf(delz22,fffixed,10,toc);
stringgrid16.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid16.Cells[j+1,k-1]:=floattostrf(delz33,fffixed,10,toc);
stringgrid17.Cells[j+1,0]:=floattostrf(j*df,fffixed,10,toc)+', נאה';
stringgrid17.Cells[j+1,k-1]:=floattostrf(delz23,fffixed,10,toc);
sigz1:=sigz1+fz1;
sigz2:=sigz2+fz2;
sigz3:=sigz3+fz3;
if form3.checkbox1.checked=true then begin
write(filez1,ez11*1000:0:toc,#9);
write(filez1,ez22*1000:0:toc,#9);
write(filez1,ez33*1000:0:toc,#9);
write(filez1,ez23*1000:0:toc,#9);
write(filez2,delz11:0:toc,#9);
write(filez2,delz22:0:toc,#9);
write(filez2,delz33:0:toc,#9);
write(filez2,delz23:0:toc,#9);
end;
end;
if form3.checkbox1.checked=true then begin
writeln(filez1);
writeln(filez2);
end;
end;
sigz1:=sigz1*pi*(d*d-d1*d1)*xx/(km*m);
sigz2:=sigz2*pi*(d*d-d1*d1)*xx/(km*m);
sigz3:=sigz3*pi*(d*d-d1*d1)*xx/(km*m);
sigz:=sqrt(sigz1*sigz1+sigz2*sigz2+sigz3*sigz3);
deltaz:=sigz;
if form3.checkbox1.checked=true then begin
closefile(filez1);
closefile(filez2);
end;
end;


procedure TForm4.Button1Click(Sender: TObject);
begin
close;
end;

end.
