unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Memo1: TMemo;
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
  Memo1.Lines.LoadFromFile('user2.dat')
end;

end.
