unit testeFormPageControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Panel2Click(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 1;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 0;
end;

end.
