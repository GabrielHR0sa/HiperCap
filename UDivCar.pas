unit UDivCar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.Menus, frCoreClasses,
  frxClass, frxDBSet;

type
  TFDivCar = class(TForm)
    PanFundo: TPanel;
    PanInfo: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    mNumIni: TEdit;
    mNumFin: TEdit;
    PanGrid: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    GridPon: TDBGrid;
    BtSave: TBitBtn;
    PanQtd: TPanel;
    Panel3: TPanel;
    mQtdCar: TEdit;
    PanPes: TPanel;
    Panel4: TPanel;
    mCodDis: TDBLookupComboBox;
    BtImp: TBitBtn;
    PopupMenu1: TPopupMenu;
    EditarRelatrio1: TMenuItem;
    FrxDivisao: TfrxDBDataset;
    procedure BtSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtImpClick(Sender: TObject);
    procedure EditarRelatrio1Click(Sender: TObject);
  private
    { Private declarations }
    function  CanStart : Boolean;
  public
    { Public declarations }
    constructor Create(Aowner : TComponent);
  end;

var
  FDivCar: TFDivCar;

implementation

{$R *.dfm}

uses UDmCad, Main;

{ TFDivCar }

procedure TFDivCar.BtImpClick(Sender: TObject);
begin
  FMain.VisualizarRelatorio(FMain.FR,FMain.DirRels + 'DivCar.Fr3');
end;

procedure TFDivCar.BtSaveClick(Sender: TObject);
Var
  Ini, Fin, Sum : Integer;
  primeiro : Boolean;
begin

  if not CanStart then begin
    MessageDlg('Preencha Todos os Dados para C�lculo', mtInformation, [mbOk], 0);
    Exit;
  end;

  Ini := 0;
  Fin := 0;
  Sum := 0;
  primeiro := True;

  DmCad.TbDivCar.Close;
  DmCad.TbDivCar.Open;

  DmCad.TbCadPon.Open;
  DmCad.TbCadPon.First;

  DmCad.TbAux.Close;
  DmCad.TbAux.SQL.Clear;
  DmCad.TbAux.SQL.Add('Select * From TbCadPon Where CODDIS = :CodDis');
  DmCad.TbAux.ParamByName('CodDis').AsInteger := mCodDis.KeyValue;
  DmCad.TbAux.Open;

  while not DmCad.TbAux.Eof do begin
    DmCad.TbDivCar.Append;
    DmCad.TbDivCarNOME.AsString := DmCad.TbAux.FieldByName('NOME').AsString;
    DmCad.TbDivCarQTDCARTELA.AsInteger := DmCad.TbAux.FieldByName('QTDCARTELA').AsInteger;

    if primeiro then
      Ini := StrToInt(mNumIni.Text);

    DmCad.TbDivCarNUMINI.AsInteger := Ini;

    Fin := Ini + DmCad.TbDivCarQTDCARTELA.AsInteger -1;

    DmCad.TbDivCarNUMFIN.AsInteger := Fin;

    primeiro := False;
    Ini := Fin + 1;
    Sum := Sum + DmCad.TbDivCarQTDCARTELA.AsInteger;

    DmCad.TbDivCar.Post;
    DmCad.TbAux.Next;
  end;

  mQtdCar.Text := IntToStr(Sum);
end;

function TFDivCar.CanStart: Boolean;
begin
  Result := False;

  if (mNumIni.Text <> '') and (mNumFin.Text <> '') and (mCodDis.Text <> '') then
    Result := True;

end;

constructor TFDivCar.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
end;

procedure TFDivCar.EditarRelatrio1Click(Sender: TObject);
begin
  FMain.EditarRelatorio(FMain.FR,FMain.DirRels + 'DivCar.Fr3');
end;

procedure TFDivCar.FormShow(Sender: TObject);
begin
  if not DmCad.TbCadDis.Active then DmCad.TbCadDis.Open;
  mCodDis.SetFocus;
end;

end.
