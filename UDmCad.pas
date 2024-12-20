unit UDmCad;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmCad = class(TDataModule)
    TbCadPon: TFDQuery;
    DsCadPon: TDataSource;
    TbCadPonID: TIntegerField;
    TbCadPonNOME: TStringField;
    TbCadPonCONTATO: TStringField;
    TbCadPonQTDCARTELA: TIntegerField;
    TbAux: TFDQuery;
    DsDivCar: TDataSource;
    TbDivCar: TFDMemTable;
    TbDivCarNome: TStringField;
    TbDivCarQtdCartela: TIntegerField;
    TbDivCarNumIni: TIntegerField;
    TbDivCarNumFin: TIntegerField;
    TbCadDis: TFDQuery;
    DsCadDis: TDataSource;
    TbCadDisID: TIntegerField;
    TbCadDisNOME: TStringField;
    TbCadPonCODDIS: TIntegerField;
    procedure TbCadPonNewRecord(DataSet: TDataSet);
    procedure TbCadDisNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCad: TDmCad;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main;

{$R *.dfm}

procedure TDmCad.TbCadDisNewRecord(DataSet: TDataSet);
begin
  TbAux.Close;
  TbAux.SQL.Clear;
  TbAux.SQL.Add('Select Max(ID) From TbCadDis');
  TbAux.Open;

  TbCadDisID.AsInteger := TbAux.Fields[0].AsInteger + 1;
end;

procedure TDmCad.TbCadPonNewRecord(DataSet: TDataSet);
begin
  TbAux.Close;
  TbAux.SQL.Clear;
  TbAux.SQL.Add('Select Max(ID) From TbCadPon');
  TbAux.Open;

  TbCadPonID.AsInteger := TbAux.Fields[0].AsInteger + 1;
end;

end.
