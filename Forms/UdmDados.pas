unit UdmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  uForm_configBanco, uBiblioteca, Vcl.Forms,Vcl.Dialogs;

type
  Tdm_dados = class(TDataModule)
    fd_conexao: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure CarregaBanco;
  public
    { Public declarations }
  end;

var
  dm_dados: Tdm_dados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm_dados.CarregaBanco;
begin
try
fd_conexao.Params.Database := GetValorIni(ExtractFilePath('C:\ProgramData\Sistema Delphi\'+'config.ini') + 'config.ini','CONFIGURACAO','LOCAL_DB');

//fd_conexao.Params.Database := GetValorIni(ExtractFilePath(Application.ExeName) + 'config.ini','CONFIGURACAO','LOCAL_DB');

fd_conexao.Connected := true;
except
ShowMessage('Houve um erro no arquivo de configuração,por favor insira o diretório da base novamente!!');
uForm_configBanco.frm_configBanco.ShowModal;

end;
end;

procedure Tdm_dados.DataModuleCreate(Sender: TObject);
begin
CarregaBanco;
end;

end.
