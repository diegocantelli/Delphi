object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 150
  Width = 215
  object SoapConnection1: TSoapConnection
    Agent = 'CodeGear SOAP 1.3'
    Connected = True
    URL = 'http://localhost/Server/server.dll'
    SOAPServerIID = 'IAppServerSOAP - {C99F4735-D6D2-495C-8CA2-E53E5A439E61}'
    UseSOAPAdapter = True
    Left = 56
    Top = 48
  end
  object ZQuery1: TZQuery
    Params = <>
    Left = 144
    Top = 96
  end
  object DataSource1: TDataSource
    Left = 64
    Top = 96
  end
end
