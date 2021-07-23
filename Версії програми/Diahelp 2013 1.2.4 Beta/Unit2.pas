unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  f:TStringList;
implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
f:=TStringList.Create();
f.LoadFromFile('user.dat');
if f.Count>=0 then
 f.Strings[0]:=Edit1.Text;
if f.Count>=1 then
 f.Strings[1]:=Edit2.Text;
 f.SaveToFile('user.dat');
if f.Count>=2 then
 f.Strings[2]:=Edit3.Text;
if f.Count>=3 then
 f.Strings[3]:=Edit4.Text;
if f.Count>=4 then
 f.Strings[4]:=Edit5.Text;
if f.Count>=5 then
 f.Strings[5]:=Edit6.Text;
if f.Count>=6 then
 f.Strings[6]:=Edit7.Text;
 f.SaveToFile('user.dat');
 f.Free;
 close;
refresh;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
f:=TStringList.Create();
f.LoadFromFile('user.dat');
Edit1.Text:=f.Strings[0];
Edit2.Text:=f.Strings[1];
Edit3.Text:= f.Strings[2];
Edit4.Text:= f.Strings[3];
Edit5.Text:= f.Strings[4];
Edit6.Text:= f.Strings[5];
Edit7.Text:= f.Strings[6];
 f.Free;
end;

end.
