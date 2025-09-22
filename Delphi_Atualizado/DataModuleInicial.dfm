object dtmInicial: TdtmInicial
  Height = 480
  Width = 640
  object ConexaoPG: TZConnection
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
  object ZQuery1: TZQuery
    Params = <>
    Left = 160
    Top = 344
  end
  object ZUpdateSQL1: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 488
    Top = 200
  end
  object ZTable1: TZTable
    Left = 392
    Top = 296
  end
end
