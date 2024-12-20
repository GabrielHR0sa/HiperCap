unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, frxSmartMemo, frCoreClasses, frxClass, frxDesgn;

type
  TFMain = class(TForm)
    PanFundo: TPanel;
    btPont: TBitBtn;
    BitBtn2: TBitBtn;
    DbConnection: TFDConnection;
    BitBtn1: TBitBtn;
    FR: TfrxReport;
    FRD: TfrxDesigner;
    procedure btPontClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DirRels : String;
    procedure VisualizarRelatorio(Var FR: TfrxReport; CaminhoRelat: String;
      Seguranca: Boolean = False);
    procedure EditarRelatorio(Var FR: TfrxReport; CaminhoRelat: String);
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

uses UCadPon, UDivCar, UCadDis;

procedure TFMain.BitBtn1Click(Sender: TObject);
begin
  FCadDis := TFCadDis.Create(Self);
  try
    FCadDis.ShowModal;
  finally
    FCadDis.Release;
  end;
end;

procedure TFMain.BitBtn2Click(Sender: TObject);
begin
  FDivCar := TFDivCar.Create(self);
  try
    FDivCar.ShowModal;
  finally
    FDivCar.Release;
  end;
end;

procedure TFMain.btPontClick(Sender: TObject);
begin
  FCadPon := TFCadPon.Create(self);
  try
    FCadPon.ShowModal;
  finally
    FCadPon.Release;
  end;
end;

procedure TFMain.EditarRelatorio(var FR: TfrxReport; CaminhoRelat: String);
begin
  FR.Clear; // Limpa qualquer conte�do anterior do relat�rio
  FR.LoadFromFile(CaminhoRelat); // Carrega o relat�rio a partir do arquivo especificado
  FR.DesignReport; // Abre o designer para edi��o
end;


procedure TFMain.FormShow(Sender: TObject);
begin
 DirRels    := 'C:\Hiper\Relatorio\';
end;

procedure TFMain.VisualizarRelatorio(var FR: TfrxReport; CaminhoRelat: String;
  Seguranca: Boolean);
begin
  FR.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbPageSetup, pbTools,
    pbNavigator];

  FR.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind,pbPageSetup, pbTools, pbNavigator];

//  if Seguranca then
//    FR.PreviewOptions.Buttons := [pbZoom, pbFind, pbPageSetup, pbTools,
//      pbNavigator];

  FR.Clear;
  FR.LoadFromFile(CaminhoRelat);
  FR.PrepareReport;
  FR.ShowReport;
end;

end.
