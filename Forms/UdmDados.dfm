object dm_dados: Tdm_dados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 481
  Width = 731
  object fd_conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\ProjetosDelphi\Aprenda a criar um sistema em delphi ' +
        'do in'#237'cio ao fim\ProjetoCurso\BancoDeDados\BASE_FIREBIRD.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Left = 32
    Top = 424
  end
end
