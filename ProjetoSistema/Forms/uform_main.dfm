object f_principal: Tf_principal
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Tela Inicial'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\ProjetosDelphi\Aprenda a criar um sistema em delphi ' +
        'do in'#237'cio ao fim\ProjetoCurso\BancoDeDados\BASE_FIREBIRD.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Left = 200
    Top = 72
  end
end
