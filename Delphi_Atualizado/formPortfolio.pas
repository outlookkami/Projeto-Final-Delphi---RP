unit formPortfolio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.jpeg, Vcl.Skia;

type
  TformVerPortfolio = class(TForm)
    pnlPortfolio: TPanel;
    lblPortfolio: TLabel;
    GridPanel1: TGridPanel;
    pnlPort1: TPanel;
    imgPort1: TImage;
    MemoInfoPort1: TMemo;
    lblV1: TLabel;
    Panel1: TPanel;
    MemoInfoPort2: TMemo;
    lblV2: TLabel;
    Panel2: TPanel;
    imgPort3: TImage;
    MemoInfoPort3: TMemo;
    lblV3: TLabel;
    lblV4: TLabel;
    lblV5: TLabel;
    lblV6: TLabel;
    lblV7: TLabel;
    Panel3: TPanel;
    imgPort4: TImage;
    MemoInfoPort4: TMemo;
    lblV8: TLabel;
    Panel4: TPanel;
    imgPort5: TImage;
    MemoInfoPort5: TMemo;
    lblV9: TLabel;
    Panel5: TPanel;
    imgPort6: TImage;
    MemoInfoPort6: TMemo;
    Image1: TImage;
    Image2: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formVerPortfolio: TformVerPortfolio;

implementation

{$R *.dfm}

end.
