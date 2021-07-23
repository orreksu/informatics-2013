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
    Action4: TAction;
    CustomizeActionBars1: TCustomizeActionBars;
    MainMenu1: TMainMenu;
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
    Action5: TAction;
    Action6: TAction;
    Action9: TAction;
    Action10: TAction;
    Action11: TAction;
    Action12: TAction;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
    Label23: TLabel;
    Label25: TLabel;
    Action2: TAction;
    Label24: TLabel;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f:TStringList ;
  q:TextFile;
  k,k1,k2,k3,Ku,
  COI,Dkg,Gxo,XO,P,V,I,
  GK,cGK,Dps,Y,COIm:real;
  DT:char;
  n:integer;

implementation

uses Unit2, Unit3, DateUtils, Unit4;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

  if FileExists('user.dat') then
   begin
  f:=TstringList.Create();
  f.LoadFromFile('user.dat');
k1:=strtofloat(f.Strings[2]);
k2:=strtofloat(f.Strings[3]);
k3:=strtofloat(f.Strings[4]);
Ku:=strtofloat(f.Strings[5]);
P:=strtofloat(f.Strings[1]);
Label2.Caption:=f.Strings[0];
Label16.Caption:=f.Strings[1]+' ��';
Label7.Caption:=f.Strings[2];
Label8.Caption:=f.Strings[3];
Label9.Caption:=f.Strings[4];
Label19.Caption:=f.Strings[5];
COIm:=strtofloat (f.Strings[6]);
 f.Free;
 if HourOf(Now)<12
  then
  RadioButton3.Checked:=true
  else
    if HourOf(Now)<17
    then
    RadioButton4.Checked:=true
    else
      RadioButton5.Checked:=true;

 if RadioButton3.Checked then k:=k1 else
if  RadioButton4.Checked then k:=k2
else k:=k3;

 Gxo:=Ku-8.4;
 Dkg:=Gxo/(0.07*P);
 COI:=Dkg/k;
 if RadioButton6.Checked=false then COIm:=COI*100/18 ;
 RadioButton7.Checked:=true;


Label22.Caption:=floattostr (Round(COIm*10)/10);
  end else
   begin
   with TStringList.Create do 
try
// ���������� � ������ ���� ����� 
 Add('����� ������������');
 Add('0');
 Add('0');
 Add('0');
 Add('0');
 Add('0');
 Add('0');
// ���������� ������ � ����
 SaveToFile('user.dat');
finally
// ����������� ����������� �������
 Free;
end;
  ShowMessage('�� ����� ����������. ������ ��������� ��� ���������� ����! (������ "����������")');
   end;




end;

procedure TForm1.N13Click(Sender: TObject);
begin
 ShowMessage('��������� ���������� �������������� ��� �������'+#13#10+'Diahelp 2013  ver. 1.2.4.'+#13#10+'�����: ˳��� �.�.'+#13#10+'ó�fpsz @Ghtcnb;@')
end;

procedure TForm1.RadioButton6Click(Sender: TObject);
begin
  f:=TstringList.Create();
  f.LoadFromFile('user.dat');
  COIm:=strtofloat (f.Strings[6]);
  f.Free;

  Label22.Caption:=floattostr (Round(COIm*10)/10);
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
COI:=strtofloat (f.Strings[6]);
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
 if Edit1.Text='' then ShowMessage('������ ����� �������!')
 else GK:=strtofloat (Edit1.Text);
 if Edit3.Text='' then ShowMessage('������ ����� ������� �������!')
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

  Gxo:=Ku-8.4;
 Dkg:=Gxo/(0.07*P);
 COIm:=strtofloat(label22.Caption);

if GK=cGK then
Dps:=0 else Dps:=COIm/(GK-cGK);
I:=k*XO;
V:=I+Dps;
if GK>10 then MessageDlg ('�������� �� �� �������������!', mtWarning, [mbOk], 0);
if RadioButton2.Checked=true then Label25.Caption:=floattostr (Round(V*10)/10);
if RadioButton1.Checked=true then Label25.Caption:=floattostr (Round(V*100)/100);

Label24.Caption:=floattostr (Round(Dps*100)/100);

case MessageBox(Self.Handle,'�������� ����������� ���� � ����?','',MB_YESNO + MB_ICONQUESTION+ MB_APPLMODAL) of
IDNO :
 begin
  end;
IDYES:
begin
if RadioButton3.Checked then DT:='�'
 else if  RadioButton4.Checked then DT:='�'
 else DT:='�';

 f:=TstringList.Create();
  f.LoadFromFile('user2.dat');
  f.Add(DateToStr(today)+'  '+TimeToStr(now)+'    ' +DT+ '     '+
    floattostr(GK)+ '    '+floattostr(XO)+ ' 	    '+floattostr(cGK)
    + ' 	    '+floattostr(Round(V*100)/100));
 f.SaveToFile('user2.dat');
 f.Free
end;
end;
end;

procedure TForm1.Action5Execute(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.Action6Execute(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form2.ShowModal;
  begin
  f:=TstringList.Create();
  f.LoadFromFile('user.dat');
  Label2.Caption:=f.Strings[0];
  Label16.Caption:=f.Strings[1]+' ��';
  f.Free
  end;
end;

procedure TForm1.Action2Execute(Sender: TObject);
begin
case MessageBox(Self.Handle,'�������� ����������� ���� � ����?','',MB_YESNO + MB_ICONQUESTION+ MB_APPLMODAL) of
IDNO :
 begin
  end;
IDYES:
begin
if RadioButton3.Checked then DT:='�'
 else if  RadioButton4.Checked then DT:='�'
 else DT:='�';

 f:=TstringList.Create();
  f.LoadFromFile('user2.dat');
  f.Add(DateToStr(today)+'  '+TimeToStr(now)+'    ' +DT+ '     '+
    floattostr(GK)+ '    '+floattostr(XO)+ ' 	    '+floattostr(cGK)
    + ' 	    '+floattostr(Round(V*100)/100));
 f.SaveToFile('user2.dat');
 f.Free
end;
end;
end;

procedure TForm1.Action4Execute(Sender: TObject);
begin
close;
end;

procedure TForm1.Action10Execute(Sender: TObject);
begin
 ShowMessage('��������� ���������� �������������� ��� �������'+#13#10+'Diahelp 2013  ver. 1.2.4.'+#13#10+'�����: ˳��� �.�.'+#13#10
 +'ó����� "�������"')
end;

procedure TForm1.Action1Execute(Sender: TObject);
begin
Form4.Memo1.Lines.LoadFromFile('user2.dat');
Form4.ShowModal;
end;

end.
