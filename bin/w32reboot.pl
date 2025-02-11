#!/usr/bin/env perl
use Win32;

print '
Win32::InitiateSystemShutdown
(MACHINE, MESSAGE, TIMEOUT, FORCECLOSE, REBOOT)

[EXT] Shutsdown the specified MACHINE, notifying users with the supplied MESSAGE, within the specified TIMEOUT interval. Forces closing of all documents without prompting the user if FORCECLOSE is true, and reboots the machine if REBOOT is true. This function works only on WinNT.

';

Win32::InitiateSystemShutdown( '', "\nAction Complete.\n\nSystem will now Reboot\!", 20, 0, 1 );



