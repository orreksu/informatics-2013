unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  f:TStringList ;
implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin

  f:=TstringList.Create();
  f.LoadFromFile('user2.dat');
Label8.Caption:=f.Strings[3];
  f.Free

end;

end.
