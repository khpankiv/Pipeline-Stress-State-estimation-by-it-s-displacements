unit Execute;
{����� ������ ���� ���������� �� ����������
 � ��������� �� ����� CheckBox � main.pas
 ������������� ����� ���������� ������� �����������,
 �� ������ �������� ��� ����������� �������� �����}

interface

uses Windows, Messages, SysUtils, Classes,
     StdCtrls, ExtCtrls, Menus,splin;
     procedure Eval;
implementation

uses   main, data, spline ;

{��������� ����������}
procedure Eval;
var k,i:integer;
begin
   getsp;
   EnterPohybka;
   less:=true;
   if Form1.RadioButton1.Checked=true  then
      EnterManualData
   else
        ReadFromFile;
   if form1.CheckBox2.checked=true then begin
   if form1.CheckBox4.Checked=true then
   begin
        if Form1.RadioButton4.Checked=true  then
                ReadFromFileEtalon
        else
                Enter_Naprug;
   end
   else
        Enter_P;
   end;
   Count;

end;

end.

