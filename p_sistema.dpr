program p_sistema;

uses
  Vcl.Forms,
  uform_main in 'Forms\uform_main.pas' {f_principal},
  UdmDados in 'Forms\UdmDados.pas' {dm_dados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_principal, f_principal);
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.Run;
end.
