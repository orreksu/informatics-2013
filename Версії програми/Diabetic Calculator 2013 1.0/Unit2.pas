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
    procedure Button1Click(Sender: TObject);
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
f.LoadFromFile('filename.txt');
if f.Count>=0 then
 f.Strings[0]:=Edit1.Text;
if f.Count>=1 then
 f.Strings[1]:=Edit2.Text;
 f.SaveToFile('filename.txt');
 f.Free;
 close;
end;

end.
