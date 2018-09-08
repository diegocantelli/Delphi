object WebModule1: TWebModule1
  OldCreateOrder = False
  Actions = <
    item
      Default = True
      Name = 'DefaultHandler'
      PathInfo = '/'
      OnAction = WebModule1DefaultHandlerAction
    end
    item
      Name = 'actEmployees'
      PathInfo = '/employees'
      OnAction = WebModule1actEmployeesAction
    end>
  Height = 230
  Width = 415
  object Conn: TFDConnection
    Params.Strings = (
      'ConnectionDef=Crud')
    Connected = True
    LoginPrompt = False
    Left = 211
    Top = 76
  end
  object Qry: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'SELECT * FROM crud.cliente')
    Left = 211
    Top = 124
  end
end
