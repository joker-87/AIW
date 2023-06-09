# AIW
after install wizard for windows 10/11
                                                                                          

Powershell script that optimize windows by stoping services that slow down windows and disablig them.
Also install base programs via Winget package manager (view list)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Services disabled by the script:

_SysMain:

SysMain can use many resources (high disk usage), significantly increasing CPU usage.
As a result, you might experience a slow computer or even a PC that freezes. 

_WSearch:

The Windows Search Indexer is only required if you search your directories and files.
In other words, if you don't use Windows search to locate specific files or media,
you can definitely disable it. In addition, disabling the Windows Search Indexer will
result in a noticeable performance improvement.

_DiagTrack:
Connected User Experiences and Telemetry is a Windows service that manages the collection
and transmission of diagnostic and usage information. It’s also known as Diagnostics Tracking, or DiagTrack.

_dmwappushservice:

Device Management Wireless Application Protocol WAP push message routing service.
WAP Push messages are specially formatted SMS messages that display an alert message to the user, and give the user the option of connecting directly to a particular URL via the mobile phone's WAP browser

_MapsBroker:

Maps. Some map apps, such as Windows Maps, depend on the Downloaded Maps Manager service, also known as MapsBroker. If you download offline maps, this service runs in the background to keep them up to date

_RemoteRegistry:

The Windows Remote Registry service is a feature on all Microsoft Windows operating system that enables remote access to the client computer or server for viewing and modifying the Windows registry entries.

_Fax:

Windows 10 include an application called Windows Fax and Scan. This program allows users to send and receive faxes right from their computers.

_BDESVC:

BDESVC hosts the BitLocker Drive Encryption service. BitLocker Drive Encryption provides secure startup for the operating system, as well as full volume encryption for OS, fixed or removable volumes.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Programs installed via winget:

Mozilla Firefox

Google Chrome

Adobe Acrobat Reader

7Zip

WinRAR

RustDesk

NetFramework 4.8.1

Visual C++ redistributable 2005

Visual C++ redistributable 2008

Visual C++ redistributable 2010

Visual C++ redistributable 2012

Visual C++ redistributable 2013

Visual C++ redistributable 2015-2022

Enables NetFramework 3.5

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Miscellaneous:

*enables ICMP (ping) traffic
