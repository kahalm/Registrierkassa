// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://finanzonline.bmf.gv.at/fonws/ws/sessionService.wsdl
//  >Import : https://finanzonline.bmf.gv.at/fonws/ws/sessionService.wsdl>0
//  >Import : https://finanzonline.bmf.gv.at/fonws/ws/session.xsd
// Encoding : UTF-8
// Version  : 1.0
// (25.05.2021 10:56:41 - - $Rev: 103843 $)
// ************************************************************************ //

unit sessionService;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  loginResponse        = class;                 { "https://finanzonline.bmf.gv.at/fon/ws/session"[Lit][GblElm] }
  logoutResponse       = class;                 { "https://finanzonline.bmf.gv.at/fon/ws/session"[Lit][GblElm] }
  logoutRequest        = class;                 { "https://finanzonline.bmf.gv.at/fon/ws/session"[Lit][GblElm] }
  loginRequest         = class;                 { "https://finanzonline.bmf.gv.at/fon/ws/session"[Lit][GblElm] }



  // ************************************************************************ //
  // XML       : loginResponse, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/fon/ws/session
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  loginResponse = class(TRemotable)
  private
    Fid: string;
    Frc: Integer;
    Fmsg: string;
    Fmsg_Specified: boolean;
    procedure Setmsg(Index: Integer; const Astring: string);
    function  msg_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property id:  string   read Fid write Fid;
    property rc:  Integer  read Frc write Frc;
    property msg: string   Index (IS_OPTN) read Fmsg write Setmsg stored msg_Specified;
  end;

  benid           =  type string;      { "https://finanzonline.bmf.gv.at/fon/ws/session"[Smpl] }
  id              =  type string;      { "https://finanzonline.bmf.gv.at/fon/ws/session"[Smpl] }


  // ************************************************************************ //
  // XML       : logoutResponse, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/fon/ws/session
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  logoutResponse = class(TRemotable)
  private
    Frc: Integer;
    Fmsg: string;
    Fmsg_Specified: boolean;
    procedure Setmsg(Index: Integer; const Astring: string);
    function  msg_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property rc:  Integer  read Frc write Frc;
    property msg: string   Index (IS_OPTN) read Fmsg write Setmsg stored msg_Specified;
  end;

  tid             =  type string;      { "https://finanzonline.bmf.gv.at/fon/ws/session"[Smpl] }


  // ************************************************************************ //
  // XML       : logoutRequest, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/fon/ws/session
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  logoutRequest = class(TRemotable)
  private
    Ftid: tid;
    Fbenid: benid;
    Fid: id;
  public
    constructor Create; override;
  published
    property tid:   tid    read Ftid write Ftid;
    property benid: benid  read Fbenid write Fbenid;
    property id:    id     read Fid write Fid;
  end;

  tid2            =  type string;      { "https://finanzonline.bmf.gv.at/fon/ws/session"[Smpl] }
  herstellerid    =  type string;      { "https://finanzonline.bmf.gv.at/fon/ws/session"[Smpl] }
  pin             =  type string;      { "https://finanzonline.bmf.gv.at/fon/ws/session"[Smpl] }
  benid2          =  type string;      { "https://finanzonline.bmf.gv.at/fon/ws/session"[Smpl] }


  // ************************************************************************ //
  // XML       : loginRequest, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/fon/ws/session
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  loginRequest = class(TRemotable)
  private
    Ftid: tid2;
    Fbenid: benid2;
    Fpin: pin;
    Fherstellerid: herstellerid;
  public
    constructor Create; override;
  published
    property tid:          tid2          read Ftid write Ftid;
    property benid:        benid2        read Fbenid write Fbenid;
    property pin:          pin           read Fpin write Fpin;
    property herstellerid: herstellerid  read Fherstellerid write Fherstellerid;
  end;


  // ************************************************************************ //
  // Namespace : https://finanzonline.bmf.gv.at/fon/ws/session
  // soapAction: %operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : sessionServiceBinding
  // service   : sessionService
  // port      : session
  // URL       : https://finanzonline.bmf.gv.at:443/fonws/ws/session
  // ************************************************************************ //
  sessionServicePort = interface(IInvokable)
  ['{8CA6657A-6B71-F318-C236-C4800130FB98}']

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  login(const parameters: loginRequest): loginResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  logout(const parameters: logoutRequest): logoutResponse; stdcall;
  end;

function GetsessionServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): sessionServicePort;


implementation
  uses System.SysUtils;

function GetsessionServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): sessionServicePort;
const
  defWSDL = 'https://finanzonline.bmf.gv.at/fonws/ws/sessionService.wsdl';
  defURL  = 'https://finanzonline.bmf.gv.at:443/fonws/ws/session';
  defSvc  = 'sessionService';
  defPrt  = 'session';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as sessionServicePort);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


constructor loginResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure loginResponse.Setmsg(Index: Integer; const Astring: string);
begin
  Fmsg := Astring;
  Fmsg_Specified := True;
end;

function loginResponse.msg_Specified(Index: Integer): boolean;
begin
  Result := Fmsg_Specified;
end;

constructor logoutResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure logoutResponse.Setmsg(Index: Integer; const Astring: string);
begin
  Fmsg := Astring;
  Fmsg_Specified := True;
end;

function logoutResponse.msg_Specified(Index: Integer): boolean;
begin
  Result := Fmsg_Specified;
end;

constructor logoutRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor loginRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

initialization
  { sessionServicePort }
  InvRegistry.RegisterInterface(TypeInfo(sessionServicePort), 'https://finanzonline.bmf.gv.at/fon/ws/session', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(sessionServicePort), '%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(sessionServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(sessionServicePort), ioLiteral);
  RemClassRegistry.RegisterXSClass(loginResponse, 'https://finanzonline.bmf.gv.at/fon/ws/session', 'loginResponse');
  RemClassRegistry.RegisterSerializeOptions(loginResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(benid), 'https://finanzonline.bmf.gv.at/fon/ws/session', 'benid');
  RemClassRegistry.RegisterXSInfo(TypeInfo(id), 'https://finanzonline.bmf.gv.at/fon/ws/session', 'id');
  RemClassRegistry.RegisterXSClass(logoutResponse, 'https://finanzonline.bmf.gv.at/fon/ws/session', 'logoutResponse');
  RemClassRegistry.RegisterSerializeOptions(logoutResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(tid), 'https://finanzonline.bmf.gv.at/fon/ws/session', 'tid');
  RemClassRegistry.RegisterXSClass(logoutRequest, 'https://finanzonline.bmf.gv.at/fon/ws/session', 'logoutRequest');
  RemClassRegistry.RegisterSerializeOptions(logoutRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(tid2), 'https://finanzonline.bmf.gv.at/fon/ws/session', 'tid2', 'tid');
  RemClassRegistry.RegisterXSInfo(TypeInfo(herstellerid), 'https://finanzonline.bmf.gv.at/fon/ws/session', 'herstellerid');
  RemClassRegistry.RegisterXSInfo(TypeInfo(pin), 'https://finanzonline.bmf.gv.at/fon/ws/session', 'pin');
  RemClassRegistry.RegisterXSInfo(TypeInfo(benid2), 'https://finanzonline.bmf.gv.at/fon/ws/session', 'benid2', 'benid');
  RemClassRegistry.RegisterXSClass(loginRequest, 'https://finanzonline.bmf.gv.at/fon/ws/session', 'loginRequest');
  RemClassRegistry.RegisterSerializeOptions(loginRequest, [xoLiteralParam]);

end.