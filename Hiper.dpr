program Hiper;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FMain},
  UCadPon in 'UCadPon.pas' {FCadPon},
  UDmCad in 'UDmCad.pas' {DmCad: TDataModule},
  UDivCar in 'UDivCar.pas' {FDivCar},
  UCadDis in 'UCadDis.pas' {FCadDis};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TDmCad, DmCad);
  Application.Run;
end.
