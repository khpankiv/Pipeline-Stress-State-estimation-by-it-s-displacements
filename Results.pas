unit Results;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, data, shellapi, Grids;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button2: TButton;
    StringGrid3: TStringGrid;
    StringGrid1: TStringGrid;
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}
procedure TForm2.FormActivate(Sender: TObject);
var i:integer;
begin
stringgrid3.ColCount:=km+1;
stringgrid1.ColCount:=km+1;
stringgrid1.Cells[0,0]:='X, m';
stringgrid1.Cells[0,1]:='Y, m';
stringgrid1.Cells[0,2]:='Y`';
stringgrid1.Cells[0,3]:='Y``, 1/m';
stringgrid1.Cells[0,4]:='Sigma';
stringgrid3.Cells[0,0]:='X, m';
stringgrid3.Cells[0,1]:='Y, m';
stringgrid3.Cells[0,2]:='Y`';
stringgrid3.Cells[0,3]:='Y``, 1/m';
stringgrid3.Cells[0,4]:='Sigma';
for i:=1 to km do begin
stringgrid3.Cells[i,0]:=floattostrf(sx[i],fffixed,10,toc);
stringgrid3.Cells[i,1]:=floattostrf(sg[i],fffixed,10,toc);
stringgrid3.Cells[i,2]:=floattostrf(sg1[i],fffixed,10,toc);
stringgrid3.Cells[i,3]:=floattostrf(sg2[i],fffixed,10,toc);
stringgrid3.Cells[i,4]:=floattostrf(sig[i],fffixed,10,toc);
stringgrid1.Cells[i,0]:=floattostrf(zx[i],fffixed,10,toc);
stringgrid1.Cells[i,1]:=floattostrf(zg[i],fffixed,10,toc);
stringgrid1.Cells[i,2]:=floattostrf(zg1[i],fffixed,10,toc);
stringgrid1.Cells[i,3]:=floattostrf(zg2[i],fffixed,10,toc);
stringgrid1.Cells[i,4]:=floattostrf(zig[i],fffixed,10,toc);
end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
close;
end;

end.
