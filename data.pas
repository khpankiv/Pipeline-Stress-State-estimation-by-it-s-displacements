unit data;

{Даний модуль призначений для об'явлення
 глобальних змінних та процедур:
  - процедура зчитування даних з файлу ;
  - процедура введення точності та масиву р ;
  - процедура зчитування даних при введенні вручну;
  - процедури та функції для обчислення сплайнів ; }

interface
uses
  Windows, Messages, SysUtils, Classes,  Controls, Forms,
  StdCtrls, ExtCtrls, Menus;
   
   const
   sigg=0.3;
   e=210000;

type
 ar = array[1..100,1..100] of real;
 ara = array[1..100] of real;
 aralong = array[1..1000] of real;

var
   nm,km,m,toc,km1:integer;
   x,f,p,eta,dpox:ara;
   dx,d,d1,eps,df,pohybka:real;

   max,min:real;
   sx,sg,sg1,sg2,zx,zg,zg1,zg2,sig,zig:aralong;
   sp1,sp2,fp,fa1,fa2,fr1,fr2,yb,zb,less,vis:Boolean;
   procedure ReadFromFile;
   procedure ReadFromFileEtalon;
   procedure EnterD;
   procedure EnterPohybka;
   procedure Enter_P;
   Procedure Enter_Naprug;
   procedure EnterManualData;
   procedure getsp;

implementation
uses main, elipt;


{Процедура зчитування з файлу}
procedure ReadFromFile;
  var
    ff:textfile;
    i:integer;
    s:string;
    f1,f2:ara;
    {tang,zmisc:real; }
  begin
    s:=Form1.edit6.text;
    assignfile(ff,s);
    reset(ff);
    readln(ff,nm);
   for i:=1 to nm+1 do
     readln(ff,x[i]);
   for i:=1 to nm+1 do
     readln(ff,f1[i]);
   for i:=1 to nm+1 do
     begin
     readln(ff,f2[i]);
     f[i]:=f2[i]-f1[i];
     end;
     {tang:=(f[nm+1]-f[1])/(x[nm+1]-x[1]);
     zmisc:=f[1];
   for i:=1 to nm+1 do
    begin
     f[i]:=f[i]-(zmisc+tang*(x[i]-x[1]));
    end; }
    closefile(ff);
  end;

{Процедура зчитування з файлу напружень}
procedure ReadFromFileEtalon;
  var
    ff:textfile;
    i:integer;
    s:string;
  begin
    s:=Form1.edit10.text;
    assignfile(ff,s);
    reset(ff);
   for i:=1 to nm+1 do
    begin
     readln(ff,eta[i]);
     dpox[i]:=eta[i]/(-d*e);
    end;
     closefile(ff);
  end;

procedure EnterD;
var i:integer;
begin
  dx:=strtofloat(Form3.edit16.text);
  d:=strtofloat(Form3.edit14.text)/2000;
  d1:=d-strtofloat(Form3.edit17.text)/1000;
  m:=strtoint(Form3.edit2.text);
  df:=2*pi/m;
  toc:=strtoint(Form3.edit15.text);
  pohybka:=1;
  for i:=1 to toc do
  pohybka:=pohybka/10;
end;


procedure EnterPohybka;
begin
  eps:=strtofloat(Form1.edit9.text);
end;

{Процедура введення масиву P}
Procedure Enter_P;
var
 k:integer;
begin
 for k:=1 to nm+1 do
  p[k]:=strtofloat(form1.stringgrid2.cells[k,1]);
end;

{Процедура введення масиву напружень}
Procedure Enter_Naprug;
var
 k:integer;
begin
 for k:=1 to nm+1 do
  begin
   eta[k]:=strtofloat(form1.stringgrid3.cells[k,1]);
   dpox[k]:=eta[k]/(-e*d);
  end;
end;

{Процедура зчитування даних при введені вручну}

procedure EnterManualData;
var i:integer;
{tang,zmisc:real;}
f1,f2:ara;
begin
 nm:=form1.spinedit1.Value;
 for i:=1 to nm+1 do
     begin
         x[i]:=strtofloat(form1.stringgrid1.cells[i,0]);
         f1[i]:=strtofloat(form1.stringgrid1.cells[i,1]);
         f2[i]:=strtofloat(form1.stringgrid1.cells[i,2]);
         f[i]:=f2[i]-f1[i];
     end;
 {tang:=(f[nm+1]-f[1])/(x[nm+1]-x[1]);
 zmisc:=f[1];
 for i:=1 to nm+1 do
    begin
     f[i]:=f[i]-(zmisc+tang*(x[i]-x[1]));
 end;       }
end;


{Процедура встановлення глобальних змінних}
procedure getsp;
begin
  sp1:=form1.CheckBox1.Checked;
  sp2:=form1.CheckBox2.Checked;
  fp:=form1.radiobutton5.checked;
  if  form1.radiobutton6.checked and form1.radiobutton6.enabled then begin
        fa1:=form1.radiobutton10.checked;
        fr1:=form1.radiobutton11.checked;
  end;
  if  form1.radiobutton7.checked and form1.radiobutton7.enabled then begin
        fa2:=form1.radiobutton9.checked;
        fr2:=form1.radiobutton8.checked;
  end;

end;
{The end}

end.
