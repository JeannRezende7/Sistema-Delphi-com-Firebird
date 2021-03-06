unit uForm_configBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uBiblioteca, uform_main;

type
  Tfrm_configBanco = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    edtLocal: TEdit;
    Button1: TButton;
    openPastas: TOpenDialog;
    procedure Button1Click(Sender: TObject);
  private
    procedure Configura;
  public
    { Public declarations }
  end;

var
  frm_configBanco: Tfrm_configBanco;

implementation

{$R *.dfm}

{ Tftm_configBanco }

procedure Tfrm_configBanco.Button1Click(Sender: TObject);
begin

Configura;

end;

procedure Tfrm_configBanco.Configura;
var
  vFileName: string;
begin
if openPastas.Execute then
begin
edtLocal.Text := openPastas.FileName;

vFileName := ('C:\ProgramData\Sistema Delphi\'+'config.ini');

//vFileName := ('C:\Users\Positivo\AppData\Local\Temp\hidelphi\'+'config.ini');

//vFileName := ExtractFilePath(application.ExeName+'config.ini');
SetValorIni(vFileName,'CONFIGURACAO','LOCAL_DB',edtLocal.Text);
ShowMessage('Tudo ok!');
Application.Terminate;
end;


end;

end.
