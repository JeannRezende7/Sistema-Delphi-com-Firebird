program p_sistema;

uses
  Vcl.Forms,
  uform_main in 'Forms\uform_main.pas' {f_principal},
  UdmDados in 'Forms\UdmDados.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_principal, f_principal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
