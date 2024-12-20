unit UCadPon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFCadPon = class(TForm)
    PanFundo: TPanel;
    PanGrid: TPanel;
    GridPon: TDBGrid;
    Panel1: TPanel;
    BtNew: TBitBtn;
    BtCancel: TBitBtn;
    BtAlter: TBitBtn;
    btExclude: TBitBtn;
    BtSave: TBitBtn;
    Panel2: TPanel;
    DsTbCadPonDmCad: TDataSource;
    PanInfo: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    mCod: TDBEdit;
    mNom: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    mQtdCar: TDBEdit;
    mCon: TDBEdit;
    Label2: TLabel;
    PanPes: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    mPesPor: TComboBox;
    mDadPes: TEdit;
    BtSea: TBitBtn;
    Label7: TLabel;
    mCodDis: TDBLookupComboBox;
    procedure BtNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtAlterClick(Sender: TObject);
    procedure BtCancelClick(Sender: TObject);
    procedure btExcludeClick(Sender: TObject);
    procedure BtSaveClick(Sender: TObject);
    procedure DsTbCadPonDmCadStateChange(Sender: TObject);
    procedure BtSeaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure PrepareTable;
  public
    { Public declarations }
    constructor Create(Aowner : TComponent);
  end;

var
  FCadPon: TFCadPon;

implementation

{$R *.dfm}

uses UDmCad;

{ TForm1 }

procedure TFCadPon.BtAlterClick(Sender: TObject);
begin
  DmCad.TbCadPon.Edit;
  mNom.SetFocus;
end;

procedure TFCadPon.BtCancelClick(Sender: TObject);
begin
  DmCad.TbCadPon.Cancel;
end;

procedure TFCadPon.btExcludeClick(Sender: TObject);
begin
  DmCad.TbCadPon.Delete;
  DmCad.TbCadPon.ApplyUpdates;
  DmCad.TbCadPon.CommitUpdates;
end;

procedure TFCadPon.BtNewClick(Sender: TObject);
begin
  DmCad.TbCadPon.Append;
  mNom.SetFocus;
end;

procedure TFCadPon.BtSaveClick(Sender: TObject);
begin
  DmCad.TbCadPon.ApplyUpdates;
  DmCad.TbCadPon.CommitUpdates;
end;

procedure TFCadPon.BtSeaClick(Sender: TObject);
begin
  PrepareTable;
  if not DmCad.TbCadDis.Active then DmCad.TbCadDis.Open;

end;

constructor TFCadPon.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
end;

procedure TFCadPon.DsTbCadPonDmCadStateChange(Sender: TObject);
begin
  case DmCad.TbCadPon.State of
    dsBrowse:
    begin
      BtNew.Enabled := True;
      BtAlter.Enabled := True;
      BtCancel.Enabled := False;
      BtSave.Enabled := False;
      BtExclude.Enabled := True;
      PanInfo.Enabled := False;
    end;
    dsInsert:
    begin
      BtNew.Enabled := False;
      BtAlter.Enabled := False;
      BtCancel.Enabled := True;
      BtSave.Enabled := True;
      BtExclude.Enabled := False;
      PanInfo.Enabled := True;
    end;
    dsEdit:
    begin
      BtNew.Enabled := False;
      BtAlter.Enabled := False;
      BtCancel.Enabled := True;
      BtSave.Enabled := True;
      BtExclude.Enabled := False;
      PanInfo.Enabled := True;
    end;
  end;
end;

procedure TFCadPon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmCad.TbCadPon.Close;
end;

procedure TFCadPon.FormShow(Sender: TObject);
begin
  btNew.SetFocus;
end;

procedure TFCadPon.PrepareTable;
begin
  DmCad.TbCadPon.Close;
  DmCad.TbCadPon.SQL.Clear;
  DmCad.TbCadPon.SQL.Add('Select * From TbCadPon'
                       + ' Where 1 = 1');

  if mDadPes.Text <> '' then begin
    case mPesPor.ItemIndex of
      0: DmCad.TbCadPon.SQL.Add(' And ID = :ID');
      1: DmCad.TbCadPon.SQL.Add(' And NOME = :NOME');
      2: DmCad.TbCadPon.SQL.Add(' And CODDIS = :CODDIS');
    end;

    case mPesPor.ItemIndex of
      0: DmCad.TbCadPon.ParamByName('ID').AsInteger := StrToInt(mDadPes.Text);
      1: DmCad.TbCadPon.ParamByName('NOME').AsString := mDadPes.Text;
      2: DmCad.TbCadPon.ParamByName('CODDIS').AsInteger := StrToInt(mDadPes.Text);
    end;

  end;

  DmCad.TbCadPon.Open;
end;

end.
