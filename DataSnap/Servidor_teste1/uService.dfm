object Service1: TService1
  OldCreateOrder = False
  DisplayName = 'Servidor de teste'
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 188
  Width = 285
  object Server: TDSServer
    AutoStart = False
    HideDSAdmin = False
    Left = 96
    Top = 72
  end
  object ServerTransport: TDSTCPServerTransport
    PoolSize = 0
    Server = Server
    BufferKBSize = 32
    Filters = <>
    Left = 152
    Top = 40
  end
end
