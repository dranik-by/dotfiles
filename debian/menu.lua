-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

local awesome                                                                      = awesome

Debian_menu                                                                        = {}

Debian_menu["Debian_Applications_Accessibility"]                                   = {
    { "Xmag", "xmag" },
}
Debian_menu["Debian_Applications_Editors"]                                         = {
    { "Xedit", "xedit" },
}
Debian_menu["Debian_Applications_Graphics"]                                        = {
    { "xcb", "/usr/bin/xcb" },
    { "X Window Snapshot", "xwd | xwud" },
}
Debian_menu["Debian_Applications_Network_Communication"]                           = {
    { "Telnet", "x-terminal-emulator -e " .. "/usr/bin/telnet.netkit" },
    { "Xbiff", "xbiff" },
}
Debian_menu["Debian_Applications_Network_File_Transfer"]                           = {
    { "Deluge", "/usr/bin/deluge", },
}
Debian_menu["Debian_Applications_Network_Web_Browsing"]                            = {
    { "Google Chrome", "/opt/google/chrome/google-chrome", "/opt/google/chrome/product_logo_32.xpm" },
    { "Lynx", "x-terminal-emulator -e " .. "lynx" },
    { "Opera", "/usr/bin/opera", "/usr/share/pixmaps/opera.xpm" },
    { "Yandex Browser", "/opt/yandex/browser/yandex-browser", "/opt/yandex/browser/product_logo_32.xpm" },
}
Debian_menu["Debian_Applications_Network"]                                         = {
    { "Communication", Debian_menu["Debian_Applications_Network_Communication"] },
    { "File Transfer", Debian_menu["Debian_Applications_Network_File_Transfer"] },
    { "Web Browsing", Debian_menu["Debian_Applications_Network_Web_Browsing"] },
}
Debian_menu["Debian_Applications_Programming"]                                     = {
    { "Monodoc (http)", "x-terminal-emulator -e " .. "/usr/bin/monodoc-http", "/usr/share/pixmaps/monodoc.xpm" },
    { "Tclsh8.6", "x-terminal-emulator -e " .. "/usr/bin/tclsh8.6" },
    { "TkWish8.6", "x-terminal-emulator -e /usr/bin/wish8.6" },
}
Debian_menu["Debian_Applications_Science_Mathematics"]                             = {
    { "Bc", "x-terminal-emulator -e " .. "/usr/bin/bc" },
    { "Dc", "x-terminal-emulator -e " .. "/usr/bin/dc" },
    { "Xcalc", "xcalc" },
}
Debian_menu["Debian_Applications_Science"]                                         = {
    { "Mathematics", Debian_menu["Debian_Applications_Science_Mathematics"] },
}
Debian_menu["Debian_Applications_Shells"]                                          = {
    { "Bash", "x-terminal-emulator -e " .. "/bin/bash --login" },
    { "Dash", "x-terminal-emulator -e " .. "/bin/dash -i" },
    { "Sh", "x-terminal-emulator -e " .. "/bin/sh --login" },
}
Debian_menu["Debian_Applications_System_Administration"]                           = {
    { "Editres", "editres" },
    { "Xclipboard", "xclipboard" },
    { "Xfontsel", "xfontsel" },
    { "Xkill", "xkill" },
    { "Xrefresh", "xrefresh" },
}
Debian_menu["Debian_Applications_System_Hardware"]                                 = {
    { "Xvidtune", "xvidtune" },
}
Debian_menu["Debian_Applications_System_Monitoring"]                               = {
    { "Pstree", "x-terminal-emulator -e " .. "/usr/bin/pstree.x11", "/usr/share/pixmaps/pstree16.xpm" },
    { "Top", "x-terminal-emulator -e " .. "/usr/bin/top" },
    { "Xconsole", "xconsole -file /dev/xconsole" },
    { "Xev", "x-terminal-emulator -e xev" },
    { "Xload", "xload" },
}
Debian_menu["Debian_Applications_System_Package_Management"]                       = {
    { "Synaptic Package Manager", "x-terminal-emulator -e synaptic-pkexec", "/usr/share/synaptic/pixmaps/synaptic_32x32.xpm" },
}
Debian_menu["Debian_Applications_System"]                                          = {
    { "Administration", Debian_menu["Debian_Applications_System_Administration"] },
    { "Hardware", Debian_menu["Debian_Applications_System_Hardware"] },
    { "Monitoring", Debian_menu["Debian_Applications_System_Monitoring"] },
    { "Package Management", Debian_menu["Debian_Applications_System_Package_Management"] },
}
Debian_menu["Debian_Applications_Viewers"]                                         = {
    { "Xditview", "xditview" },
}
Debian_menu["Debian_Applications"]                                                 = {
    { "Accessibility", Debian_menu["Debian_Applications_Accessibility"] },
    { "Editors", Debian_menu["Debian_Applications_Editors"] },
    { "Graphics", Debian_menu["Debian_Applications_Graphics"] },
    { "Network", Debian_menu["Debian_Applications_Network"] },
    { "Programming", Debian_menu["Debian_Applications_Programming"] },
    { "Science", Debian_menu["Debian_Applications_Science"] },
    { "Shells", Debian_menu["Debian_Applications_Shells"] },
    { "System", Debian_menu["Debian_Applications_System"] },
    { "Viewers", Debian_menu["Debian_Applications_Viewers"] },
}
Debian_menu["Debian_CrossOver"]                                                    = {
    { "CrossOver", "/opt/cxoffice/bin/crossover", "/opt/cxoffice/share/icons/32x32/crossover.png" },
    { "Uninstall CrossOver", "/opt/cxoffice/bin/cxuninstall", "/opt/cxoffice/share/icons/32x32/cxuninstall.png" },
}
Debian_menu["Debian_Games_Toys"]                                                   = {
    { "Oclock", "oclock" },
    { "Xclock (analog)", "xclock -analog" },
    { "Xclock (digital)", "xclock -digital -update 1" },
    { "Xeyes", "xeyes" },
    { "Xlogo", "xlogo" },
}
Debian_menu["Debian_Games"]                                                        = {
    { "Toys", Debian_menu["Debian_Games_Toys"] },
}
Debian_menu["Debian_Help"]                                                         = {
    { "Xman", "xman" },
}
Debian_menu["Debian_Window_Managers"]                                              = {
    { "awesome", function()
        awesome.exec("/usr/bin/awesome")
    end, "/usr/share/pixmaps/awesome.xpm" },
}
Debian_menu["Debian_Windows_Applications_Microsoft_Office_2013_Office_2013_Tools"] = {
    { "Database Compare 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Office+2013+Tools/Database+Compare+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/924F_dbcicons.0.png" },
    { "Office 2013 Language Preferences", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Office+2013+Tools/Office+2013+Language+Preferences.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/A6E1_misc.5.png" },
    { "Office 2013 Upload Center", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Office+2013+Tools/Office+2013+Upload+Center.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/9B5A_msouc.0.png" },
    { "Skype for Business Recording Manager", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Office+2013+Tools/Skype+for+Business+Recording+Manager.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/5F91_lyncicon.1.png" },
    { "Spreadsheet Compare 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Office+2013+Tools/Spreadsheet+Compare+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/9A2B_sscicons.2.png" },
    { "Telemetry Dashboard for Office 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Office+2013+Tools/Telemetry+Dashboard+for+Office+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/5195_osmadminicon.2.png" },
    { "Telemetry Log for Office 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Office+2013+Tools/Telemetry+Log+for+Office+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/D2D4_osmclienticon.1.png" },
}
Debian_menu["Debian_Windows_Applications_Microsoft_Office_2013"]                   = {
    { "Access 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Access+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/6247_accicons.0.png" },
    { "Excel 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Excel+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/84DD_xlicons.0.png" },
    { "InfoPath Designer 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/InfoPath+Designer+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/2ECC_inficon.3.png" },
    { "InfoPath Filler 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/InfoPath+Filler+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/2ECC_inficon.0.png" },
    { "Office 2013 Tools", Debian_menu["Debian_Windows_Applications_Microsoft_Office_2013_Office_2013_Tools"] },
    { "OneDrive for Business 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/OneDrive+for+Business+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/C87C_grv_icons.0.png" },
    { "OneNote 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/OneNote+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/0F46_joticon.0.png" },
    { "Outlook 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Outlook+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/7676_outicon.0.png" },
    { "PowerPoint 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/PowerPoint+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/4C70_pptico.0.png" },
    { "Publisher 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Publisher+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/703E_pubs.0.png" },
    { "Send to OneNote 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Send+to+OneNote+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/0F46_joticon.4.png" },
    { "Skype for Business 2015", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Skype+for+Business+2015.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/5F91_lyncicon.0.png" },
    { "Word 2013", "\"/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/desktopdata/cxmenu/StartMenu.C^5E3A_users_crossover_Start^2BMenu/Programs/Microsoft+Office+2013/Word+2013.lnk\"", "/home/be3yh4uk/.cxoffice/MicrosoftOffice2013/windata/cxmenu/icons/hicolor/32x32/apps/A918_wordicon.0.png" },
}
Debian_menu["Debian_Windows_Applications"]                                         = {
    { "Microsoft Office 2013", Debian_menu["Debian_Windows_Applications_Microsoft_Office_2013"] },
}
Debian_menu["Debian"]                                                              = {
    { "Applications", Debian_menu["Debian_Applications"] },
    { "CrossOver", Debian_menu["Debian_CrossOver"] },
    { "Games", Debian_menu["Debian_Games"] },
    { "Help", Debian_menu["Debian_Help"] },
    { "Window Managers", Debian_menu["Debian_Window_Managers"] },
    { "Windows Applications", Debian_menu["Debian_Windows_Applications"] },
}

debian                                                                             = { menu = { Debian_menu = Debian_menu } }
return debian