program p_sistema;

uses
  Vcl.Forms,
  uform_main in 'Forms\uform_main.pas' {f_principal},
  UdmDados in 'Forms\UdmDados.pas' {dm_dados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  uForm_configBanco in 'Forms\uForm_configBanco.pas' {frm_configBanco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_principal, f_principal);
  Application.CreateForm(Tfrm_configBanco, frm_configBanco);
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.Run;
end.
