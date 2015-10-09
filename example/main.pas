unit Main;

{$mode delphi}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Menus, StdCtrls;

{ TMainForm }

type
  TMainForm = class(TForm)
    ToggleButton: TButton;
    ClearButton: TButton;
    ColorMenutItem: TMenuItem;
    QuitMenuItem: TMenuItem;
    PopupMenu: TPopupMenu;
    TrayIcon: TTrayIcon;
    procedure ToggleButtonClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure ColorMenutItemClick(Sender: TObject);
    procedure QuitMenuItemClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.ClearButtonClick(Sender: TObject);
begin
  TrayIcon.Icon.Clear;
end;

procedure TMainForm.ToggleButtonClick(Sender: TObject);
begin
  TrayIcon.Visible := not TrayIcon.Visible;
end;

procedure TMainForm.ColorMenutItemClick(Sender: TObject);
begin
  Color := clLime;
end;

procedure TMainForm.QuitMenuItemClick(Sender: TObject);
begin
  Close;
end;

end.

