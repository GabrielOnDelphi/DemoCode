program SpeedTest;

uses
  {$IFDEF DEBUG}
  FastMM4,
  {$ENDIF }
  Forms,
  TesterForm in 'TesterForm.pas' {frmTester},
  cbAppData in '..\..\..\..\..\Packages\LightSaber\cbAppData.pas',
  cmDebugger in '..\..\..\..\..\Packages\LightSaber\cmDebugger.pas',
  FormLog in '..\..\..\..\..\Packages\LightSaber\FormLog.pas',
  chHardID in '..\..\..\..\..\Packages\LightSaber\chHardID.pas';

{$R *.res}

begin
  Application.Initialize;
  
  { MainFormOnTaskbar
    See: stackoverflow.com/questions/66720721

    If true:
      The taskbar button represents the application's Main Form and displays its caption.

      Bad: All child forms will stay on top of the MainForm!
      But they are not modal! The MainForm can still be clicked!
      If we don't really want this, we should stick with MainFormOnTaskbar = false.
      When we do want a child form to stay on top, then can use fsStayOnTop.

    If False:
      The taskbar button represents the application's (hidden) main window and bears the application's Title.
      Must be True to use Windows (Vista) Aero effects (live taskbar thumbnails, Dynamic Windows, Windows Flip, Windows Flip 3D).

      Bad: All child forms will disapear under the MainForm! }
      
  Application.MainFormOnTaskbar := True;      
  Application.Title := 'CubicTester'; // Set by AppData
  AppData:= TAppDataEx.Create('Cubic Tester Dummy');    { Absolutelly critical if you use the SaveForm/LoadForm functionality. This string will be used as the name of the INI file. }
  Application.CreateForm(TfrmTester, frmTester);
  frmTester.Show;
  Application.Run;
end.
