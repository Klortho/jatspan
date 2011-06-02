JATSPAN Perl Scripts and Modules
$Id$


These utilities are still in their infancy.  I mostly use Strawberry Perl under MS Windows,
and these setup instructions are very specific to this environment.  Suggestions
are solicited on how to configure these utilities to be more portable, and how to
make the setup easier.

To set up to use these utilities, make a batch file somewhere, with something like the following:
  set JATSPAN_ROOT=M:\JATS\Sourceforge-nlm-jats\trunk
  set path=%path%;%JATSPAN_ROOT%\perl
  set perl5lib=%perl5lib%;%JATSPAN_ROOT%\perl

I put mine in C:\bin\SetJatsEnv.bat.

Next, create a desktop shortcut to, for example, set the "Target" to
  %SystemRoot%\System32\cmd.exe /K C:\bin\SetJatsEnv.bat

This will open up a DOS window, and run the setup script.  Name the shortcut something like
"JATSPAN".



