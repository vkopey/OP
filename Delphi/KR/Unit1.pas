unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Label11: TLabel;
    Edit11: TEdit;
    Label12: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    MainMenu1: TMainMenu;
    SaveDialog1: TSaveDialog;
    File1: TMenuItem;
    About1: TMenuItem;
    Save1: TMenuItem;
    Exit1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
  Unit2;

function f(x: Real): Real;
const i = 0;
begin
  f := (i + x) / (-i + 2.5 * i + x) + power(sin(x + pi / 2), (i + 1));
end;

function g(x, a, b: Real): Real;
begin
  if (x < a) then g := 0
  else if x <= b then g := f(x)
  else g := x;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b, x: Real;
begin
  a := StrToFloat(Edit2.Text);
  b := StrToFloat(Edit3.Text);
  x := StrToFloat(Edit1.Text);
  Edit4.Text := FloatToStrF(f(x), ffFixed, 10, 4);
  Edit5.Text := FloatToStrF(g(x, a, b), ffFixed, 10, 4);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  xmin, xmax, dx, x, y, ymin, ymax, sum: Real;
begin
  xmin := StrToFloat(Edit6.Text);
  xmax := StrToFloat(Edit7.Text);
  dx := StrToFloat(Edit8.Text);
  x := xmin;
  sum := 0;
  ymin := f(x);
  ymax := f(x);
  while x <= xmax do
  begin
    y := f(x);
    Memo1.Lines.Add(FloatToStrF(x, ffFixed, 10, 4) + '   ' + FloatToStrF(y, ffFixed, 10, 4));
    Form2.Series1.AddXY(x, y);
    sum := sum + y * dx;
    if y < ymin then ymin := y;
    if y > ymax then ymax := y;
    x := x + dx;
  end;
  Edit9.Text := FloatToStr(ymin);
  Edit10.Text := FloatToStr(ymax);
  Edit11.Text := FloatToStrF(sum, ffFixed, 10, 4);
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;


procedure TForm1.Button4Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.About1Click(Sender: TObject);
begin
  Application.MessageBox('Програма для' + #13#10 + 'дослідження функції' + #13#10 + 'Автор: Копей В.', 'Про програму', MB_OK);
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
 Button3Click(Button3);
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
   Close;
end;

end.
