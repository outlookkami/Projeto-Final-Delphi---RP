unit unitLogoJLA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage;

type
  TformLogin = class(TForm)
    Image1: TImage;
    pnlLogin: TPanel;
    pnlLogin2: TPanel;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    lblLogin: TLabel;
    lblEspaco: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    pnlEntrar: TPanel;
    ImageList1: TImageList;
    Label1: TLabel;
    lblEspaco2: TLabel;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation

{$R *.dfm}



end.
