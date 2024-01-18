 unit spline;

{This module contains a calculation of
  smoothing spline}

interface
uses
  Windows, SysUtils, Classes,Controls, Forms,
  StdCtrls, ExtCtrls, Menus, main, data,splin,napruz;

  procedure Count;


implementation
{MultMat}
function MultMat(v,vv:ar;n,nn,m:integer):ar;
var
  i,j,k:integer;
  mm:ar;
begin
  for i:=1 to n do
  for j:=1 to m do begin
    mm[i,j]:=0;
    for k:=1 to nn do
      mm[i,j]:=mm[i,j]+v[i,k]*vv[k,j];
  end;
    for i:=1 to n do
    for j:=1 to m do
      MultMat[i,j]:=mm[i,j];
end;
{The end MultMat}




{MultVect}
function MultVect(v:ar;vv:ara;n,nn:integer):ara;
var
  i,k:integer;
  mm:ara;
begin
  for i:=1 to n do begin
    mm[i]:=0;
    for k:=1 to nn do
      mm[i]:=mm[i]+v[i,k]*vv[k];
  end;
    for i:=1 to n do
      MultVect[i]:=mm[i];
end;
{The end MultVect}


{solve}
function Solve(v:ar;vv:ara;n:integer):ara;
var
  k,i,j:integer;
  d:real;
  mm:ara;
begin
  for i:=1 to n do
  begin
   if v[i,i]=0 then
   begin
    j:=i+1;
    while v[j,i]=0 do
    j:=j+1;
    for k:=i to n do
    begin
      d:=v[i,k];
      v[i,k]:=v[j,k];
      v[j,k]:=d;
    end;
      d:=vv[i];
      vv[i]:=vv[j];
      vv[j]:=d;
   end;
   for j:=i+1 to n do begin
   d:=v[j,i]/v[i,i];
   for k:=i to n do
   v[j,k]:=v[j,k]-d*v[i,k];
   vv[j]:=vv[j]-d*vv[i];
  end;
  end;
  for i:=n downto 1 do
  begin
    d:=0;
    for k:=i+1 to n do
    begin
    d:=d+v[i,k]*mm[k];
    end;
  mm[i]:=(vv[i]-d)/v[i,i];
  end;
  for i:=1 to n do
  Solve[i]:=mm[i];
end;
{The end Solve}


{Progonka}
Function Progonka(vv:ar;v:ara;n:integer):ara;
var
i:integer;
al,be,y:ara;
temp:real;
begin
al[2]:=-vv[1,2]/vv[1,1];
be[2]:=v[1]/vv[1,1];
for i:=2 to n-1 do
 begin
 temp:=-vv[i,i]-al[i]*vv[i,i-1];
 if  temp=0 then temp:=pohybka;
 al[i+1]:=vv[i,i+1]/temp;
 be[i+1]:=(vv[i,i-1]*be[i]-v[i])/temp;
 end;
y[n]:=(-vv[n,n-1]/vv[n,n]*be[n]+v[n]/vv[n,n])/(1+vv[n,n-1]/vv[n,n]*al[n]);
for i:=n-1 downto 1 do
 y[i]:=al[i+1]*y[i+1]+be[i+1];
for i:=1 to n do
Progonka[i]:=y[i];
end;
{The end Progonka}


{We are looking for recommended R}
function Find_P(a,h:ar;n:integer):ar;
var i,j,k:integer;
pp,aa:ar; b,bb:ara;
c:boolean;
begin

for i:=1 to (n-1) do  begin
    for j:=2 to n do  begin
        aa[i,j-1]:=0;
        for k:=1 to (n-1) do
            aa[i,j-1]:=aa[i,j-1]+h[i,j]*h[k,j]*dpox[k+1];
end;
end;

c:=false;

for i:=1 to (n-1) do
bb[i]:=dpox[i+1];
b:=MultVect(a,bb,n-1,n-1);
bb:=MultVect(h,f,n-1,n+1);
for i:=1 to n-1 do
bb[i]:=bb[i]-b[i];
bb[1]:=bb[1];
bb[n-1]:=bb[n-1];
b:=Progonka(aa,bb,n-1);

for i:=1 to (n+1) do begin
    for j:=1 to (n+1) do begin
        if i=j then begin
            if i=1 then
                 pp[i,j]:=pohybka
            else
             if i=(n+1) then
                 pp[i,j]:=pohybka
            else
                pp[i,j]:=b[i-1];
            end
        else pp[i,j]:=0;
    end;
end;
for i:=1 to (n+1) do begin
    for j:=1 to (n+1) do begin
     Find_P[i,j]:=pp[i,j];
     if i=j then begin
     form1.stringgrid2.Cells[j,1]:=floattostrf(1/pp[i,j],fffixed,10,toc);
     sgraph.stringgrid3.Cells[j,1]:=floattostrf(1/pp[i,j],fffixed,10,toc);
     p[i]:=1/pp[i,j];
    end;
    end;
end;
end;
{The end Find_P}


{Procedure Count}
procedure Count;
var
i,j,k:integer;
a,hh,bb,pp:ar;
b,h,m,mu:ara;
xx,f01,f02,fn1,fn2:real;
begin
  for i:=2 to nm+1 do
    h[i]:=x[i]-x[i-1];
  for i:=1 to nm-1 do
  for j:=1 to nm-1 do begin
    if  i=j  then
      a[i,j]:=(h[i+1]+h[i+2])/3
    else
      if j=i-1 then
        a[i,j]:=h[i+1]/6
      else
         if j=i+1 then
           a[i,j]:=h[i+2]/6
         else a[i,j]:=0;
  end;
  for i:=1 to nm-1 do
  for j:=1 to nm+1 do begin
    if j=i then hh[i,j]:=1/h[i+1]
    else if j=i+1 then hh[i,j]:=-1/h[i+1]-1/h[i+2]
    else if j=i+2 then  hh[i,j]:=1/h[i+2]
     else hh[i,j]:=0;
  end;

if sp1 then begin     {ïðîñòèé ñïëàéí}
  b:=MultVect(hh,f,nm-1,nm+1);
  b:=Progonka(a,b,nm-1);
  for i:=1 to nm-1 do
    m[i+1]:=b[i];

  {here are the extreme points}
  if fp then  begin
     m[nm+1]:=((f[2]-f[nm+1])/h[2]-(f[nm+1]-f[nm])/h[nm+1]-h[nm+1]*m[nm]/6-h[2]*m[2]/6)*3/(h[nm+1]+h[2]);
     m[1]:=m[nm+1];
  end;
  if fa1 then begin
  f01:=(f[2]-f[1])/h[2];
  fn1:=(f[nm+1]-f[nm])/h[nm+1];
  m[1]:=(2*((f[2]-f[1])/h[2]-f01)/h[2]-m[2]/3)*3/2;
  m[nm+1]:=(2*(fn1-(f[nm+1]-f[nm])/h[nm+1])/h[nm+1]-m[nm]/3)*3/2;
  end;
  if fr1 then begin
  f01:=strtofloat(form1.edit12.text);
  fn1:=strtofloat(form1.edit13.text);
  m[1]:=(2*((f[2]-f[1])/h[2]-f01)/h[2]-m[2]/3)*3/2;
  m[nm+1]:=(2*(fn1-(f[nm+1]-f[nm])/h[nm+1])/h[nm+1]-m[nm]/3)*3/2;
  end;
  if fa2 then begin
  f02:=(f[3]-2*f[2]+f[1])/(h[2]*h[2]);
  fn2:=(f[nm+1]-2*f[nm]+f[nm-1])/(h[nm+1]*h[nm+1]);
  m[1]:=f02;
  m[nm+1]:=fn2;
  end;
  if fr2 then begin
  f02:=strtofloat(form1.edit14.text);
  fn2:=strtofloat(form1.edit15.text);
  m[1]:=f02;
  m[nm+1]:=fn2;
  end;


  xx:=x[1];
  k:=1;
  for i:=2 to nm+1 do
  while (xx-x[i])<=pohybka do begin
  zg[k]:=(m[i-1]*(x[i]-xx)*(x[i]-xx)*(x[i]-xx))/(6*h[i])+(m[i]*(xx-x[i-1])*(xx-x[i-1])*(xx-x[i-1]))/(6*h[i])+
  ((f[i-1]-(m[i-1]*h[i]*h[i])/6)*(x[i]-xx))/h[i]+((f[i]-(m[i]*h[i]*h[i])/6)*(xx-x[i-1]))/h[i];
  zg1[k]:=-(m[i-1]*(x[i]-xx)*(x[i]-xx))/(2*h[i])+ (m[i]*(xx-x[i-1])*(xx-x[i-1]))/(2*h[i])+
  (f[i]-f[i-1])/h[i]-(m[i]-m[i-1])*h[i]/6;
  zg2[k]:=(m[i-1]*(x[i]-xx))/h[i]+ (m[i]*(xx-x[i-1]))/h[i];
  zig[k]:=-e*d*zg2[k];
  zx[k]:=xx;
  xx:=xx+dx;
  k:=k+1;
  end;
  km:=k-1;
if vis=true then begin
syx:=zx;
sy1:=zg1;
sy2:=zg2;
km1:=km;
end
else begin
szx:=zx;
sz1:=zg1;
sz2:=zg2;
end;
end;

if sp2= true then begin     {smoothing spline}

if form1.CheckBox4.Checked=true then {set or calculate P}
  pp:=Find_P(a,hh,nm)
  else begin
   for i:=1 to (nm+1) do
    for j:=1 to (nm+1) do begin
        if i=j then
                pp[i,j]:=1/p[i]
        else pp[i,j]:=0;
    end;
  while less do begin
  for i:=1 to nm-1 do
  for j:=1 to nm+1 do
    bb[j,i]:=hh[i,j];
  pp:=MultMat(pp,bb,nm+1,nm+1,nm-1);
  bb:=MultMat(hh,pp,nm-1,nm+1,nm-1);
  for i:=1 to nm-1 do
  for j:=1 to nm-1 do
    bb[i,j]:=a[i,j]+bb[i,j];
  b:=MultVect(hh,f,nm-1,nm+1);
  b:= Solve(bb,b,nm-1);
  for i:=1 to nm-1 do
    m[i+1]:=b[i];
  b:=MultVect(pp,b,nm+1,nm-1);
  for i:=1 to nm+1 do
    mu[i]:=f[i]-b[i];
  less:=false;
  for i:=1 to nm+1 do begin
  if (abs(b[i])-eps)>pohybka then
  begin
  p[i]:=p[i]*abs(b[i])/eps;
  less:=true;
  end;
  end;
     for i:=1 to (nm+1) do
    for j:=1 to (nm+1) do begin
        if i=j then
                pp[i,j]:=1/p[i]
        else pp[i,j]:=0;
    end;
  end;
  for i:=1 to (nm+1) do begin
     form1.stringgrid2.Cells[i,1]:=floattostrf(p[i],fffixed,10,toc);
     sgraph.stringgrid3.Cells[i,1]:=floattostrf(p[i],fffixed,10,toc);
  end;   
  end;

  for i:=1 to nm-1 do
  for j:=1 to nm+1 do
    bb[j,i]:=hh[i,j];
  pp:=MultMat(pp,bb,nm+1,nm+1,nm-1);
  bb:=MultMat(hh,pp,nm-1,nm+1,nm-1);
  for i:=1 to nm-1 do
  for j:=1 to nm-1 do
    bb[i,j]:=a[i,j]+bb[i,j];
  b:=MultVect(hh,f,nm-1,nm+1);
  b:= Solve(bb,b,nm-1);
  for i:=1 to nm-1 do
    m[i+1]:=b[i];
  b:=MultVect(pp,b,nm+1,nm-1);
  for i:=1 to nm+1 do
    mu[i]:=f[i]-b[i];

    {here are the extreme points}
  if fp then  begin
     m[nm+1]:=((mu[2]-mu[nm+1])/h[2]-(mu[nm+1]-mu[nm])/h[nm+1]-h[nm+1]*m[nm]/6-h[2]*m[2]/6)*3/(h[nm+1]+h[2]);
     m[1]:=m[nm+1];
  end;
  if fa1 then begin
  f01:=(mu[2]-mu[1])/h[2];
  fn1:=(mu[nm+1]-mu[nm])/h[nm+1];
  m[1]:=(2*((mu[2]-mu[1])/h[2]-f01)/h[2]-m[2]/3)*3/2;
  m[nm+1]:=(2*(fn1-(mu[nm+1]-mu[nm])/h[nm+1])/h[nm+1]-m[nm]/3)*3/2;
  end;
  if fr1 then begin
  f01:=strtofloat(form1.edit12.text);
  fn1:=strtofloat(form1.edit13.text);
  m[1]:=(2*((mu[2]-mu[1])/h[2]-f01)/h[2]-m[2]/3)*3/2;
  m[nm+1]:=(2*(fn1-(mu[nm+1]-mu[nm])/h[nm+1])/h[nm+1]-m[nm]/3)*3/2;
  end;
  if fa2 then begin
  f02:=(mu[3]-2*mu[2]+mu[1])/(h[2]*h[2]);
  fn2:=(mu[nm+1]-2*mu[nm]+mu[nm-1])/(h[nm+1]*h[nm+1]);
  m[1]:=f02;
  m[nm+1]:=fn2;
  end;
  if fr2 then begin
  f02:=strtofloat(form1.edit14.text);
  fn2:=strtofloat(form1.edit15.text);
  m[1]:=f02;
  m[nm+1]:=fn2;
  end;

  k:=1;
  xx:=x[1];
  for i:=2 to nm+1 do
  while (xx-x[i])<=pohybka do begin
  sg[k]:=m[i-1]*((x[i]-xx)*(x[i]-xx)*(x[i]-xx))/(6*h[i])+m[i]*((xx-x[i-1])*(xx-x[i-1])*(xx-x[i-1]))/(6*h[i])+
  (mu[i-1]-(m[i-1]*h[i]*h[i])/6)*(x[i]-xx)/h[i]+(mu[i]-(m[i]*h[i]*h[i])/6)*(xx-x[i-1])/h[i];
  sg1[k]:=-m[i-1]*((x[i]-xx)*(x[i]-xx))/(2*h[i])+ m[i]*((xx-x[i-1])*(xx-x[i-1]))/(2*h[i])+
  (mu[i]-mu[i-1])/h[i]-(m[i]-m[i-1])*h[i]/6;
  sg2[k]:=m[i-1]*(x[i]-xx)/h[i]+ m[i]*(xx-x[i-1])/h[i];
  sig[k]:=-e*d*sg2[k];
  sx[k]:=xx;
  xx:=xx+dx;
  k:=k+1;
  end;
km:=k-1;
if vis=true then begin
syx:=sx;
sy1:=sg1;
sy2:=sg2;
km1:=km;
end
else begin
szx:=sx;
sz1:=sg1;
sz2:=sg2;
end;
end;
end;
{The end}
end.
