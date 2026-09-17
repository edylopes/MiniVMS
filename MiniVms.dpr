program MiniVms;

uses
  Vcl.Forms,
  MiniVMS.Views.Main in 'Views\MiniVMS.Views.Main.pas' {frmMain},
  MiniVMS.Views.SideBar in 'Views\MiniVMS.Views.SideBar.pas' {SideBarFrame: TFrame},
  OKCANCL2 in 'Utils\OKCANCL2.pas' {OKRightDlg},
  MiniVMS.Utils.UI in 'Utils\MiniVMS.Utils.UI.pas',
  MiniVMS.Application.Interfaces.CameraStream in 'Application\Interfaces\CameraStream\MiniVMS.Application.Interfaces.CameraStream.pas',
  MiniVMS.Application.Interfaces.RtspStream in 'Application\Interfaces\RtspStream\MiniVMS.Application.Interfaces.RtspStream.pas',
  MiniVMS.Infrastructure.RtspStream in 'Infrastructure\RtspStream\MiniVMS.Infrastructure.RtspStream.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TOKRightDlg, OKRightDlg);
  Application.Run;
end.
