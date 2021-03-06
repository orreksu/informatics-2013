unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ImgList, XPStyleActnCtrls, ActnList,
  ActnMan, ActnCtrls, ActnMenus, BandActn, StdCtrls, ExtCtrls, OleServer, WordXP,
  StdStyleActnCtrls, CustomizeDlg, OutlookXP;

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
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Label20: TLabel;
    GroupBox3: TGroupBox;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Label21: TLabel;
    Label22: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label23: TLabel;
    Label24: TLabel;
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
    procedure FormCreate(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f:TStringList ;
  k,k1,k2,k3,Ku,
  COI,Dkg,Gxo,XO,P,V,I,
  GK,cGK,Dps,Y,COIm:real;
implementation

uses Unit2, Unit3, DateUtils;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

  f:=TstringList.Create();
  f.LoadFromFile('user.dat');
k1:=strtofloat(f.Strings[2]);
k2:=strtofloat(f.Strings[3]);
k3:=strtofloat(f.Strings[4]);
Ku:=strtofloat(f.Strings[5]);
P:=strtofloat(f.Strings[1]);
 f.Free;

 if RadioButton3.Checked then k:=k1 else
if  RadioButton4.Checked then k:=k2
else k:=k3;

 Gxo:=Ku-8.4;
 Dkg:=Gxo/(0.07*P);
 COI:=Dkg/k;
 if RadioButton6.Checked then COI:=strtofloat (f.Strings[6])
  else COIm:=COI*100/18 ; RadioButton7.Checked:=true;

  Label22.Caption:=floattostr (Round(COIm*10)/10);

  if HourOf(Now)<12
  then
  RadioButton3.Checked:=true
  else
    if HourOf(Now)<17
    then
    RadioButton4.Checked:=true
    else
      RadioButton5.Checked:=true;

  f:=TstringList.Create();
  f.LoadFromFile('user.dat');
Label2.Caption:=f.Strings[0];
Label16.Caption:=f.Strings[1]+' ??';
Label7.Caption:=f.Strings[2];
Label8.Caption:=f.Strings[3];
Label9.Caption:=f.Strings[4];
Label19.Caption:=f.Strings[5];
  f.Free

end;

procedure TForm1.RadioButton6Click(Sender: TObject);
begin
  f:=TstringList.Create();
  f.LoadFromFile('user.dat');
  COI:=strtofloat (f.Strings[6]);
  f.Free;

  Label22.Caption:=floattostr (Round(COI*10)/10);
end;

procedure TForm1.RadioButton7Click(Sender: TObject);
begin
f:=TstringList.Create();
  f.LoadFromFile('user.dat');
k1:=strtofloat(f.Strings[2]);
k2:=strtofloat(f.Strings[3]);
k3:=strtofloat(f.Strings[4]);
Ku:=strtofloat(f.Strings[5]);
P:=strtofloat(f.Strings[1]);
 f.Free;
  Gxo:=Ku-8.4;
  Dkg:=Gxo/(0.07*P);
  COI:=Dkg/k;
  COIm:=COI*100/18;

  Label22.Caption:=floattostr (Round(COIm*10)/10);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if Edit2.Text='' then XO:=0
 else XO:=strtofloat (Edit2.Text);
 if Edit1.Text='' then ShowMessage('??????? ?????? ???????!')
 else GK:=strtofloat (Edit1.Text);
 if Edit3.Text='' then ShowMessage('??????? ?????? ???????? ???????!')
 else cGK:=strtofloat (Edit3.Text);

  f:=TstringList.Create();
  f.LoadFromFile('user.dat');
k1:=strtofloat(f.Strings[2]);
k2:=strtofloat(f.Strings[3]);
k3:=strtofloat(f.Strings[4]);
 f.Free;

 if RadioButton3.Checked then k:=k1
 else if  RadioButton4.Checked then k:=k2
 else k:=k3;

if GK=cGK then
ShowMessage
('??????? ???????? ????? ??????? ?? ??????? ?????????? ? ???????? ?????????.')
else Dps:=COI/(GK-cGK);
I:=k*XO;
V:=I+Dps;
if GK>10 then Label20.Caption:='???????? ??? ?? ?????????????!';
if RadioButton2.Checked=true then Edit4.Text:=floattostr (Round(V*10)/10);
if RadioButton1.Checked=true then Edit4.Text:=floattostr (Round(V*100)/100);

Edit5.Text:=floattostr (Dps);
Edit6.Text:=floattostr (I);
end;

procedure TForm1.Action5Execute(Sender: TObject);
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
  Label16.Caption:=f.Strings[1]+' ??';
  f.Free
  end;
end;

procedure TForm1.Action4Execute(Sender: TObject);
begin
close;
end;

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
