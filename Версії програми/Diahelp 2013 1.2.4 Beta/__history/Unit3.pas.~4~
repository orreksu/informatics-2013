unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  f:TStringList;
implementation

{$R *.dfm}


procedure TForm3.Button1Click(Sender: TObject);
begin
f:=TStringList.Create();
f.LoadFromFile('user.dat');
if f.Count>=2 then
 f.Strings[2]:=Edit1.Text;
if f.Count>=3 then
 f.Strings[3]:=Edit2.Text;
if f.Count>=4 then
 f.Strings[4]:=Edit3.Text;
if f.Count>=5 then
 f.Strings[5]:=Edit4.Text;
 if f.Count>=6 then
 f.Strings[6]:=Edit5.Text;
 f.SaveToFile('user.dat');
 f.Free;
 close;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
f:=TStringList.Create();
f.LoadFromFile('user.dat');
Edit1.Text:= f.Strings[2];
Edit2.Text:= f.Strings[3];
Edit3.Text:= f.Strings[4];
Edit4.Text:= f.Strings[5];
Edit5.Text:= f.Strings[6];
 f.Free;
end;

end.
