# Lazarus.UnityAppIndicators

This is the fix for Lazarus TTrayIcon on Unity.

To use git the code above and:

* Add 'unitywsctrls.pas' to 'lazarus/lcl/interfaces/gtk2'
* Apply patch to your 'lazarus' folder
* Rebuild the 'lcl' package with the gtk2 widget set

A linux x86_64 compiled executable example is included.

## A Few Notes

It seems to me (which I say a lot because I'm not 100% positive) that app indicators in Unity were designed to restrict programmers and guide the UI design of Ubuntu in a specific direction. Namely to create more uniform visual styles and user interaction with apps.

As such I believe the following restrictions to apply to Unity app indicators:

* You cannot receive click or any mouse events for icons in the tray.
* A menu is required for an app indicator and the only action allowed is to show the menu when the mouse clicks with either button on a tray icon.
* An app can only have one app indicator and attempts to destroy or create a new one fail.
* You can only set the menu for an app indicator one time.
* Icons can be set from files only (you are supposed to use /usr/icons/share with themes).

I made a few workarounds to get by some of these issues. For example I use /tmp/appindicator to store icons temporarily. There are a few others as well, but this implementation was the best I could come up with for now.
