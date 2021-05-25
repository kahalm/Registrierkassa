// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://finanzonline.bmf.gv.at/fonws/ws/regKasseService.wsdl
//  >Import : https://finanzonline.bmf.gv.at/fonws/ws/regKasseService.wsdl>0
//  >Import : https://finanzonline.bmf.gv.at/fonws/ws/regKasseWs.xsd
//  >Import : https://finanzonline.bmf.gv.at/fonws/ws/regKasse.xsd
//  >Import : https://finanzonline.bmf.gv.at/fonws/ws/verification.xsd
// Encoding : UTF-8
// Version  : 1.0
// (25.05.2021 10:13:01 - - $Rev: 103843 $)
// ************************************************************************ //

unit regKasseService;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_UNQL = $0008;
  IS_ATTR = $0010;
  IS_TEXT = $0020;
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
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:positiveInteger - "http://www.w3.org/2001/XMLSchema"[Gbl]

  output               = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  input                = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  rkdbMessage          = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  abfrage_ergebnis     = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  verificationResult   = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  zertifikatsseriennummer = class;              { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  rkdbRequest          = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[Lit][GblElm] }
  ausfall              = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  registrierung_ggs    = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  registrierung_kasse  = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  registrierung_se     = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  ausfall_kasse        = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  ausfall_se           = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  belegpruefung        = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  ausfall_ggs          = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  result               = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  ausserbetriebnahme   = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  wiederinbetriebnahme_se = class;              { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  wiederinbetriebnahme_kasse = class;           { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  wiederinbetriebnahme_ggs = class;             { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  rkdb                 = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  status_see           = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  status_kasse         = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  rkdbResponse         = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[Lit][GblElm] }
  status_ggs           = class;                 { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }

  {$SCOPEDENUMS ON}
  { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  verificationState2 = (PASS, FAIL, NOT_EXECUTED);

  { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  status = (AKTIVIERT, REGISTRIERT, IN_BETRIEB, AUSFALL);

  { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  art_uebermittlung2 = (T, P);

  { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  art_se_ggs2 = (EIGENES_HSM, SW_GGS);

  { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  art_ob2 = (UID, GLN, FASTNR);

  { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  art_se2 = (SIGNATURKARTE, EIGENES_HSM, HSM_DIENSTLEISTER);

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : output, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  output = class(TRemotable)
  private
  published
  end;

  begruendung2    =  type Integer;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  begruendung     =  type begruendung2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  verificationState =  type verificationState2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }


  // ************************************************************************ //
  // XML       : input, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  input = class(TRemotable)
  private
  published
  end;

  verificationResultList = array of verificationResult;   { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  Array_Of_registrierung_ggs = array of registrierung_ggs;   { "https://finanzonline.bmf.gv.at/rkdb"[GblUbnd] }
  Array_Of_ausfall_se = array of ausfall_se;    { "https://finanzonline.bmf.gv.at/rkdb"[GblUbnd] }
  Array_Of_wiederinbetriebnahme_se = array of wiederinbetriebnahme_se;   { "https://finanzonline.bmf.gv.at/rkdb"[GblUbnd] }
  Array_Of_registrierung_se = array of registrierung_se;   { "https://finanzonline.bmf.gv.at/rkdb"[GblUbnd] }
  Array_Of_registrierung_kasse = array of registrierung_kasse;   { "https://finanzonline.bmf.gv.at/rkdb"[GblUbnd] }
  Array_Of_wiederinbetriebnahme_ggs = array of wiederinbetriebnahme_ggs;   { "https://finanzonline.bmf.gv.at/rkdb"[GblUbnd] }
  Array_Of_result = array of result;            { "https://finanzonline.bmf.gv.at/rkdb"[GblUbnd] }
  Array_Of_rkdbMessage = array of rkdbMessage;   { "https://finanzonline.bmf.gv.at/rkdb"[GblUbnd] }
  Array_Of_ausfall_kasse = array of ausfall_kasse;   { "https://finanzonline.bmf.gv.at/rkdb"[GblUbnd] }
  Array_Of_wiederinbetriebnahme_kasse = array of wiederinbetriebnahme_kasse;   { "https://finanzonline.bmf.gv.at/rkdb"[GblUbnd] }
  Array_Of_ausfall_ggs = array of ausfall_ggs;   { "https://finanzonline.bmf.gv.at/rkdb"[GblUbnd] }
  art_uebermittlung =  type art_uebermittlung2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  seriennummerType =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[GblSmpl] }
  anmerkung2      =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  anmerkung       =  type anmerkung2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  benid2          =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  benid           =  type benid2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  tid2            =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  tid             =  type tid2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  id2             =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  id              =  type id2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  rc2             =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  rc              =  type rc2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  msg             =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }


  // ************************************************************************ //
  // XML       : rkdbMessage, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  rkdbMessage = class(TRemotable)
  private
    Frc: rc;
    Fmsg: msg;
  published
    property rc:  rc   Index (IS_REF) read Frc write Frc;
    property msg: msg  Index (IS_REF) read Fmsg write Fmsg;
  end;

  beleg2          =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  beleg           =  type beleg2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  benutzerschluessel2 =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  benutzerschluessel =  type benutzerschluessel2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  info            =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  ob2             =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  ts_registrierung = class(TXSDateTime) end;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  ts_status       = class(TXSDateTime) end;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }


  // ************************************************************************ //
  // XML       : abfrage_ergebnis, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  abfrage_ergebnis = class(TRemotable)
  private
    Fts_registrierung: ts_registrierung;
    Fstatus: status;
    Fts_status: ts_status;
  public
    destructor Destroy; override;
  published
    property ts_registrierung: ts_registrierung  Index (IS_UNQL) read Fts_registrierung write Fts_registrierung;
    property status:           status            Index (IS_UNQL) read Fstatus write Fstatus;
    property ts_status:        ts_status         Index (IS_UNQL) read Fts_status write Fts_status;
  end;



  // ************************************************************************ //
  // XML       : verificationResult, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  verificationResult = class(TRemotable)
  private
    FverificationId: string;
    Fversion: Int64;
    FverificationName: string;
    FverificationTextualDescription: string;
    FverificationTextualDescription_Specified: boolean;
    FverificationState: verificationState;
    FverificationResultDetailedMessage: string;
    FverificationResultDetailedMessage_Specified: boolean;
    Finput: input;
    Finput_Specified: boolean;
    Foutput: output;
    Foutput_Specified: boolean;
    FverificationTimestamp: TXSDateTime;
    FverificationResultList: verificationResultList;
    FverificationResultList_Specified: boolean;
    procedure SetverificationTextualDescription(Index: Integer; const Astring: string);
    function  verificationTextualDescription_Specified(Index: Integer): boolean;
    procedure SetverificationResultDetailedMessage(Index: Integer; const Astring: string);
    function  verificationResultDetailedMessage_Specified(Index: Integer): boolean;
    procedure Setinput(Index: Integer; const Ainput: input);
    function  input_Specified(Index: Integer): boolean;
    procedure Setoutput(Index: Integer; const Aoutput: output);
    function  output_Specified(Index: Integer): boolean;
    procedure SetverificationResultList(Index: Integer; const AverificationResultList: verificationResultList);
    function  verificationResultList_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property verificationId:                    string                  read FverificationId write FverificationId;
    property version:                           Int64                   read Fversion write Fversion;
    property verificationName:                  string                  read FverificationName write FverificationName;
    property verificationTextualDescription:    string                  Index (IS_OPTN) read FverificationTextualDescription write SetverificationTextualDescription stored verificationTextualDescription_Specified;
    property verificationState:                 verificationState       Index (IS_REF) read FverificationState write FverificationState;
    property verificationResultDetailedMessage: string                  Index (IS_OPTN) read FverificationResultDetailedMessage write SetverificationResultDetailedMessage stored verificationResultDetailedMessage_Specified;
    property input:                             input                   Index (IS_OPTN or IS_REF) read Finput write Setinput stored input_Specified;
    property output:                            output                  Index (IS_OPTN or IS_REF) read Foutput write Setoutput stored output_Specified;
    property verificationTimestamp:             TXSDateTime             read FverificationTimestamp write FverificationTimestamp;
    property verificationResultList:            verificationResultList  Index (IS_OPTN or IS_REF) read FverificationResultList write SetverificationResultList stored verificationResultList_Specified;
  end;

  beginn_ausfall  = class(TXSDateTime) end;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  kundeninfo2     =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  kundeninfo      =  type kundeninfo2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  art_se          =  type art_se2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  zertifikat2     =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  zertifikat      =  type zertifikat2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  public_key2     =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  kassenidentifikationsnummer2 =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  kassenidentifikationsnummer =  type kassenidentifikationsnummer2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  zusatz_ob2      =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  vda_id2         =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  vda_id          =  type vda_id2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }


  // ************************************************************************ //
  // XML       : zertifikatsseriennummer, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  zertifikatsseriennummer = class(TRemotable)
  private
    FText: seriennummerType;
    Fhex: Boolean;
    Fhex_Specified: boolean;
    procedure Sethex(Index: Integer; const ABoolean: Boolean);
    function  hex_Specified(Index: Integer): boolean;
  published
    property Text: seriennummerType  Index (IS_TEXT) read FText write FText;
    property hex:  Boolean           Index (IS_ATTR or IS_OPTN) read Fhex write Sethex stored hex_Specified;
  end;

  erzwinge_asynchron2 =  type Boolean;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  erzwinge_asynchron =  type erzwinge_asynchron2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }


  // ************************************************************************ //
  // XML       : rkdbRequest, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  rkdbRequest = class(TRemotable)
  private
    Ftid: tid;
    Fbenid: benid;
    Fid: id;
    Fart_uebermittlung: art_uebermittlung;
    Ferzwinge_asynchron: erzwinge_asynchron;
    Ferzwinge_asynchron_Specified: boolean;
    Fstatus_kasse: status_kasse;
    Fstatus_kasse_Specified: boolean;
    Fstatus_see: status_see;
    Fstatus_see_Specified: boolean;
    Fstatus_ggs: status_ggs;
    Fstatus_ggs_Specified: boolean;
    Frkdb: rkdb;
    Frkdb_Specified: boolean;
    procedure Seterzwinge_asynchron(Index: Integer; const Aerzwinge_asynchron: erzwinge_asynchron);
    function  erzwinge_asynchron_Specified(Index: Integer): boolean;
    procedure Setstatus_kasse(Index: Integer; const Astatus_kasse: status_kasse);
    function  status_kasse_Specified(Index: Integer): boolean;
    procedure Setstatus_see(Index: Integer; const Astatus_see: status_see);
    function  status_see_Specified(Index: Integer): boolean;
    procedure Setstatus_ggs(Index: Integer; const Astatus_ggs: status_ggs);
    function  status_ggs_Specified(Index: Integer): boolean;
    procedure Setrkdb(Index: Integer; const Arkdb: rkdb);
    function  rkdb_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property tid:                tid                 Index (IS_REF) read Ftid write Ftid;
    property benid:              benid               Index (IS_REF) read Fbenid write Fbenid;
    property id:                 id                  Index (IS_REF) read Fid write Fid;
    property art_uebermittlung:  art_uebermittlung   Index (IS_REF) read Fart_uebermittlung write Fart_uebermittlung;
    property erzwinge_asynchron: erzwinge_asynchron  Index (IS_OPTN or IS_REF) read Ferzwinge_asynchron write Seterzwinge_asynchron stored erzwinge_asynchron_Specified;
    property status_kasse:       status_kasse        Index (IS_OPTN or IS_REF) read Fstatus_kasse write Setstatus_kasse stored status_kasse_Specified;
    property status_see:         status_see          Index (IS_OPTN or IS_REF) read Fstatus_see write Setstatus_see stored status_see_Specified;
    property status_ggs:         status_ggs          Index (IS_OPTN or IS_REF) read Fstatus_ggs write Setstatus_ggs stored status_ggs_Specified;
    property rkdb:               rkdb                Index (IS_OPTN or IS_REF) read Frkdb write Setrkdb stored rkdb_Specified;
  end;

  ts_erstellung2  = class(TXSDateTime) end;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  ts_erstellung   = class(ts_erstellung2) end;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  art_se_ggs      =  type art_se_ggs2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  public_key      =  type public_key2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }


  // ************************************************************************ //
  // XML       : ausfall, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  ausfall = class(TRemotable)
  private
    Fbegruendung: begruendung;
    Fbeginn_ausfall: beginn_ausfall;
  public
    destructor Destroy; override;
  published
    property begruendung:    begruendung     Index (IS_REF) read Fbegruendung write Fbegruendung;
    property beginn_ausfall: beginn_ausfall  Index (IS_REF) read Fbeginn_ausfall write Fbeginn_ausfall;
  end;

  art_ob          =  type art_ob2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  ob              =  type ob2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  zusatz_ob       =  type zusatz_ob2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  paket_nr2       = class(TXSDecimal) end;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  paket_nr        = class(paket_nr2) end;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }
  satznr2         = class(TXSDecimal) end;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  satznr          = class(satznr2) end;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }


  // ************************************************************************ //
  // XML       : registrierung_ggs, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  registrierung_ggs = class(TRemotable)
  private
    Fsatznr: satznr;
    Fkundeninfo: kundeninfo;
    Fkundeninfo_Specified: boolean;
    Fart_ob: art_ob;
    Fob: ob;
    Fzusatz_ob: zusatz_ob;
    Fzusatz_ob_Specified: boolean;
    Fart_se_ggs: art_se_ggs;
    Fpublic_key: public_key;
    Fpublic_key_Specified: boolean;
    Fzertifikat: zertifikat;
    Fzertifikat_Specified: boolean;
    procedure Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
    function  kundeninfo_Specified(Index: Integer): boolean;
    procedure Setzusatz_ob(Index: Integer; const Azusatz_ob: zusatz_ob);
    function  zusatz_ob_Specified(Index: Integer): boolean;
    procedure Setpublic_key(Index: Integer; const Apublic_key: public_key);
    function  public_key_Specified(Index: Integer): boolean;
    procedure Setzertifikat(Index: Integer; const Azertifikat: zertifikat);
    function  zertifikat_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property satznr:     satznr      Index (IS_REF) read Fsatznr write Fsatznr;
    property kundeninfo: kundeninfo  Index (IS_OPTN or IS_REF) read Fkundeninfo write Setkundeninfo stored kundeninfo_Specified;
    property art_ob:     art_ob      Index (IS_REF) read Fart_ob write Fart_ob;
    property ob:         ob          Index (IS_REF) read Fob write Fob;
    property zusatz_ob:  zusatz_ob   Index (IS_OPTN or IS_REF) read Fzusatz_ob write Setzusatz_ob stored zusatz_ob_Specified;
    property art_se_ggs: art_se_ggs  Index (IS_REF) read Fart_se_ggs write Fart_se_ggs;
    property public_key: public_key  Index (IS_OPTN or IS_REF) read Fpublic_key write Setpublic_key stored public_key_Specified;
    property zertifikat: zertifikat  Index (IS_OPTN or IS_REF) read Fzertifikat write Setzertifikat stored zertifikat_Specified;
  end;



  // ************************************************************************ //
  // XML       : registrierung_kasse, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  registrierung_kasse = class(TRemotable)
  private
    Fsatznr: satznr;
    Fkundeninfo: kundeninfo;
    Fkundeninfo_Specified: boolean;
    Fkassenidentifikationsnummer: kassenidentifikationsnummer;
    Fanmerkung: anmerkung;
    Fanmerkung_Specified: boolean;
    Fbenutzerschluessel: benutzerschluessel;
    procedure Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
    function  kundeninfo_Specified(Index: Integer): boolean;
    procedure Setanmerkung(Index: Integer; const Aanmerkung: anmerkung);
    function  anmerkung_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property satznr:                      satznr                       Index (IS_REF) read Fsatznr write Fsatznr;
    property kundeninfo:                  kundeninfo                   Index (IS_OPTN or IS_REF) read Fkundeninfo write Setkundeninfo stored kundeninfo_Specified;
    property kassenidentifikationsnummer: kassenidentifikationsnummer  Index (IS_REF) read Fkassenidentifikationsnummer write Fkassenidentifikationsnummer;
    property anmerkung:                   anmerkung                    Index (IS_OPTN or IS_REF) read Fanmerkung write Setanmerkung stored anmerkung_Specified;
    property benutzerschluessel:          benutzerschluessel           Index (IS_REF) read Fbenutzerschluessel write Fbenutzerschluessel;
  end;



  // ************************************************************************ //
  // XML       : registrierung_se, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  registrierung_se = class(TRemotable)
  private
    Fsatznr: satznr;
    Fkundeninfo: kundeninfo;
    Fkundeninfo_Specified: boolean;
    Fart_se: art_se;
    Fvda_id: vda_id;
    Fzertifikatsseriennummer: zertifikatsseriennummer;
    Fzertifikatsseriennummer_Specified: boolean;
    Fzertifikat: zertifikat;
    Fzertifikat_Specified: boolean;
    procedure Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
    function  kundeninfo_Specified(Index: Integer): boolean;
    procedure Setzertifikatsseriennummer(Index: Integer; const Azertifikatsseriennummer: zertifikatsseriennummer);
    function  zertifikatsseriennummer_Specified(Index: Integer): boolean;
    procedure Setzertifikat(Index: Integer; const Azertifikat: zertifikat);
    function  zertifikat_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property satznr:                  satznr                   Index (IS_REF) read Fsatznr write Fsatznr;
    property kundeninfo:              kundeninfo               Index (IS_OPTN or IS_REF) read Fkundeninfo write Setkundeninfo stored kundeninfo_Specified;
    property art_se:                  art_se                   Index (IS_REF) read Fart_se write Fart_se;
    property vda_id:                  vda_id                   Index (IS_REF) read Fvda_id write Fvda_id;
    property zertifikatsseriennummer: zertifikatsseriennummer  Index (IS_OPTN or IS_REF) read Fzertifikatsseriennummer write Setzertifikatsseriennummer stored zertifikatsseriennummer_Specified;
    property zertifikat:              zertifikat               Index (IS_OPTN or IS_REF) read Fzertifikat write Setzertifikat stored zertifikat_Specified;
  end;



  // ************************************************************************ //
  // XML       : ausfall_kasse, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  ausfall_kasse = class(TRemotable)
  private
    Fsatznr: satznr;
    Fkundeninfo: kundeninfo;
    Fkundeninfo_Specified: boolean;
    Fkassenidentifikationsnummer: kassenidentifikationsnummer;
    Fausfall: ausfall;
    Fausfall_Specified: boolean;
    Fausserbetriebnahme: ausserbetriebnahme;
    Fausserbetriebnahme_Specified: boolean;
    procedure Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
    function  kundeninfo_Specified(Index: Integer): boolean;
    procedure Setausfall(Index: Integer; const Aausfall: ausfall);
    function  ausfall_Specified(Index: Integer): boolean;
    procedure Setausserbetriebnahme(Index: Integer; const Aausserbetriebnahme: ausserbetriebnahme);
    function  ausserbetriebnahme_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property satznr:                      satznr                       Index (IS_REF) read Fsatznr write Fsatznr;
    property kundeninfo:                  kundeninfo                   Index (IS_OPTN or IS_REF) read Fkundeninfo write Setkundeninfo stored kundeninfo_Specified;
    property kassenidentifikationsnummer: kassenidentifikationsnummer  Index (IS_REF) read Fkassenidentifikationsnummer write Fkassenidentifikationsnummer;
    property ausfall:                     ausfall                      Index (IS_OPTN or IS_REF) read Fausfall write Setausfall stored ausfall_Specified;
    property ausserbetriebnahme:          ausserbetriebnahme           Index (IS_OPTN or IS_REF) read Fausserbetriebnahme write Setausserbetriebnahme stored ausserbetriebnahme_Specified;
  end;



  // ************************************************************************ //
  // XML       : ausfall_se, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  ausfall_se = class(TRemotable)
  private
    Fsatznr: satznr;
    Fkundeninfo: kundeninfo;
    Fkundeninfo_Specified: boolean;
    Fzertifikatsseriennummer: zertifikatsseriennummer;
    Fausfall: ausfall;
    Fausfall_Specified: boolean;
    Fausserbetriebnahme: ausserbetriebnahme;
    Fausserbetriebnahme_Specified: boolean;
    procedure Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
    function  kundeninfo_Specified(Index: Integer): boolean;
    procedure Setausfall(Index: Integer; const Aausfall: ausfall);
    function  ausfall_Specified(Index: Integer): boolean;
    procedure Setausserbetriebnahme(Index: Integer; const Aausserbetriebnahme: ausserbetriebnahme);
    function  ausserbetriebnahme_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property satznr:                  satznr                   Index (IS_REF) read Fsatznr write Fsatznr;
    property kundeninfo:              kundeninfo               Index (IS_OPTN or IS_REF) read Fkundeninfo write Setkundeninfo stored kundeninfo_Specified;
    property zertifikatsseriennummer: zertifikatsseriennummer  Index (IS_REF) read Fzertifikatsseriennummer write Fzertifikatsseriennummer;
    property ausfall:                 ausfall                  Index (IS_OPTN or IS_REF) read Fausfall write Setausfall stored ausfall_Specified;
    property ausserbetriebnahme:      ausserbetriebnahme       Index (IS_OPTN or IS_REF) read Fausserbetriebnahme write Setausserbetriebnahme stored ausserbetriebnahme_Specified;
  end;



  // ************************************************************************ //
  // XML       : belegpruefung, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  belegpruefung = class(TRemotable)
  private
    Fsatznr: satznr;
    Fkundeninfo: kundeninfo;
    Fkundeninfo_Specified: boolean;
    Fbeleg: beleg;
    procedure Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
    function  kundeninfo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property satznr:     satznr      Index (IS_REF) read Fsatznr write Fsatznr;
    property kundeninfo: kundeninfo  Index (IS_OPTN or IS_REF) read Fkundeninfo write Setkundeninfo stored kundeninfo_Specified;
    property beleg:      beleg       Index (IS_REF) read Fbeleg write Fbeleg;
  end;



  // ************************************************************************ //
  // XML       : ausfall_ggs, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  ausfall_ggs = class(TRemotable)
  private
    Fsatznr: satznr;
    Fkundeninfo: kundeninfo;
    Fkundeninfo_Specified: boolean;
    Fart_ob: art_ob;
    Fob: ob;
    Fzusatz_ob: zusatz_ob;
    Fzusatz_ob_Specified: boolean;
    Fausfall: ausfall;
    Fausfall_Specified: boolean;
    Fausserbetriebnahme: ausserbetriebnahme;
    Fausserbetriebnahme_Specified: boolean;
    procedure Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
    function  kundeninfo_Specified(Index: Integer): boolean;
    procedure Setzusatz_ob(Index: Integer; const Azusatz_ob: zusatz_ob);
    function  zusatz_ob_Specified(Index: Integer): boolean;
    procedure Setausfall(Index: Integer; const Aausfall: ausfall);
    function  ausfall_Specified(Index: Integer): boolean;
    procedure Setausserbetriebnahme(Index: Integer; const Aausserbetriebnahme: ausserbetriebnahme);
    function  ausserbetriebnahme_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property satznr:             satznr              Index (IS_REF) read Fsatznr write Fsatznr;
    property kundeninfo:         kundeninfo          Index (IS_OPTN or IS_REF) read Fkundeninfo write Setkundeninfo stored kundeninfo_Specified;
    property art_ob:             art_ob              Index (IS_REF) read Fart_ob write Fart_ob;
    property ob:                 ob                  Index (IS_REF) read Fob write Fob;
    property zusatz_ob:          zusatz_ob           Index (IS_OPTN or IS_REF) read Fzusatz_ob write Setzusatz_ob stored zusatz_ob_Specified;
    property ausfall:            ausfall             Index (IS_OPTN or IS_REF) read Fausfall write Setausfall stored ausfall_Specified;
    property ausserbetriebnahme: ausserbetriebnahme  Index (IS_OPTN or IS_REF) read Fausserbetriebnahme write Setausserbetriebnahme stored ausserbetriebnahme_Specified;
  end;



  // ************************************************************************ //
  // XML       : result, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  result = class(TRemotable)
  private
    Fsatznr: satznr;
    Fkundeninfo: kundeninfo;
    Fkundeninfo_Specified: boolean;
    FrkdbMessage: Array_Of_rkdbMessage;
    FverificationResultList: verificationResultList;
    FverificationResultList_Specified: boolean;
    Fabfrage_ergebnis: abfrage_ergebnis;
    Fabfrage_ergebnis_Specified: boolean;
    procedure Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
    function  kundeninfo_Specified(Index: Integer): boolean;
    procedure SetverificationResultList(Index: Integer; const AverificationResultList: verificationResultList);
    function  verificationResultList_Specified(Index: Integer): boolean;
    procedure Setabfrage_ergebnis(Index: Integer; const Aabfrage_ergebnis: abfrage_ergebnis);
    function  abfrage_ergebnis_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property satznr:                 satznr                  Index (IS_REF) read Fsatznr write Fsatznr;
    property kundeninfo:             kundeninfo              Index (IS_OPTN or IS_REF) read Fkundeninfo write Setkundeninfo stored kundeninfo_Specified;
    property rkdbMessage:            Array_Of_rkdbMessage    Index (IS_UNBD or IS_REF) read FrkdbMessage write FrkdbMessage;
    property verificationResultList: verificationResultList  Index (IS_OPTN or IS_REF) read FverificationResultList write SetverificationResultList stored verificationResultList_Specified;
    property abfrage_ergebnis:       abfrage_ergebnis        Index (IS_OPTN or IS_REF) read Fabfrage_ergebnis write Setabfrage_ergebnis stored abfrage_ergebnis_Specified;
  end;



  // ************************************************************************ //
  // XML       : ausserbetriebnahme, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  ausserbetriebnahme = class(TRemotable)
  private
    Fbegruendung: begruendung;
  published
    property begruendung: begruendung  Index (IS_REF) read Fbegruendung write Fbegruendung;
  end;

  ende_ausfall    = class(TXSDateTime) end;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }


  // ************************************************************************ //
  // XML       : wiederinbetriebnahme_se, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  wiederinbetriebnahme_se = class(TRemotable)
  private
    Fsatznr: satznr;
    Fkundeninfo: kundeninfo;
    Fkundeninfo_Specified: boolean;
    Fzertifikatsseriennummer: zertifikatsseriennummer;
    Fende_ausfall: ende_ausfall;
    procedure Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
    function  kundeninfo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property satznr:                  satznr                   Index (IS_REF) read Fsatznr write Fsatznr;
    property kundeninfo:              kundeninfo               Index (IS_OPTN or IS_REF) read Fkundeninfo write Setkundeninfo stored kundeninfo_Specified;
    property zertifikatsseriennummer: zertifikatsseriennummer  Index (IS_REF) read Fzertifikatsseriennummer write Fzertifikatsseriennummer;
    property ende_ausfall:            ende_ausfall             Index (IS_REF) read Fende_ausfall write Fende_ausfall;
  end;



  // ************************************************************************ //
  // XML       : wiederinbetriebnahme_kasse, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  wiederinbetriebnahme_kasse = class(TRemotable)
  private
    Fsatznr: satznr;
    Fkundeninfo: kundeninfo;
    Fkundeninfo_Specified: boolean;
    Fkassenidentifikationsnummer: kassenidentifikationsnummer;
    Fende_ausfall: ende_ausfall;
    procedure Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
    function  kundeninfo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property satznr:                      satznr                       Index (IS_REF) read Fsatznr write Fsatznr;
    property kundeninfo:                  kundeninfo                   Index (IS_OPTN or IS_REF) read Fkundeninfo write Setkundeninfo stored kundeninfo_Specified;
    property kassenidentifikationsnummer: kassenidentifikationsnummer  Index (IS_REF) read Fkassenidentifikationsnummer write Fkassenidentifikationsnummer;
    property ende_ausfall:                ende_ausfall                 Index (IS_REF) read Fende_ausfall write Fende_ausfall;
  end;



  // ************************************************************************ //
  // XML       : wiederinbetriebnahme_ggs, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  wiederinbetriebnahme_ggs = class(TRemotable)
  private
    Fsatznr: satznr;
    Fkundeninfo: kundeninfo;
    Fkundeninfo_Specified: boolean;
    Fart_ob: art_ob;
    Fob: ob;
    Fzusatz_ob: zusatz_ob;
    Fzusatz_ob_Specified: boolean;
    Fende_ausfall: ende_ausfall;
    procedure Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
    function  kundeninfo_Specified(Index: Integer): boolean;
    procedure Setzusatz_ob(Index: Integer; const Azusatz_ob: zusatz_ob);
    function  zusatz_ob_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property satznr:       satznr        Index (IS_REF) read Fsatznr write Fsatznr;
    property kundeninfo:   kundeninfo    Index (IS_OPTN or IS_REF) read Fkundeninfo write Setkundeninfo stored kundeninfo_Specified;
    property art_ob:       art_ob        Index (IS_REF) read Fart_ob write Fart_ob;
    property ob:           ob            Index (IS_REF) read Fob write Fob;
    property zusatz_ob:    zusatz_ob     Index (IS_OPTN or IS_REF) read Fzusatz_ob write Setzusatz_ob stored zusatz_ob_Specified;
    property ende_ausfall: ende_ausfall  Index (IS_REF) read Fende_ausfall write Fende_ausfall;
  end;

  fastnr2         =  type string;      { "https://finanzonline.bmf.gv.at/rkdb"[Smpl] }
  fastnr          =  type fastnr2;      { "https://finanzonline.bmf.gv.at/rkdb"[GblElm] }


  // ************************************************************************ //
  // XML       : rkdb, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  rkdb = class(TRemotable)
  private
    Ffastnr: fastnr;
    Ffastnr_Specified: boolean;
    Fpaket_nr: paket_nr;
    Fts_erstellung: ts_erstellung;
    Fregistrierung_se: Array_Of_registrierung_se;
    Fregistrierung_se_Specified: boolean;
    Fregistrierung_kasse: Array_Of_registrierung_kasse;
    Fregistrierung_kasse_Specified: boolean;
    Fregistrierung_ggs: Array_Of_registrierung_ggs;
    Fregistrierung_ggs_Specified: boolean;
    Fausfall_se: Array_Of_ausfall_se;
    Fausfall_se_Specified: boolean;
    Fwiederinbetriebnahme_se: Array_Of_wiederinbetriebnahme_se;
    Fwiederinbetriebnahme_se_Specified: boolean;
    Fausfall_kasse: Array_Of_ausfall_kasse;
    Fausfall_kasse_Specified: boolean;
    Fwiederinbetriebnahme_kasse: Array_Of_wiederinbetriebnahme_kasse;
    Fwiederinbetriebnahme_kasse_Specified: boolean;
    Fausfall_ggs: Array_Of_ausfall_ggs;
    Fausfall_ggs_Specified: boolean;
    Fwiederinbetriebnahme_ggs: Array_Of_wiederinbetriebnahme_ggs;
    Fwiederinbetriebnahme_ggs_Specified: boolean;
    Fbelegpruefung: belegpruefung;
    Fbelegpruefung_Specified: boolean;
    procedure Setfastnr(Index: Integer; const Afastnr: fastnr);
    function  fastnr_Specified(Index: Integer): boolean;
    procedure Setregistrierung_se(Index: Integer; const AArray_Of_registrierung_se: Array_Of_registrierung_se);
    function  registrierung_se_Specified(Index: Integer): boolean;
    procedure Setregistrierung_kasse(Index: Integer; const AArray_Of_registrierung_kasse: Array_Of_registrierung_kasse);
    function  registrierung_kasse_Specified(Index: Integer): boolean;
    procedure Setregistrierung_ggs(Index: Integer; const AArray_Of_registrierung_ggs: Array_Of_registrierung_ggs);
    function  registrierung_ggs_Specified(Index: Integer): boolean;
    procedure Setausfall_se(Index: Integer; const AArray_Of_ausfall_se: Array_Of_ausfall_se);
    function  ausfall_se_Specified(Index: Integer): boolean;
    procedure Setwiederinbetriebnahme_se(Index: Integer; const AArray_Of_wiederinbetriebnahme_se: Array_Of_wiederinbetriebnahme_se);
    function  wiederinbetriebnahme_se_Specified(Index: Integer): boolean;
    procedure Setausfall_kasse(Index: Integer; const AArray_Of_ausfall_kasse: Array_Of_ausfall_kasse);
    function  ausfall_kasse_Specified(Index: Integer): boolean;
    procedure Setwiederinbetriebnahme_kasse(Index: Integer; const AArray_Of_wiederinbetriebnahme_kasse: Array_Of_wiederinbetriebnahme_kasse);
    function  wiederinbetriebnahme_kasse_Specified(Index: Integer): boolean;
    procedure Setausfall_ggs(Index: Integer; const AArray_Of_ausfall_ggs: Array_Of_ausfall_ggs);
    function  ausfall_ggs_Specified(Index: Integer): boolean;
    procedure Setwiederinbetriebnahme_ggs(Index: Integer; const AArray_Of_wiederinbetriebnahme_ggs: Array_Of_wiederinbetriebnahme_ggs);
    function  wiederinbetriebnahme_ggs_Specified(Index: Integer): boolean;
    procedure Setbelegpruefung(Index: Integer; const Abelegpruefung: belegpruefung);
    function  belegpruefung_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property fastnr:                     fastnr                               Index (IS_OPTN or IS_REF) read Ffastnr write Setfastnr stored fastnr_Specified;
    property paket_nr:                   paket_nr                             Index (IS_REF) read Fpaket_nr write Fpaket_nr;
    property ts_erstellung:              ts_erstellung                        Index (IS_REF) read Fts_erstellung write Fts_erstellung;
    property registrierung_se:           Array_Of_registrierung_se            Index (IS_OPTN or IS_UNBD or IS_REF) read Fregistrierung_se write Setregistrierung_se stored registrierung_se_Specified;
    property registrierung_kasse:        Array_Of_registrierung_kasse         Index (IS_OPTN or IS_UNBD or IS_REF) read Fregistrierung_kasse write Setregistrierung_kasse stored registrierung_kasse_Specified;
    property registrierung_ggs:          Array_Of_registrierung_ggs           Index (IS_OPTN or IS_UNBD or IS_REF) read Fregistrierung_ggs write Setregistrierung_ggs stored registrierung_ggs_Specified;
    property ausfall_se:                 Array_Of_ausfall_se                  Index (IS_OPTN or IS_UNBD or IS_REF) read Fausfall_se write Setausfall_se stored ausfall_se_Specified;
    property wiederinbetriebnahme_se:    Array_Of_wiederinbetriebnahme_se     Index (IS_OPTN or IS_UNBD or IS_REF) read Fwiederinbetriebnahme_se write Setwiederinbetriebnahme_se stored wiederinbetriebnahme_se_Specified;
    property ausfall_kasse:              Array_Of_ausfall_kasse               Index (IS_OPTN or IS_UNBD or IS_REF) read Fausfall_kasse write Setausfall_kasse stored ausfall_kasse_Specified;
    property wiederinbetriebnahme_kasse: Array_Of_wiederinbetriebnahme_kasse  Index (IS_OPTN or IS_UNBD or IS_REF) read Fwiederinbetriebnahme_kasse write Setwiederinbetriebnahme_kasse stored wiederinbetriebnahme_kasse_Specified;
    property ausfall_ggs:                Array_Of_ausfall_ggs                 Index (IS_OPTN or IS_UNBD or IS_REF) read Fausfall_ggs write Setausfall_ggs stored ausfall_ggs_Specified;
    property wiederinbetriebnahme_ggs:   Array_Of_wiederinbetriebnahme_ggs    Index (IS_OPTN or IS_UNBD or IS_REF) read Fwiederinbetriebnahme_ggs write Setwiederinbetriebnahme_ggs stored wiederinbetriebnahme_ggs_Specified;
    property belegpruefung:              belegpruefung                        Index (IS_OPTN or IS_REF) read Fbelegpruefung write Setbelegpruefung stored belegpruefung_Specified;
  end;



  // ************************************************************************ //
  // XML       : status_see, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  status_see = class(TRemotable)
  private
    Ffastnr: fastnr;
    Ffastnr_Specified: boolean;
    Fpaket_nr: paket_nr;
    Fts_erstellung: ts_erstellung;
    Fsatznr: satznr;
    Fzertifikatsseriennummer: zertifikatsseriennummer;
    procedure Setfastnr(Index: Integer; const Afastnr: fastnr);
    function  fastnr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property fastnr:                  fastnr                   Index (IS_OPTN or IS_REF) read Ffastnr write Setfastnr stored fastnr_Specified;
    property paket_nr:                paket_nr                 Index (IS_REF) read Fpaket_nr write Fpaket_nr;
    property ts_erstellung:           ts_erstellung            Index (IS_REF) read Fts_erstellung write Fts_erstellung;
    property satznr:                  satznr                   Index (IS_REF) read Fsatznr write Fsatznr;
    property zertifikatsseriennummer: zertifikatsseriennummer  Index (IS_REF) read Fzertifikatsseriennummer write Fzertifikatsseriennummer;
  end;



  // ************************************************************************ //
  // XML       : status_kasse, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  status_kasse = class(TRemotable)
  private
    Ffastnr: fastnr;
    Ffastnr_Specified: boolean;
    Fpaket_nr: paket_nr;
    Fts_erstellung: ts_erstellung;
    Fsatznr: satznr;
    Fkassenidentifikationsnummer: kassenidentifikationsnummer;
    procedure Setfastnr(Index: Integer; const Afastnr: fastnr);
    function  fastnr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property fastnr:                      fastnr                       Index (IS_OPTN or IS_REF) read Ffastnr write Setfastnr stored fastnr_Specified;
    property paket_nr:                    paket_nr                     Index (IS_REF) read Fpaket_nr write Fpaket_nr;
    property ts_erstellung:               ts_erstellung                Index (IS_REF) read Fts_erstellung write Fts_erstellung;
    property satznr:                      satznr                       Index (IS_REF) read Fsatznr write Fsatznr;
    property kassenidentifikationsnummer: kassenidentifikationsnummer  Index (IS_REF) read Fkassenidentifikationsnummer write Fkassenidentifikationsnummer;
  end;



  // ************************************************************************ //
  // XML       : rkdbResponse, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  rkdbResponse = class(TRemotable)
  private
    Ffastnr: fastnr;
    Ffastnr_Specified: boolean;
    Fpaket_nr: paket_nr;
    Fart_uebermittlung: art_uebermittlung;
    Fart_uebermittlung_Specified: boolean;
    Fts_erstellung: ts_erstellung;
    Finfo: info;
    Finfo_Specified: boolean;
    Fresult: Array_Of_result;
    procedure Setfastnr(Index: Integer; const Afastnr: fastnr);
    function  fastnr_Specified(Index: Integer): boolean;
    procedure Setart_uebermittlung(Index: Integer; const Aart_uebermittlung: art_uebermittlung);
    function  art_uebermittlung_Specified(Index: Integer): boolean;
    procedure Setinfo(Index: Integer; const Ainfo: info);
    function  info_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property fastnr:            fastnr             Index (IS_OPTN or IS_REF) read Ffastnr write Setfastnr stored fastnr_Specified;
    property paket_nr:          paket_nr           Index (IS_REF) read Fpaket_nr write Fpaket_nr;
    property art_uebermittlung: art_uebermittlung  Index (IS_OPTN or IS_REF) read Fart_uebermittlung write Setart_uebermittlung stored art_uebermittlung_Specified;
    property ts_erstellung:     ts_erstellung      Index (IS_REF) read Fts_erstellung write Fts_erstellung;
    property info:              info               Index (IS_OPTN or IS_REF) read Finfo write Setinfo stored info_Specified;
    property result:            Array_Of_result    Index (IS_UNBD or IS_REF) read Fresult write Fresult;
  end;



  // ************************************************************************ //
  // XML       : status_ggs, global, <element>
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // ************************************************************************ //
  status_ggs = class(TRemotable)
  private
    Ffastnr: fastnr;
    Ffastnr_Specified: boolean;
    Fpaket_nr: paket_nr;
    Fts_erstellung: ts_erstellung;
    Fsatznr: satznr;
    Fart_ob: art_ob;
    Fob: ob;
    Fzusatz_ob: zusatz_ob;
    Fzusatz_ob_Specified: boolean;
    procedure Setfastnr(Index: Integer; const Afastnr: fastnr);
    function  fastnr_Specified(Index: Integer): boolean;
    procedure Setzusatz_ob(Index: Integer; const Azusatz_ob: zusatz_ob);
    function  zusatz_ob_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property fastnr:        fastnr         Index (IS_OPTN or IS_REF) read Ffastnr write Setfastnr stored fastnr_Specified;
    property paket_nr:      paket_nr       Index (IS_REF) read Fpaket_nr write Fpaket_nr;
    property ts_erstellung: ts_erstellung  Index (IS_REF) read Fts_erstellung write Fts_erstellung;
    property satznr:        satznr         Index (IS_REF) read Fsatznr write Fsatznr;
    property art_ob:        art_ob         Index (IS_REF) read Fart_ob write Fart_ob;
    property ob:            ob             Index (IS_REF) read Fob write Fob;
    property zusatz_ob:     zusatz_ob      Index (IS_OPTN or IS_REF) read Fzusatz_ob write Setzusatz_ob stored zusatz_ob_Specified;
  end;


  // ************************************************************************ //
  // Namespace : https://finanzonline.bmf.gv.at/rkdb
  // soapAction: rkdb
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : rkdbServiceBinding
  // service   : rkdbService
  // port      : rkdb
  // URL       : https://finanzonline.bmf.gv.at:443/fonws/ws/rkdb
  // ************************************************************************ //
  rkdbServicePort = interface(IInvokable)
  ['{421C8567-85D0-F6AC-66C4-5AFE4DA549F0}']

    // Cannot unwrap:
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  rkdb(const rkdbRequest: rkdbRequest): rkdbResponse; stdcall;
  end;

function GetrkdbServicePort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): rkdbServicePort;


implementation
  uses System.SysUtils;

function GetrkdbServicePort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): rkdbServicePort;
const
  defWSDL = 'https://finanzonline.bmf.gv.at/fonws/ws/regKasseService.wsdl';
  defURL  = 'https://finanzonline.bmf.gv.at:443/fonws/ws/rkdb';
  defSvc  = 'rkdbService';
  defPrt  = 'rkdb';
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
    Result := (RIO as rkdbServicePort);
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


destructor abfrage_ergebnis.Destroy;
begin
  System.SysUtils.FreeAndNil(Fts_registrierung);
  System.SysUtils.FreeAndNil(Fts_status);
  inherited Destroy;
end;

destructor verificationResult.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FverificationResultList)-1 do
    System.SysUtils.FreeAndNil(FverificationResultList[I]);
  System.SetLength(FverificationResultList, 0);
  System.SysUtils.FreeAndNil(Finput);
  System.SysUtils.FreeAndNil(Foutput);
  System.SysUtils.FreeAndNil(FverificationTimestamp);
  inherited Destroy;
end;

procedure verificationResult.SetverificationTextualDescription(Index: Integer; const Astring: string);
begin
  FverificationTextualDescription := Astring;
  FverificationTextualDescription_Specified := True;
end;

function verificationResult.verificationTextualDescription_Specified(Index: Integer): boolean;
begin
  Result := FverificationTextualDescription_Specified;
end;

procedure verificationResult.SetverificationResultDetailedMessage(Index: Integer; const Astring: string);
begin
  FverificationResultDetailedMessage := Astring;
  FverificationResultDetailedMessage_Specified := True;
end;

function verificationResult.verificationResultDetailedMessage_Specified(Index: Integer): boolean;
begin
  Result := FverificationResultDetailedMessage_Specified;
end;

procedure verificationResult.Setinput(Index: Integer; const Ainput: input);
begin
  Finput := Ainput;
  Finput_Specified := True;
end;

function verificationResult.input_Specified(Index: Integer): boolean;
begin
  Result := Finput_Specified;
end;

procedure verificationResult.Setoutput(Index: Integer; const Aoutput: output);
begin
  Foutput := Aoutput;
  Foutput_Specified := True;
end;

function verificationResult.output_Specified(Index: Integer): boolean;
begin
  Result := Foutput_Specified;
end;

procedure verificationResult.SetverificationResultList(Index: Integer; const AverificationResultList: verificationResultList);
begin
  FverificationResultList := AverificationResultList;
  FverificationResultList_Specified := True;
end;

function verificationResult.verificationResultList_Specified(Index: Integer): boolean;
begin
  Result := FverificationResultList_Specified;
end;

procedure zertifikatsseriennummer.Sethex(Index: Integer; const ABoolean: Boolean);
begin
  Fhex := ABoolean;
  Fhex_Specified := True;
end;

function zertifikatsseriennummer.hex_Specified(Index: Integer): boolean;
begin
  Result := Fhex_Specified;
end;

constructor rkdbRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor rkdbRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fstatus_kasse);
  System.SysUtils.FreeAndNil(Fstatus_see);
  System.SysUtils.FreeAndNil(Fstatus_ggs);
  System.SysUtils.FreeAndNil(Frkdb);
  inherited Destroy;
end;

procedure rkdbRequest.Seterzwinge_asynchron(Index: Integer; const Aerzwinge_asynchron: erzwinge_asynchron);
begin
  Ferzwinge_asynchron := Aerzwinge_asynchron;
  Ferzwinge_asynchron_Specified := True;
end;

function rkdbRequest.erzwinge_asynchron_Specified(Index: Integer): boolean;
begin
  Result := Ferzwinge_asynchron_Specified;
end;

procedure rkdbRequest.Setstatus_kasse(Index: Integer; const Astatus_kasse: status_kasse);
begin
  Fstatus_kasse := Astatus_kasse;
  Fstatus_kasse_Specified := True;
end;

function rkdbRequest.status_kasse_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_kasse_Specified;
end;

procedure rkdbRequest.Setstatus_see(Index: Integer; const Astatus_see: status_see);
begin
  Fstatus_see := Astatus_see;
  Fstatus_see_Specified := True;
end;

function rkdbRequest.status_see_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_see_Specified;
end;

procedure rkdbRequest.Setstatus_ggs(Index: Integer; const Astatus_ggs: status_ggs);
begin
  Fstatus_ggs := Astatus_ggs;
  Fstatus_ggs_Specified := True;
end;

function rkdbRequest.status_ggs_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_ggs_Specified;
end;

procedure rkdbRequest.Setrkdb(Index: Integer; const Arkdb: rkdb);
begin
  Frkdb := Arkdb;
  Frkdb_Specified := True;
end;

function rkdbRequest.rkdb_Specified(Index: Integer): boolean;
begin
  Result := Frkdb_Specified;
end;

destructor ausfall.Destroy;
begin
  System.SysUtils.FreeAndNil(Fbeginn_ausfall);
  inherited Destroy;
end;

destructor registrierung_ggs.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsatznr);
  inherited Destroy;
end;

procedure registrierung_ggs.Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
begin
  Fkundeninfo := Akundeninfo;
  Fkundeninfo_Specified := True;
end;

function registrierung_ggs.kundeninfo_Specified(Index: Integer): boolean;
begin
  Result := Fkundeninfo_Specified;
end;

procedure registrierung_ggs.Setzusatz_ob(Index: Integer; const Azusatz_ob: zusatz_ob);
begin
  Fzusatz_ob := Azusatz_ob;
  Fzusatz_ob_Specified := True;
end;

function registrierung_ggs.zusatz_ob_Specified(Index: Integer): boolean;
begin
  Result := Fzusatz_ob_Specified;
end;

procedure registrierung_ggs.Setpublic_key(Index: Integer; const Apublic_key: public_key);
begin
  Fpublic_key := Apublic_key;
  Fpublic_key_Specified := True;
end;

function registrierung_ggs.public_key_Specified(Index: Integer): boolean;
begin
  Result := Fpublic_key_Specified;
end;

procedure registrierung_ggs.Setzertifikat(Index: Integer; const Azertifikat: zertifikat);
begin
  Fzertifikat := Azertifikat;
  Fzertifikat_Specified := True;
end;

function registrierung_ggs.zertifikat_Specified(Index: Integer): boolean;
begin
  Result := Fzertifikat_Specified;
end;

destructor registrierung_kasse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsatznr);
  inherited Destroy;
end;

procedure registrierung_kasse.Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
begin
  Fkundeninfo := Akundeninfo;
  Fkundeninfo_Specified := True;
end;

function registrierung_kasse.kundeninfo_Specified(Index: Integer): boolean;
begin
  Result := Fkundeninfo_Specified;
end;

procedure registrierung_kasse.Setanmerkung(Index: Integer; const Aanmerkung: anmerkung);
begin
  Fanmerkung := Aanmerkung;
  Fanmerkung_Specified := True;
end;

function registrierung_kasse.anmerkung_Specified(Index: Integer): boolean;
begin
  Result := Fanmerkung_Specified;
end;

destructor registrierung_se.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsatznr);
  System.SysUtils.FreeAndNil(Fzertifikatsseriennummer);
  inherited Destroy;
end;

procedure registrierung_se.Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
begin
  Fkundeninfo := Akundeninfo;
  Fkundeninfo_Specified := True;
end;

function registrierung_se.kundeninfo_Specified(Index: Integer): boolean;
begin
  Result := Fkundeninfo_Specified;
end;

procedure registrierung_se.Setzertifikatsseriennummer(Index: Integer; const Azertifikatsseriennummer: zertifikatsseriennummer);
begin
  Fzertifikatsseriennummer := Azertifikatsseriennummer;
  Fzertifikatsseriennummer_Specified := True;
end;

function registrierung_se.zertifikatsseriennummer_Specified(Index: Integer): boolean;
begin
  Result := Fzertifikatsseriennummer_Specified;
end;

procedure registrierung_se.Setzertifikat(Index: Integer; const Azertifikat: zertifikat);
begin
  Fzertifikat := Azertifikat;
  Fzertifikat_Specified := True;
end;

function registrierung_se.zertifikat_Specified(Index: Integer): boolean;
begin
  Result := Fzertifikat_Specified;
end;

destructor ausfall_kasse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsatznr);
  System.SysUtils.FreeAndNil(Fausfall);
  System.SysUtils.FreeAndNil(Fausserbetriebnahme);
  inherited Destroy;
end;

procedure ausfall_kasse.Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
begin
  Fkundeninfo := Akundeninfo;
  Fkundeninfo_Specified := True;
end;

function ausfall_kasse.kundeninfo_Specified(Index: Integer): boolean;
begin
  Result := Fkundeninfo_Specified;
end;

procedure ausfall_kasse.Setausfall(Index: Integer; const Aausfall: ausfall);
begin
  Fausfall := Aausfall;
  Fausfall_Specified := True;
end;

function ausfall_kasse.ausfall_Specified(Index: Integer): boolean;
begin
  Result := Fausfall_Specified;
end;

procedure ausfall_kasse.Setausserbetriebnahme(Index: Integer; const Aausserbetriebnahme: ausserbetriebnahme);
begin
  Fausserbetriebnahme := Aausserbetriebnahme;
  Fausserbetriebnahme_Specified := True;
end;

function ausfall_kasse.ausserbetriebnahme_Specified(Index: Integer): boolean;
begin
  Result := Fausserbetriebnahme_Specified;
end;

destructor ausfall_se.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsatznr);
  System.SysUtils.FreeAndNil(Fzertifikatsseriennummer);
  System.SysUtils.FreeAndNil(Fausfall);
  System.SysUtils.FreeAndNil(Fausserbetriebnahme);
  inherited Destroy;
end;

procedure ausfall_se.Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
begin
  Fkundeninfo := Akundeninfo;
  Fkundeninfo_Specified := True;
end;

function ausfall_se.kundeninfo_Specified(Index: Integer): boolean;
begin
  Result := Fkundeninfo_Specified;
end;

procedure ausfall_se.Setausfall(Index: Integer; const Aausfall: ausfall);
begin
  Fausfall := Aausfall;
  Fausfall_Specified := True;
end;

function ausfall_se.ausfall_Specified(Index: Integer): boolean;
begin
  Result := Fausfall_Specified;
end;

procedure ausfall_se.Setausserbetriebnahme(Index: Integer; const Aausserbetriebnahme: ausserbetriebnahme);
begin
  Fausserbetriebnahme := Aausserbetriebnahme;
  Fausserbetriebnahme_Specified := True;
end;

function ausfall_se.ausserbetriebnahme_Specified(Index: Integer): boolean;
begin
  Result := Fausserbetriebnahme_Specified;
end;

destructor belegpruefung.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsatznr);
  inherited Destroy;
end;

procedure belegpruefung.Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
begin
  Fkundeninfo := Akundeninfo;
  Fkundeninfo_Specified := True;
end;

function belegpruefung.kundeninfo_Specified(Index: Integer): boolean;
begin
  Result := Fkundeninfo_Specified;
end;

destructor ausfall_ggs.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsatznr);
  System.SysUtils.FreeAndNil(Fausfall);
  System.SysUtils.FreeAndNil(Fausserbetriebnahme);
  inherited Destroy;
end;

procedure ausfall_ggs.Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
begin
  Fkundeninfo := Akundeninfo;
  Fkundeninfo_Specified := True;
end;

function ausfall_ggs.kundeninfo_Specified(Index: Integer): boolean;
begin
  Result := Fkundeninfo_Specified;
end;

procedure ausfall_ggs.Setzusatz_ob(Index: Integer; const Azusatz_ob: zusatz_ob);
begin
  Fzusatz_ob := Azusatz_ob;
  Fzusatz_ob_Specified := True;
end;

function ausfall_ggs.zusatz_ob_Specified(Index: Integer): boolean;
begin
  Result := Fzusatz_ob_Specified;
end;

procedure ausfall_ggs.Setausfall(Index: Integer; const Aausfall: ausfall);
begin
  Fausfall := Aausfall;
  Fausfall_Specified := True;
end;

function ausfall_ggs.ausfall_Specified(Index: Integer): boolean;
begin
  Result := Fausfall_Specified;
end;

procedure ausfall_ggs.Setausserbetriebnahme(Index: Integer; const Aausserbetriebnahme: ausserbetriebnahme);
begin
  Fausserbetriebnahme := Aausserbetriebnahme;
  Fausserbetriebnahme_Specified := True;
end;

function ausfall_ggs.ausserbetriebnahme_Specified(Index: Integer): boolean;
begin
  Result := Fausserbetriebnahme_Specified;
end;

destructor result.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FrkdbMessage)-1 do
    System.SysUtils.FreeAndNil(FrkdbMessage[I]);
  System.SetLength(FrkdbMessage, 0);
  for I := 0 to System.Length(FverificationResultList)-1 do
    System.SysUtils.FreeAndNil(FverificationResultList[I]);
  System.SetLength(FverificationResultList, 0);
  System.SysUtils.FreeAndNil(Fsatznr);
  System.SysUtils.FreeAndNil(Fabfrage_ergebnis);
  inherited Destroy;
end;

procedure result.Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
begin
  Fkundeninfo := Akundeninfo;
  Fkundeninfo_Specified := True;
end;

function result.kundeninfo_Specified(Index: Integer): boolean;
begin
  Result := Fkundeninfo_Specified;
end;

procedure result.SetverificationResultList(Index: Integer; const AverificationResultList: verificationResultList);
begin
  FverificationResultList := AverificationResultList;
  FverificationResultList_Specified := True;
end;

function result.verificationResultList_Specified(Index: Integer): boolean;
begin
  Result := FverificationResultList_Specified;
end;

procedure result.Setabfrage_ergebnis(Index: Integer; const Aabfrage_ergebnis: abfrage_ergebnis);
begin
  Fabfrage_ergebnis := Aabfrage_ergebnis;
  Fabfrage_ergebnis_Specified := True;
end;

function result.abfrage_ergebnis_Specified(Index: Integer): boolean;
begin
  Result := Fabfrage_ergebnis_Specified;
end;

destructor wiederinbetriebnahme_se.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsatznr);
  System.SysUtils.FreeAndNil(Fzertifikatsseriennummer);
  System.SysUtils.FreeAndNil(Fende_ausfall);
  inherited Destroy;
end;

procedure wiederinbetriebnahme_se.Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
begin
  Fkundeninfo := Akundeninfo;
  Fkundeninfo_Specified := True;
end;

function wiederinbetriebnahme_se.kundeninfo_Specified(Index: Integer): boolean;
begin
  Result := Fkundeninfo_Specified;
end;

destructor wiederinbetriebnahme_kasse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsatznr);
  System.SysUtils.FreeAndNil(Fende_ausfall);
  inherited Destroy;
end;

procedure wiederinbetriebnahme_kasse.Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
begin
  Fkundeninfo := Akundeninfo;
  Fkundeninfo_Specified := True;
end;

function wiederinbetriebnahme_kasse.kundeninfo_Specified(Index: Integer): boolean;
begin
  Result := Fkundeninfo_Specified;
end;

destructor wiederinbetriebnahme_ggs.Destroy;
begin
  System.SysUtils.FreeAndNil(Fsatznr);
  System.SysUtils.FreeAndNil(Fende_ausfall);
  inherited Destroy;
end;

procedure wiederinbetriebnahme_ggs.Setkundeninfo(Index: Integer; const Akundeninfo: kundeninfo);
begin
  Fkundeninfo := Akundeninfo;
  Fkundeninfo_Specified := True;
end;

function wiederinbetriebnahme_ggs.kundeninfo_Specified(Index: Integer): boolean;
begin
  Result := Fkundeninfo_Specified;
end;

procedure wiederinbetriebnahme_ggs.Setzusatz_ob(Index: Integer; const Azusatz_ob: zusatz_ob);
begin
  Fzusatz_ob := Azusatz_ob;
  Fzusatz_ob_Specified := True;
end;

function wiederinbetriebnahme_ggs.zusatz_ob_Specified(Index: Integer): boolean;
begin
  Result := Fzusatz_ob_Specified;
end;

destructor rkdb.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fregistrierung_se)-1 do
    System.SysUtils.FreeAndNil(Fregistrierung_se[I]);
  System.SetLength(Fregistrierung_se, 0);
  for I := 0 to System.Length(Fregistrierung_kasse)-1 do
    System.SysUtils.FreeAndNil(Fregistrierung_kasse[I]);
  System.SetLength(Fregistrierung_kasse, 0);
  for I := 0 to System.Length(Fregistrierung_ggs)-1 do
    System.SysUtils.FreeAndNil(Fregistrierung_ggs[I]);
  System.SetLength(Fregistrierung_ggs, 0);
  for I := 0 to System.Length(Fausfall_se)-1 do
    System.SysUtils.FreeAndNil(Fausfall_se[I]);
  System.SetLength(Fausfall_se, 0);
  for I := 0 to System.Length(Fwiederinbetriebnahme_se)-1 do
    System.SysUtils.FreeAndNil(Fwiederinbetriebnahme_se[I]);
  System.SetLength(Fwiederinbetriebnahme_se, 0);
  for I := 0 to System.Length(Fausfall_kasse)-1 do
    System.SysUtils.FreeAndNil(Fausfall_kasse[I]);
  System.SetLength(Fausfall_kasse, 0);
  for I := 0 to System.Length(Fwiederinbetriebnahme_kasse)-1 do
    System.SysUtils.FreeAndNil(Fwiederinbetriebnahme_kasse[I]);
  System.SetLength(Fwiederinbetriebnahme_kasse, 0);
  for I := 0 to System.Length(Fausfall_ggs)-1 do
    System.SysUtils.FreeAndNil(Fausfall_ggs[I]);
  System.SetLength(Fausfall_ggs, 0);
  for I := 0 to System.Length(Fwiederinbetriebnahme_ggs)-1 do
    System.SysUtils.FreeAndNil(Fwiederinbetriebnahme_ggs[I]);
  System.SetLength(Fwiederinbetriebnahme_ggs, 0);
  System.SysUtils.FreeAndNil(Fpaket_nr);
  System.SysUtils.FreeAndNil(Fts_erstellung);
  System.SysUtils.FreeAndNil(Fbelegpruefung);
  inherited Destroy;
end;

procedure rkdb.Setfastnr(Index: Integer; const Afastnr: fastnr);
begin
  Ffastnr := Afastnr;
  Ffastnr_Specified := True;
end;

function rkdb.fastnr_Specified(Index: Integer): boolean;
begin
  Result := Ffastnr_Specified;
end;

procedure rkdb.Setregistrierung_se(Index: Integer; const AArray_Of_registrierung_se: Array_Of_registrierung_se);
begin
  Fregistrierung_se := AArray_Of_registrierung_se;
  Fregistrierung_se_Specified := True;
end;

function rkdb.registrierung_se_Specified(Index: Integer): boolean;
begin
  Result := Fregistrierung_se_Specified;
end;

procedure rkdb.Setregistrierung_kasse(Index: Integer; const AArray_Of_registrierung_kasse: Array_Of_registrierung_kasse);
begin
  Fregistrierung_kasse := AArray_Of_registrierung_kasse;
  Fregistrierung_kasse_Specified := True;
end;

function rkdb.registrierung_kasse_Specified(Index: Integer): boolean;
begin
  Result := Fregistrierung_kasse_Specified;
end;

procedure rkdb.Setregistrierung_ggs(Index: Integer; const AArray_Of_registrierung_ggs: Array_Of_registrierung_ggs);
begin
  Fregistrierung_ggs := AArray_Of_registrierung_ggs;
  Fregistrierung_ggs_Specified := True;
end;

function rkdb.registrierung_ggs_Specified(Index: Integer): boolean;
begin
  Result := Fregistrierung_ggs_Specified;
end;

procedure rkdb.Setausfall_se(Index: Integer; const AArray_Of_ausfall_se: Array_Of_ausfall_se);
begin
  Fausfall_se := AArray_Of_ausfall_se;
  Fausfall_se_Specified := True;
end;

function rkdb.ausfall_se_Specified(Index: Integer): boolean;
begin
  Result := Fausfall_se_Specified;
end;

procedure rkdb.Setwiederinbetriebnahme_se(Index: Integer; const AArray_Of_wiederinbetriebnahme_se: Array_Of_wiederinbetriebnahme_se);
begin
  Fwiederinbetriebnahme_se := AArray_Of_wiederinbetriebnahme_se;
  Fwiederinbetriebnahme_se_Specified := True;
end;

function rkdb.wiederinbetriebnahme_se_Specified(Index: Integer): boolean;
begin
  Result := Fwiederinbetriebnahme_se_Specified;
end;

procedure rkdb.Setausfall_kasse(Index: Integer; const AArray_Of_ausfall_kasse: Array_Of_ausfall_kasse);
begin
  Fausfall_kasse := AArray_Of_ausfall_kasse;
  Fausfall_kasse_Specified := True;
end;

function rkdb.ausfall_kasse_Specified(Index: Integer): boolean;
begin
  Result := Fausfall_kasse_Specified;
end;

procedure rkdb.Setwiederinbetriebnahme_kasse(Index: Integer; const AArray_Of_wiederinbetriebnahme_kasse: Array_Of_wiederinbetriebnahme_kasse);
begin
  Fwiederinbetriebnahme_kasse := AArray_Of_wiederinbetriebnahme_kasse;
  Fwiederinbetriebnahme_kasse_Specified := True;
end;

function rkdb.wiederinbetriebnahme_kasse_Specified(Index: Integer): boolean;
begin
  Result := Fwiederinbetriebnahme_kasse_Specified;
end;

procedure rkdb.Setausfall_ggs(Index: Integer; const AArray_Of_ausfall_ggs: Array_Of_ausfall_ggs);
begin
  Fausfall_ggs := AArray_Of_ausfall_ggs;
  Fausfall_ggs_Specified := True;
end;

function rkdb.ausfall_ggs_Specified(Index: Integer): boolean;
begin
  Result := Fausfall_ggs_Specified;
end;

procedure rkdb.Setwiederinbetriebnahme_ggs(Index: Integer; const AArray_Of_wiederinbetriebnahme_ggs: Array_Of_wiederinbetriebnahme_ggs);
begin
  Fwiederinbetriebnahme_ggs := AArray_Of_wiederinbetriebnahme_ggs;
  Fwiederinbetriebnahme_ggs_Specified := True;
end;

function rkdb.wiederinbetriebnahme_ggs_Specified(Index: Integer): boolean;
begin
  Result := Fwiederinbetriebnahme_ggs_Specified;
end;

procedure rkdb.Setbelegpruefung(Index: Integer; const Abelegpruefung: belegpruefung);
begin
  Fbelegpruefung := Abelegpruefung;
  Fbelegpruefung_Specified := True;
end;

function rkdb.belegpruefung_Specified(Index: Integer): boolean;
begin
  Result := Fbelegpruefung_Specified;
end;

destructor status_see.Destroy;
begin
  System.SysUtils.FreeAndNil(Fpaket_nr);
  System.SysUtils.FreeAndNil(Fts_erstellung);
  System.SysUtils.FreeAndNil(Fsatznr);
  System.SysUtils.FreeAndNil(Fzertifikatsseriennummer);
  inherited Destroy;
end;

procedure status_see.Setfastnr(Index: Integer; const Afastnr: fastnr);
begin
  Ffastnr := Afastnr;
  Ffastnr_Specified := True;
end;

function status_see.fastnr_Specified(Index: Integer): boolean;
begin
  Result := Ffastnr_Specified;
end;

destructor status_kasse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fpaket_nr);
  System.SysUtils.FreeAndNil(Fts_erstellung);
  System.SysUtils.FreeAndNil(Fsatznr);
  inherited Destroy;
end;

procedure status_kasse.Setfastnr(Index: Integer; const Afastnr: fastnr);
begin
  Ffastnr := Afastnr;
  Ffastnr_Specified := True;
end;

function status_kasse.fastnr_Specified(Index: Integer): boolean;
begin
  Result := Ffastnr_Specified;
end;

constructor rkdbResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor rkdbResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fresult)-1 do
    System.SysUtils.FreeAndNil(Fresult[I]);
  System.SetLength(Fresult, 0);
  System.SysUtils.FreeAndNil(Fpaket_nr);
  System.SysUtils.FreeAndNil(Fts_erstellung);
  inherited Destroy;
end;

procedure rkdbResponse.Setfastnr(Index: Integer; const Afastnr: fastnr);
begin
  Ffastnr := Afastnr;
  Ffastnr_Specified := True;
end;

function rkdbResponse.fastnr_Specified(Index: Integer): boolean;
begin
  Result := Ffastnr_Specified;
end;

procedure rkdbResponse.Setart_uebermittlung(Index: Integer; const Aart_uebermittlung: art_uebermittlung);
begin
  Fart_uebermittlung := Aart_uebermittlung;
  Fart_uebermittlung_Specified := True;
end;

function rkdbResponse.art_uebermittlung_Specified(Index: Integer): boolean;
begin
  Result := Fart_uebermittlung_Specified;
end;

procedure rkdbResponse.Setinfo(Index: Integer; const Ainfo: info);
begin
  Finfo := Ainfo;
  Finfo_Specified := True;
end;

function rkdbResponse.info_Specified(Index: Integer): boolean;
begin
  Result := Finfo_Specified;
end;

destructor status_ggs.Destroy;
begin
  System.SysUtils.FreeAndNil(Fpaket_nr);
  System.SysUtils.FreeAndNil(Fts_erstellung);
  System.SysUtils.FreeAndNil(Fsatznr);
  inherited Destroy;
end;

procedure status_ggs.Setfastnr(Index: Integer; const Afastnr: fastnr);
begin
  Ffastnr := Afastnr;
  Ffastnr_Specified := True;
end;

function status_ggs.fastnr_Specified(Index: Integer): boolean;
begin
  Result := Ffastnr_Specified;
end;

procedure status_ggs.Setzusatz_ob(Index: Integer; const Azusatz_ob: zusatz_ob);
begin
  Fzusatz_ob := Azusatz_ob;
  Fzusatz_ob_Specified := True;
end;

function status_ggs.zusatz_ob_Specified(Index: Integer): boolean;
begin
  Result := Fzusatz_ob_Specified;
end;

initialization
  { rkdbServicePort }
  InvRegistry.RegisterInterface(TypeInfo(rkdbServicePort), 'https://finanzonline.bmf.gv.at/rkdb', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(rkdbServicePort), 'rkdb');
  InvRegistry.RegisterInvokeOptions(TypeInfo(rkdbServicePort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(rkdbServicePort), ioLiteral);
  RemClassRegistry.RegisterXSInfo(TypeInfo(verificationState2), 'https://finanzonline.bmf.gv.at/rkdb', 'verificationState2', 'verificationState');
  RemClassRegistry.RegisterXSClass(output, 'https://finanzonline.bmf.gv.at/rkdb', 'output');
  RemClassRegistry.RegisterXSInfo(TypeInfo(begruendung2), 'https://finanzonline.bmf.gv.at/rkdb', 'begruendung2', 'begruendung');
  RemClassRegistry.RegisterXSInfo(TypeInfo(begruendung), 'https://finanzonline.bmf.gv.at/rkdb', 'begruendung');
  RemClassRegistry.RegisterXSInfo(TypeInfo(verificationState), 'https://finanzonline.bmf.gv.at/rkdb', 'verificationState');
  RemClassRegistry.RegisterXSClass(input, 'https://finanzonline.bmf.gv.at/rkdb', 'input');
  RemClassRegistry.RegisterXSInfo(TypeInfo(verificationResultList), 'https://finanzonline.bmf.gv.at/rkdb', 'verificationResultList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_registrierung_ggs), 'https://finanzonline.bmf.gv.at/rkdb', 'Array_Of_registrierung_ggs');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ausfall_se), 'https://finanzonline.bmf.gv.at/rkdb', 'Array_Of_ausfall_se');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_wiederinbetriebnahme_se), 'https://finanzonline.bmf.gv.at/rkdb', 'Array_Of_wiederinbetriebnahme_se');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_registrierung_se), 'https://finanzonline.bmf.gv.at/rkdb', 'Array_Of_registrierung_se');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_registrierung_kasse), 'https://finanzonline.bmf.gv.at/rkdb', 'Array_Of_registrierung_kasse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_wiederinbetriebnahme_ggs), 'https://finanzonline.bmf.gv.at/rkdb', 'Array_Of_wiederinbetriebnahme_ggs');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_result), 'https://finanzonline.bmf.gv.at/rkdb', 'Array_Of_result');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_rkdbMessage), 'https://finanzonline.bmf.gv.at/rkdb', 'Array_Of_rkdbMessage');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ausfall_kasse), 'https://finanzonline.bmf.gv.at/rkdb', 'Array_Of_ausfall_kasse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_wiederinbetriebnahme_kasse), 'https://finanzonline.bmf.gv.at/rkdb', 'Array_Of_wiederinbetriebnahme_kasse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ausfall_ggs), 'https://finanzonline.bmf.gv.at/rkdb', 'Array_Of_ausfall_ggs');
  RemClassRegistry.RegisterXSInfo(TypeInfo(status), 'https://finanzonline.bmf.gv.at/rkdb', 'status');
  RemClassRegistry.RegisterXSInfo(TypeInfo(art_uebermittlung2), 'https://finanzonline.bmf.gv.at/rkdb', 'art_uebermittlung2', 'art_uebermittlung');
  RemClassRegistry.RegisterXSInfo(TypeInfo(art_uebermittlung), 'https://finanzonline.bmf.gv.at/rkdb', 'art_uebermittlung');
  RemClassRegistry.RegisterXSInfo(TypeInfo(seriennummerType), 'https://finanzonline.bmf.gv.at/rkdb', 'seriennummerType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(anmerkung2), 'https://finanzonline.bmf.gv.at/rkdb', 'anmerkung2', 'anmerkung');
  RemClassRegistry.RegisterXSInfo(TypeInfo(anmerkung), 'https://finanzonline.bmf.gv.at/rkdb', 'anmerkung');
  RemClassRegistry.RegisterXSInfo(TypeInfo(benid2), 'https://finanzonline.bmf.gv.at/rkdb', 'benid2', 'benid');
  RemClassRegistry.RegisterXSInfo(TypeInfo(benid), 'https://finanzonline.bmf.gv.at/rkdb', 'benid');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tid2), 'https://finanzonline.bmf.gv.at/rkdb', 'tid2', 'tid');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tid), 'https://finanzonline.bmf.gv.at/rkdb', 'tid');
  RemClassRegistry.RegisterXSInfo(TypeInfo(id2), 'https://finanzonline.bmf.gv.at/rkdb', 'id2', 'id');
  RemClassRegistry.RegisterXSInfo(TypeInfo(id), 'https://finanzonline.bmf.gv.at/rkdb', 'id');
  RemClassRegistry.RegisterXSInfo(TypeInfo(rc2), 'https://finanzonline.bmf.gv.at/rkdb', 'rc2', 'rc');
  RemClassRegistry.RegisterXSInfo(TypeInfo(rc), 'https://finanzonline.bmf.gv.at/rkdb', 'rc');
  RemClassRegistry.RegisterXSInfo(TypeInfo(msg), 'https://finanzonline.bmf.gv.at/rkdb', 'msg');
  RemClassRegistry.RegisterXSClass(rkdbMessage, 'https://finanzonline.bmf.gv.at/rkdb', 'rkdbMessage');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbMessage), 'rc', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbMessage), 'msg', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(beleg2), 'https://finanzonline.bmf.gv.at/rkdb', 'beleg2', 'beleg');
  RemClassRegistry.RegisterXSInfo(TypeInfo(beleg), 'https://finanzonline.bmf.gv.at/rkdb', 'beleg');
  RemClassRegistry.RegisterXSInfo(TypeInfo(benutzerschluessel2), 'https://finanzonline.bmf.gv.at/rkdb', 'benutzerschluessel2', 'benutzerschluessel');
  RemClassRegistry.RegisterXSInfo(TypeInfo(benutzerschluessel), 'https://finanzonline.bmf.gv.at/rkdb', 'benutzerschluessel');
  RemClassRegistry.RegisterXSInfo(TypeInfo(info), 'https://finanzonline.bmf.gv.at/rkdb', 'info');
  RemClassRegistry.RegisterXSInfo(TypeInfo(art_se_ggs2), 'https://finanzonline.bmf.gv.at/rkdb', 'art_se_ggs2', 'art_se_ggs');
  RemClassRegistry.RegisterXSInfo(TypeInfo(art_ob2), 'https://finanzonline.bmf.gv.at/rkdb', 'art_ob2', 'art_ob');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ob2), 'https://finanzonline.bmf.gv.at/rkdb', 'ob2', 'ob');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ts_registrierung), 'https://finanzonline.bmf.gv.at/rkdb', 'ts_registrierung');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ts_status), 'https://finanzonline.bmf.gv.at/rkdb', 'ts_status');
  RemClassRegistry.RegisterXSClass(abfrage_ergebnis, 'https://finanzonline.bmf.gv.at/rkdb', 'abfrage_ergebnis');
  RemClassRegistry.RegisterXSClass(verificationResult, 'https://finanzonline.bmf.gv.at/rkdb', 'verificationResult');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(verificationResult), 'verificationState', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(verificationResult), 'verificationResultList', '[ArrayItemName="verificationResult", Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(beginn_ausfall), 'https://finanzonline.bmf.gv.at/rkdb', 'beginn_ausfall');
  RemClassRegistry.RegisterXSInfo(TypeInfo(kundeninfo2), 'https://finanzonline.bmf.gv.at/rkdb', 'kundeninfo2', 'kundeninfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(kundeninfo), 'https://finanzonline.bmf.gv.at/rkdb', 'kundeninfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(art_se2), 'https://finanzonline.bmf.gv.at/rkdb', 'art_se2', 'art_se');
  RemClassRegistry.RegisterXSInfo(TypeInfo(art_se), 'https://finanzonline.bmf.gv.at/rkdb', 'art_se');
  RemClassRegistry.RegisterXSInfo(TypeInfo(zertifikat2), 'https://finanzonline.bmf.gv.at/rkdb', 'zertifikat2', 'zertifikat');
  RemClassRegistry.RegisterXSInfo(TypeInfo(zertifikat), 'https://finanzonline.bmf.gv.at/rkdb', 'zertifikat');
  RemClassRegistry.RegisterXSInfo(TypeInfo(public_key2), 'https://finanzonline.bmf.gv.at/rkdb', 'public_key2', 'public_key');
  RemClassRegistry.RegisterXSInfo(TypeInfo(kassenidentifikationsnummer2), 'https://finanzonline.bmf.gv.at/rkdb', 'kassenidentifikationsnummer2', 'kassenidentifikationsnummer');
  RemClassRegistry.RegisterXSInfo(TypeInfo(kassenidentifikationsnummer), 'https://finanzonline.bmf.gv.at/rkdb', 'kassenidentifikationsnummer');
  RemClassRegistry.RegisterXSInfo(TypeInfo(zusatz_ob2), 'https://finanzonline.bmf.gv.at/rkdb', 'zusatz_ob2', 'zusatz_ob');
  RemClassRegistry.RegisterXSInfo(TypeInfo(vda_id2), 'https://finanzonline.bmf.gv.at/rkdb', 'vda_id2', 'vda_id');
  RemClassRegistry.RegisterXSInfo(TypeInfo(vda_id), 'https://finanzonline.bmf.gv.at/rkdb', 'vda_id');
  RemClassRegistry.RegisterXSClass(zertifikatsseriennummer, 'https://finanzonline.bmf.gv.at/rkdb', 'zertifikatsseriennummer');
  RemClassRegistry.RegisterXSInfo(TypeInfo(erzwinge_asynchron2), 'https://finanzonline.bmf.gv.at/rkdb', 'erzwinge_asynchron2', 'erzwinge_asynchron');
  RemClassRegistry.RegisterXSInfo(TypeInfo(erzwinge_asynchron), 'https://finanzonline.bmf.gv.at/rkdb', 'erzwinge_asynchron');
  RemClassRegistry.RegisterXSClass(rkdbRequest, 'https://finanzonline.bmf.gv.at/rkdb', 'rkdbRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbRequest), 'tid', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbRequest), 'benid', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbRequest), 'id', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbRequest), 'art_uebermittlung', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbRequest), 'erzwinge_asynchron', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterSerializeOptions(rkdbRequest, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ts_erstellung2), 'https://finanzonline.bmf.gv.at/rkdb', 'ts_erstellung2', 'ts_erstellung');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ts_erstellung), 'https://finanzonline.bmf.gv.at/rkdb', 'ts_erstellung');
  RemClassRegistry.RegisterXSInfo(TypeInfo(art_se_ggs), 'https://finanzonline.bmf.gv.at/rkdb', 'art_se_ggs');
  RemClassRegistry.RegisterXSInfo(TypeInfo(public_key), 'https://finanzonline.bmf.gv.at/rkdb', 'public_key');
  RemClassRegistry.RegisterXSClass(ausfall, 'https://finanzonline.bmf.gv.at/rkdb', 'ausfall');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall), 'begruendung', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall), 'beginn_ausfall', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(art_ob), 'https://finanzonline.bmf.gv.at/rkdb', 'art_ob');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ob), 'https://finanzonline.bmf.gv.at/rkdb', 'ob');
  RemClassRegistry.RegisterXSInfo(TypeInfo(zusatz_ob), 'https://finanzonline.bmf.gv.at/rkdb', 'zusatz_ob');
  RemClassRegistry.RegisterXSInfo(TypeInfo(paket_nr2), 'https://finanzonline.bmf.gv.at/rkdb', 'paket_nr2', 'paket_nr');
  RemClassRegistry.RegisterXSInfo(TypeInfo(paket_nr), 'https://finanzonline.bmf.gv.at/rkdb', 'paket_nr');
  RemClassRegistry.RegisterXSInfo(TypeInfo(satznr2), 'https://finanzonline.bmf.gv.at/rkdb', 'satznr2', 'satznr');
  RemClassRegistry.RegisterXSInfo(TypeInfo(satznr), 'https://finanzonline.bmf.gv.at/rkdb', 'satznr');
  RemClassRegistry.RegisterXSClass(registrierung_ggs, 'https://finanzonline.bmf.gv.at/rkdb', 'registrierung_ggs');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_ggs), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_ggs), 'kundeninfo', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_ggs), 'art_ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_ggs), 'ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_ggs), 'zusatz_ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_ggs), 'art_se_ggs', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_ggs), 'public_key', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_ggs), 'zertifikat', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(registrierung_kasse, 'https://finanzonline.bmf.gv.at/rkdb', 'registrierung_kasse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_kasse), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_kasse), 'kundeninfo', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_kasse), 'kassenidentifikationsnummer', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_kasse), 'anmerkung', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_kasse), 'benutzerschluessel', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(registrierung_se, 'https://finanzonline.bmf.gv.at/rkdb', 'registrierung_se');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_se), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_se), 'kundeninfo', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_se), 'art_se', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_se), 'vda_id', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(registrierung_se), 'zertifikat', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(ausfall_kasse, 'https://finanzonline.bmf.gv.at/rkdb', 'ausfall_kasse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall_kasse), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall_kasse), 'kundeninfo', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall_kasse), 'kassenidentifikationsnummer', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(ausfall_se, 'https://finanzonline.bmf.gv.at/rkdb', 'ausfall_se');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall_se), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall_se), 'kundeninfo', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(belegpruefung, 'https://finanzonline.bmf.gv.at/rkdb', 'belegpruefung');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(belegpruefung), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(belegpruefung), 'kundeninfo', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(belegpruefung), 'beleg', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(ausfall_ggs, 'https://finanzonline.bmf.gv.at/rkdb', 'ausfall_ggs');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall_ggs), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall_ggs), 'kundeninfo', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall_ggs), 'art_ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall_ggs), 'ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausfall_ggs), 'zusatz_ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(result, 'https://finanzonline.bmf.gv.at/rkdb', 'result');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(result), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(result), 'kundeninfo', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(result), 'verificationResultList', '[ArrayItemName="verificationResult", Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(ausserbetriebnahme, 'https://finanzonline.bmf.gv.at/rkdb', 'ausserbetriebnahme');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ausserbetriebnahme), 'begruendung', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ende_ausfall), 'https://finanzonline.bmf.gv.at/rkdb', 'ende_ausfall');
  RemClassRegistry.RegisterXSClass(wiederinbetriebnahme_se, 'https://finanzonline.bmf.gv.at/rkdb', 'wiederinbetriebnahme_se');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_se), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_se), 'kundeninfo', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_se), 'ende_ausfall', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(wiederinbetriebnahme_kasse, 'https://finanzonline.bmf.gv.at/rkdb', 'wiederinbetriebnahme_kasse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_kasse), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_kasse), 'kundeninfo', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_kasse), 'kassenidentifikationsnummer', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_kasse), 'ende_ausfall', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(wiederinbetriebnahme_ggs, 'https://finanzonline.bmf.gv.at/rkdb', 'wiederinbetriebnahme_ggs');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_ggs), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_ggs), 'kundeninfo', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_ggs), 'art_ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_ggs), 'ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_ggs), 'zusatz_ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wiederinbetriebnahme_ggs), 'ende_ausfall', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(fastnr2), 'https://finanzonline.bmf.gv.at/rkdb', 'fastnr2', 'fastnr');
  RemClassRegistry.RegisterXSInfo(TypeInfo(fastnr), 'https://finanzonline.bmf.gv.at/rkdb', 'fastnr');
  RemClassRegistry.RegisterXSClass(rkdb, 'https://finanzonline.bmf.gv.at/rkdb', 'rkdb');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdb), 'fastnr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdb), 'paket_nr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdb), 'ts_erstellung', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(status_see, 'https://finanzonline.bmf.gv.at/rkdb', 'status_see');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_see), 'fastnr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_see), 'paket_nr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_see), 'ts_erstellung', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_see), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(status_kasse, 'https://finanzonline.bmf.gv.at/rkdb', 'status_kasse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_kasse), 'fastnr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_kasse), 'paket_nr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_kasse), 'ts_erstellung', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_kasse), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_kasse), 'kassenidentifikationsnummer', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterXSClass(rkdbResponse, 'https://finanzonline.bmf.gv.at/rkdb', 'rkdbResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbResponse), 'fastnr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbResponse), 'paket_nr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbResponse), 'art_uebermittlung', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbResponse), 'ts_erstellung', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(rkdbResponse), 'info', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterSerializeOptions(rkdbResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(status_ggs, 'https://finanzonline.bmf.gv.at/rkdb', 'status_ggs');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_ggs), 'fastnr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_ggs), 'paket_nr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_ggs), 'ts_erstellung', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_ggs), 'satznr', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_ggs), 'art_ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_ggs), 'ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(status_ggs), 'zusatz_ob', '[Namespace="https://finanzonline.bmf.gv.at/rkdb"]');

end.
