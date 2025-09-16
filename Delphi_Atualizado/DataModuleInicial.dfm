object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object ZConnectionPG: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    SQLHourGlass = True
    DisableSavepoints = False
    HostName = ''
    Port = 0
    Database = 'ProjetoDelphiJLA'
    User = 'postgres'
    Password = 'root'
    Protocol = 'postgresql'
    LibraryLocation = 
      'C:\Users\Kamilly Souza\Desktop\Projeto Delphi - JLA\Delphi_Atual' +
      'izado\Banco de Dados\lib\libpq.dll'
    Left = 160
    Top = 104
  end
end
