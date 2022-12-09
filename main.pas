unit main;

{ Даний модуль є головним модулем і містить опис
  головного вікна та всіх його компонентів
  та процедури, які описують їх поведінку  }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Menus, data, execute, Spin, Grids;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    CheckBox3: TCheckBox;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Edit6: TEdit;
    Button5: TButton;
    OpenDialog1: TOpenDialog;
    SpinEdit1: TSpinEdit;
    OpenDialog2: TOpenDialog;
    Button6: TButton;
    GroupBox3: TGroupBox;
    Edit9: TEdit;
    Label9: TLabel;
    Label11: TLabel;
    GroupBox4: TGroupBox;
    CheckBox4: TCheckBox;
    Edit10: TEdit;
    Button7: TButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox5: TGroupBox;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    GroupBox6: TGroupBox;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    GroupBox7: TGroupBox;
    RadioButton9: TRadioButton;
    RadioButton8: TRadioButton;
    Edit12: TEdit;
    Edit13: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit14: TEdit;
    Label16: TLabel;
    Edit15: TEdit;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure enterperiod(Sender: TObject);
    procedure enterx(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure StringGrid3SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

uses Results, splin, spline, elipt;

{$R *.DFM}


procedure TForm1.Button4Click(Sender: TObject);
begin

Close;
end;


procedure tform1.enterperiod(Sender: TObject);
var k:integer;
pp,pp1:real;
begin
nm:=spinedit1.Value;
StringGrid1.colcount:=nm+2;
  if Form1.checkbox3.checked=true then
    begin
     pp1:=strtofloat(edit2.text);
     stringgrid1.cells[1,0]:=edit2.text;
     pp:=strtofloat(edit3.text);
       for k:=2 to nm+1 do
       begin
         pp1:=pp1+pp;
         stringgrid1.cells[k,0]:=floattostrf(pp1,fffixed,10,toc);
       end;
    end;
    enterx(form1);
end;


procedure Tform1.enterx(Sender: TObject);
var k:integer;
begin
nm:=spinedit1.Value;
StringGrid2.colcount:=nm+2;
StringGrid3.colcount:=nm+2;
for k:=1 to nm+1 do begin
stringgrid2.cells[k,0]:=stringgrid1.cells[k,0];
stringgrid2.cells[k,1]:='0,0001';
stringgrid3.cells[k,0]:=stringgrid1.cells[k,0];
end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin

    if CheckBox3.Checked=true then
       begin
       enterperiod(form1);
          Label2.Enabled:=true;
          Label3.Enabled:=true;
          Label4.Enabled:=true;
          Label5.Enabled:=true;
          Edit2.Enabled:=true;
          Edit3.Enabled:=true;
          stringgrid1.FixedRows:=1;
       end
       else
       begin
          Label2.Enabled:=false;
          Label3.Enabled:=false;
          Label4.Enabled:=false;
          Label5.Enabled:=false;
          Edit2.Enabled:=false;
          Edit3.Enabled:=false;
          stringgrid1.FixedRows:=0;
       end;
edit9change(form1);
end;


procedure TForm1.RadioButton2Click(Sender: TObject);
begin
    if RadioButton2.Checked=true then
      begin
          CheckBox3.Enabled:=false;
          SpinEdit1.Enabled:=false;
          Label1.Enabled:=false;
          Label2.Enabled:=false;
          Label3.Enabled:=false;
          Label4.Enabled:=false;
          stringgrid1.Enabled:=false;
          Label3.Enabled:=false;
          Edit2.Enabled:=false;
          Edit3.Enabled:=false;
          Edit6.Enabled:=true;
          Button5.Enabled:=true;
       end;
edit9change(form1);       
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
     if RadioButton1.Checked=true then
       begin
          CheckBox3.Enabled:=true;
          SpinEdit1.Enabled:=true;
          Label1.Enabled:=true;
          stringgrid1.Enabled:=true;
          Edit6.Enabled:=false;
          Button5.Enabled:=false;
          CheckBox3Click(CheckBox3);
       end;
edit9change(form1);
end;


procedure TForm1.Button5Click(Sender: TObject);
var k:integer;
begin
     if opendialog1.Execute then
     Edit6.text:=opendialog1.FileName;
ReadFromFile;
StringGrid2.colcount:=nm+2;
StringGrid3.colcount:=nm+2;
for k:=1 to nm+1 do begin
stringgrid2.cells[k,0]:=floattostrf(x[k],fffixed,10,toc);
stringgrid2.cells[k,1]:='0,0001';
stringgrid3.cells[k,0]:=floattostrf(x[k],fffixed,10,toc);
end;
edit9change(form1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
Eval;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 sgraph.Show;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
close;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
 sgraph.Show;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
Form2.Show;
end;



procedure TForm1.Button3Click(Sender: TObject);
var f1:textfile;
i:integer;
v:real;
begin
if sp2=true then begin
assignfile(f1,'sglad.spr');
rewrite(f1);
writeln(f1,'*X, м');
for i:=1 to km do
write(f1,sx[i]:0:toc,#9);
writeln(f1);
writeln(f1,'*F(x), м');
for i:=1 to km do
write(f1,sg[i]:0:toc,#9);
writeln(f1);
writeln(f1,'*F`(x)');
for i:=1 to km do
write(f1,sg1[i]:0:toc,#9);
writeln(f1);
writeln(f1,'*F"(x), 1/м');
for i:=1 to km do
write(f1,sg2[i]:0:toc,#9);
writeln(f1);
writeln(f1,'*Напруження(x), МПа');
for i:=1 to km do
write(f1,sig[i]:0:toc,#9);
writeln(f1);
closefile(f1);
end;
if sp1=true then begin
assignfile(f1,'simple.spr');
rewrite(f1);
writeln(f1,'*X, м');
for i:=1 to km do
write(f1,zx[i]:0:toc,#9);
writeln(f1);
writeln(f1,'*F(x), м');
for i:=1 to km do
write(f1,zg[i]:0:toc,#9);
writeln(f1);
writeln(f1,'*F`(x)');
for i:=1 to km do
write(f1,zg1[i]:0:toc,#9);
writeln(f1);
writeln(f1,'*F"(x), 1/м');
for i:=1 to km do
write(f1,zg2[i]:0:toc,#9);
writeln(f1);
writeln(f1,'*Напруження(x), МПа');
for i:=1 to km do
write(f1,zig[i]:0:toc,#9);
writeln(f1);
closefile(f1);
end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Eval;
if vis then yb:=true
else zb:=true;
button1.enabled:=true;
button2.enabled:=true;
button3.enabled:=true;
end;


procedure TForm1.Button7Click(Sender: TObject);
begin
     if opendialog2.Execute then
     Edit10.text:=opendialog2.FileName;
     edit9change(form1);
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
if  CheckBox4.checked=false then
        begin
        radiobutton4.enabled:=false;
        radiobutton3.enabled:=false;
        edit10.enabled:=false;
        stringgrid3.enabled:=false;
        button7.enabled:=false;
        end
else
        begin
        radiobutton4.enabled:=true;
        radiobutton3.enabled:=true;
        edit10.enabled:=true;
        stringgrid3.enabled:=true;
        button7.enabled:=true;
        RadioButton4Click(RadioButton4);
        RadioButton3Click(RadioButton3);
        end;
edit9change(form1);        
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if  CheckBox2.checked=false then
        begin
        checkbox4.enabled:=false;
        radiobutton4.enabled:=false;
        radiobutton3.enabled:=false;
        edit10.enabled:=false;
        stringgrid3.enabled:=false;
        button7.enabled:=false;
        end
else
        begin
        checkbox4.enabled:=true;
        CheckBox4Click(CheckBox4);
        end;
edit9change(form1);        
end;


procedure TForm1.RadioButton4Click(Sender: TObject);
begin
     if RadioButton4.Checked=true then
       begin
          stringgrid3.Enabled:=false;
          Button7.Enabled:=true;
          Edit10.Enabled:=true;
       end;
edit9change(form1);       
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
     if RadioButton3.Checked=true then
       begin
          stringgrid3.Enabled:=true;
          Button7.Enabled:=false;
          Edit10.Enabled:=false;
       end;
edit9change(form1);       
end;

procedure TForm1.RadioButton5Click(Sender: TObject);
begin
if   RadioButton5.checked=true then begin
    RadioButton8.enabled:=false;
    RadioButton9.enabled:=false;
    RadioButton10.enabled:=false;
    RadioButton11.enabled:=false;
    label13.enabled:=false;
    label14.enabled:=false;
    label15.enabled:=false;
    label16.enabled:=false;
    edit12.enabled:=false;
    edit13.enabled:=false;
    edit14.enabled:=false;
    edit15.enabled:=false;
end;
edit9change(form1);
end;

procedure TForm1.RadioButton6Click(Sender: TObject);
begin 
if  RadioButton6.checked=true then begin
    RadioButton8.enabled:=false;
    RadioButton9.enabled:=false;
    RadioButton10.enabled:=true;
    RadioButton11.enabled:=true;
    RadioButton10Click(RadioButton10);
    RadioButton11Click(RadioButton11);
    label15.enabled:=false;
    label16.enabled:=false;
    edit14.enabled:=false;
    edit15.enabled:=false;
end;
edit9change(form1);
end;

procedure TForm1.RadioButton7Click(Sender: TObject);
begin
if  RadioButton7.checked=true then begin
    RadioButton10.enabled:=false;
    RadioButton11.enabled:=false;
    RadioButton8.enabled:=true;
    RadioButton9.enabled:=true;
    RadioButton8Click(RadioButton8);
    RadioButton9Click(RadioButton9);
    label13.enabled:=false;
    label14.enabled:=false;
    edit12.enabled:=false;
    edit13.enabled:=false;
end;
edit9change(form1);
end;

procedure TForm1.RadioButton10Click(Sender: TObject);
begin
if   RadioButton10.checked=true then begin
    label13.enabled:=false;
    label14.enabled:=false;
    edit12.enabled:=false;
    edit13.enabled:=false;
end;
edit9change(form1);
end;

procedure TForm1.RadioButton11Click(Sender: TObject);
begin
if   RadioButton11.checked=true then begin
    label13.enabled:=true;
    label14.enabled:=true;
    edit12.enabled:=true;
    edit13.enabled:=true;
end;
edit9change(form1);
end;

procedure TForm1.RadioButton9Click(Sender: TObject);
begin
if   RadioButton9.checked=true then begin
    label15.enabled:=false;
    label16.enabled:=false;
    edit14.enabled:=false;
    edit15.enabled:=false;
end;
edit9change(form1);
end;

procedure TForm1.RadioButton8Click(Sender: TObject);
begin
if   RadioButton8.checked=true then begin
    label15.enabled:=true;
    label16.enabled:=true;
    edit14.enabled:=true;
    edit15.enabled:=true;
end;
edit9change(form1);
end;


procedure TForm1.FormShow(Sender: TObject);
begin
stringgrid1.Cells[0,0]:='X, м';
stringgrid1.Cells[0,1]:='Fпоч, м';
stringgrid1.Cells[0,2]:='Fкін, м';
stringgrid2.Cells[0,0]:='X, м';
stringgrid2.Cells[0,1]:='P';
stringgrid3.Cells[0,0]:='X, м';
stringgrid3.Cells[0,1]:='Sigma, МПа';
end;

procedure TForm1.Edit9Change(Sender: TObject);
begin
button1.enabled:=false;
button2.enabled:=false;
button3.enabled:=false;
end;

procedure TForm1.StringGrid3SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
begin
edit9change(form1);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
if (vis and (yb=false)) or ((vis=false) and (zb=false)) then
edit9change(form1);
end;

end.
