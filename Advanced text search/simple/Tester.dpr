program Tester;

uses
  fastmm4,
  Forms,
  TesterForm in 'TesterForm.pas' {frmTester},
  cbAppData in '..\..\..\..\..\Packages\LightSaber\cbAppData.pas',
  FormLog in '..\..\..\..\..\Packages\LightSaber\FormLog.pas';

{$R *.res}

begin
  Application.Initialize;
  AppData:= TAppDataEx.Create('Cubic Advanced Text Search');
  Application.MainFormOnTaskbar := True;    { If true, a taskbar button represents the application's main form and displays its caption. All child forms will stay on top of the MainForm (bad)! If False, a taskbar button represents the application's (hidden) main window and bears the application's Title. Must be True to use Windows (Vista) Aero effects (ive taskbar thumbnails, Dynamic Windows, Windows Flip, Windows Flip 3D). https://stackoverflow.com/questions/66720721/ } 
  Application.CreateForm(TfrmTester, frmTester);
  frmTester.Show;
  Application.Run;
end.
