unit UCadDis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TFCadDis = class(TForm)
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
    PanInfo: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Label4: TLabel;
    mCod: TDBEdit;
    mNom: TDBEdit;
    PanPes: TPanel;
    mPesPor: TComboBox;
    Label5: TLabel;
    mDadPes: TEdit;
    Label6: TLabel;
    BtSea: TBitBtn;
    DsCadDisDmCad: TDataSource;
    procedure BtSeaClick(Sender: TObject);
    procedure BtNewClick(Sender: TObject);
    procedure BtAlterClick(Sender: TObject);
    procedure BtCancelClick(Sender: TObject);
    procedure btExcludeClick(Sender: TObject);
    procedure BtSaveClick(Sender: TObject);
    procedure DsCadDisDmCadStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure PrepareTable;
  public
    { Public declarations }
     constructor Create(Aowner : TComponent);
  end;

var
  FCadDis: TFCadDis;

implementation

{$R *.dfm}

uses UDmCad;

procedure TFCadDis.BtAlterClick(Sender: TObject);
begin
  DmCad.TbCadDis.Edit;
  mNom.SetFocus;
end;

procedure TFCadDis.BtCancelClick(Sender: TObject);
begin
  DmCad.TbCadDis.Cancel;
end;

procedure TFCadDis.btExcludeClick(Sender: TObject);
begin
  DmCad.TbCadDis.Delete;
  DmCad.TbCadDis.ApplyUpdates;
  DmCad.TbCadDis.CommitUpdates;
end;

procedure TFCadDis.BtNewClick(Sender: TObject);
begin
  DmCad.TbCadDis.Append;
  mNom.SetFocus;
end;

procedure TFCadDis.BtSaveClick(Sender: TObject);
begin
  DmCad.TbCadDis.ApplyUpdates;
  DmCad.TbCadDis.CommitUpdates;
end;

procedure TFCadDis.BtSeaClick(Sender: TObject);
begin
  PrepareTable;
end;

constructor TFCadDis.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
end;

procedure TFCadDis.DsCadDisDmCadStateChange(Sender: TObject);
begin
  case DmCad.TbCadDis.State of
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

procedure TFCadDis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmCad.TbCadDis.Close;
end;

procedure TFCadDis.PrepareTable;
begin
  DmCad.TbCadDis.Close;
  DmCad.TbCadDis.SQL.Clear;
  DmCad.TbCadDis.SQL.Add('Select * From TbCadDis'
                       + ' Where 1 = 1');

  if mDadPes.Text <> '' then begin
    case mPesPor.ItemIndex of
      0: DmCad.TbCadDis.SQL.Add(' And ID = :ID');
      1: DmCad.TbCadDis.SQL.Add(' And NOME = :NOME');
    end;

    case mPesPor.ItemIndex of
      0: DmCad.TbCadDis.ParamByName('ID').AsInteger := StrToInt(mDadPes.Text);
      1: DmCad.TbCadDis.ParamByName('NOME').AsString := mDadPes.Text;
    end;

  end;

  DmCad.TbCadDis.Open;

end;

end.
