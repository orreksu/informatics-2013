unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
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


procedure TForm3.FormCreate(Sender: TObject);
begin
Memo1.Lines.LoadFromFile('readme.txt');
end;

end.
