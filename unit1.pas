unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    C: TEdit;
    F: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure CChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.CChange(Sender: TObject);
  begin
    try
 F.Text := FloatToStr( StrToFloat(C.Text) * 9.0/5.0 + 32.0 )
 except
 F.Text := '???'
 end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
C.Text := FloatToStr(36.6);
end;
end.

