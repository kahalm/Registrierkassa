unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  regKasseService,
  Soap.XSBuiltIns,
  sessionService;

type
  TForm1 = class(TForm)
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    EditTid: TEdit;
    EditBenid: TEdit;
    EditPin: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    FId: string;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
var
  Service: rkdbServicePort;
  Req    : rkdbRequest;
  Load   : rkdb;
  Kassa  : ausfall_kasse;
  Resp   : rkdbResponse;
begin

  //  Service := GetrkdbServicePort();
  Service := GetrkdbServicePort();
  Req     := rkdbRequest.Create();
  Load    := rkdb.Create();
  Kassa   := ausfall_kasse.Create();

  Req.tid                := EditTid.Text;
  Req.benid              := EditBenid.Text;
  Req.art_uebermittlung  := art_uebermittlung2.P;
  Req.erzwinge_asynchron := true;
  Req.id                 := FId;

  Load.ausfall_kasse  := [Kassa];
  Load.paket_nr       := paket_nr.Create;
  Load.paket_nr.AsBcd := 1;

  Load.ts_erstellung            := ts_erstellung.Create();
  Load.ts_erstellung.AsDateTime := Now();
  Req.rkdb                      := Load;
  {
   Die Satznummer ist eine beliebige bis zu 9-stellige Nummer,
   die vom Übermittler zur Identifizierung des Einzelelementes
   in der Liste vergeben wird.
   Im Ergebnisprotokoll (nur bei asynchroner Verarbeitung,
   wenn mehr als ein Element <ausfall_kasse> übermittelt
   wird) wird dieses Element zurückgemeldet.
  }
  Kassa.satznr       := satznr.Create();
  Kassa.satznr.AsBcd := 1;
  {
   Interne Kennzeichnung des Einzelelementes, die vom
   Übermittler eingetragen werden kann (optional)
   Im Ergebnisprotokoll (nur bei asynchroner Verarbeitung,
   wenn mehr als ein Element <ausfall_kasse> übermittelt
   wird) wird dieses Element zurückgemeldet.
  }
  Kassa.kundeninfo := 'Test Ausfall';
  {
   Identifikationsnummer der Registrierkasse
  }
  Kassa.kassenidentifikationsnummer := 'ViertlWeb1';

  {
   Grund für den Ausfall. Der Code ist der Tabelle unter Punkt
   4 zu entnehmen.
  }
  Kassa.ausfall             := ausfall.Create();
  Kassa.ausfall.begruendung := 99;
  {
   Zeitpunkt des Ausfalles. Ein zukünftiger Zeitpunkt ist
   unzulässig.
  }
  Kassa.ausfall.beginn_ausfall            := beginn_ausfall.Create();
  Kassa.ausfall.beginn_ausfall.AsDateTime := Now();

  //die sind wohl notwendig:
  Resp := Service.rkdb(Req);


  //pin      24409319fv
  //ViertlWeb1
  //Viertl!1976

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Service: sessionServicePort;
  Req    : loginRequest;
  Res    : loginResponse;
begin
  Service := GetsessionServicePort();
  Req     := loginRequest.Create();

  Req.tid   := EditTid.Text;
  Req.benid := EditBenid.Text;
  Req.pin   := EditPin.Text;

  Req.herstellerid := 'ATU32031609';

  Res := Service.login(Req);

  FId := Res.id;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Service: sessionServicePort;
  Req    : logoutRequest;
  Resp   : logoutResponse;
begin
  Service := GetsessionServicePort();
  Req     := logoutRequest.Create();

  Req.tid   := EditTid.Text;
  Req.benid := EditBenid.Text;
  Req.id    := FId;

  Resp := Service.logout(Req);

end;

end.
