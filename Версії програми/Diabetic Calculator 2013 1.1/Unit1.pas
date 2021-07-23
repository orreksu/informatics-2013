unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ImgList, XPStyleActnCtrls, ActnList,
  ActnMan, ActnCtrls, ActnMenus, BandActn, StdCtrls, ExtCtrls, OleServer, WordXP,
  StdStyleActnCtrls;

type
  TForm1 = class(TForm)
    StatusBar2: TStatusBar;
    ActionToolBar1: TActionToolBar;
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    Action1: TAction;
    Action2: TAction;
    Action4: TAction;
    Action3: TAction;
    CustomizeActionBars1: TCustomizeActionBars;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Customize1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    Action11: TAction;
    Action12: TAction;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button2: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Button3: TButton;
    Button1: TButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label17: TLabel;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure Action11Execute(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f:TStringList ;
  k,k1,k2,k3,Ku,
  COI,Dkg,Gxo,XO,P,
  GK,cGK,kXO,t:real;
implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.Action10Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action11Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action12Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action1Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action2Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action3Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action4Execute(Sender: TObject);
begin
close;
end;



procedure TForm1.Action5Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action6Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action7Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action8Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Action9Execute(Sender: TObject);
begin
//
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 XO:=strtofloat (Edit2.Text);
 GK:=strtofloat (Edit1.Text);
 cGK:=strtofloat (Edit3.Text);

  f:=TstringList.Create();
  f.LoadFromFile('user.dat');
k1:=strtofloat(f.Strings[2]);
k2:=strtofloat(f.Strings[3]);
k3:=strtofloat(f.Strings[4]);
Ku:=strtofloat(f.Strings[5]);
P:=strtofloat(f.Strings[1]);
 f.Free;

if t=1 then k:=k1 else
  if t=2 then  k:=k2 else
  k:=k3;

kXO:=XO*Ku;
Gxo:=kXO-8,4


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form3.ShowModal;
  f:=TstringList.Create();
  f.LoadFromFile('user.dat');
  Label7.Caption:=f.Strings[2];
  Label8.Caption:=f.Strings[3];
  Label9.Caption:=f.Strings[4];
  Label19.Caption:=f.Strings[5];
  f.Free
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form2.ShowModal;
  begin
  f:=TstringList.Create();
  f.LoadFromFile('user.dat');
  Label2.Caption:=f.Strings[0];
  Label16.Caption:=f.Strings[1]+' Í„';
  f.Free
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  f:=TstringList.Create();
  f.LoadFromFile('user.dat');
  Label2.Caption:=f.Strings[0];
  Label16.Caption:=f.Strings[1]+' Í„';
  Label7.Caption:=f.Strings[2];
  Label8.Caption:=f.Strings[3];
  Label9.Caption:=f.Strings[4];
  Label19.Caption:=f.Strings[5];
  f.Free
end;

procedure TForm1.N10Click(Sender: TObject);
begin
//
end;

procedure TForm1.N11Click(Sender: TObject);
begin
//
end;

procedure TForm1.N13Click(Sender: TObject);
begin
//
end;

procedure TForm1.N14Click(Sender: TObject);
begin
//
end;

procedure TForm1.N15Click(Sender: TObject);
begin
//
end;

procedure TForm1.N16Click(Sender: TObject);
begin
//
end;

procedure TForm1.N9Click(Sender: TObject);
begin
//
end ;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
//
end;

end.
