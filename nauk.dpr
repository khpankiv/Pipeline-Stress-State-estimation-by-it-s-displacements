program nauk;

uses
  Forms,
  main in 'main.pas' {Form1},
  data in 'data.pas',
  Results in 'Results.pas' {Form2},
  Execute in 'Execute.pas',
  splin in 'splin.pas' {sgraph},
  elipt in 'elipt.pas' {Form3},
  napruz in 'napruz.pas' {Form4},
  grafik in 'grafik.pas' {Form6},
  splash in 'splash.pas' {Form_splash},
  pereriz in 'pereriz.pas' {Form5};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm_splash, Form_splash);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tsgraph, sgraph);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
