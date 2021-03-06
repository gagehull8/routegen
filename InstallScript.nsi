; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Route Generator"
!define PRODUCT_VERSION "1.9.1"
!define PRODUCT_PUBLISHER "MJProductions"
!define PRODUCT_WEB_SITE "http://www.routegenerator.net"
!define PRODUCT_DIR_REGKEY "Software\MJProductions\Route Generator"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "routegen.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "..\routegen\code\LICENSE"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\routegen.exe"
!define MUI_FINISHPAGE_SHOWREADME_NOTCHECKED
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\README.txt"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "routegen-win32-${PRODUCT_VERSION}.exe"
InstallDir "$PROGRAMFILES\Route Generator"

; Registry key to check for directory (so if you install again, it will
; overwrite the old one automatically)
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" "Install_Dir"
ShowInstDetails show
ShowUnInstDetails show

; Request application privileges for Windows Vista
RequestExecutionLevel admin

Section "Route Generator" MainInstall
  SetOutPath "$INSTDIR\bmp2avi"
  SetOverwrite try
  File "redist\bmp2avi\bmp2avi.exe"
  File "redist\bmp2avi\bmp2avi.htm"
  File "redist\bmp2avi\out.avi"
  SetOutPath "$INSTDIR\doc"
  File "redist\doc\bike.png"
  File "redist\doc\bike_corrected.png"
  File "redist\doc\drawmode.png"
  File "redist\doc\generate.png"
  File "redist\doc\google-link-copy.png"
  File "redist\doc\google-link-paste.png"
  File "redist\doc\google-link.png"
  File "redist\doc\google-maps-logo.png"
  File "redist\doc\player_play.png"
  File "redist\doc\player_stop.png"
  File "redist\doc\toolbar.png"
  File "redist\doc\tutorial.html"
  SetOutPath "$INSTDIR\ffmpeg"
  File "redist\ffmpeg\README.txt"
  File "redist\ffmpeg\LICENSE.txt"
  SetOutPath "$INSTDIR\ffmpeg\bin"
  File "redist\ffmpeg\bin\ffmpeg.exe"
  File "redist\ffmpeg\bin\ffplay.exe.txt"
  File "redist\ffmpeg\bin\ffprobe.exe.txt"
  SetOutPath "$INSTDIR\ffmpeg\doc"
  File "redist\ffmpeg\doc\bootstrap.min.css"
  File "redist\ffmpeg\doc\default.css"
  File "redist\ffmpeg\doc\developer.html"
  File "redist\ffmpeg\doc\faq.html"
  File "redist\ffmpeg\doc\fate.html"
  File "redist\ffmpeg\doc\ffmpeg-all.html"
  File "redist\ffmpeg\doc\ffmpeg-bitstream-filters.html"
  File "redist\ffmpeg\doc\ffmpeg-codecs.html"
  File "redist\ffmpeg\doc\ffmpeg-devices.html"
  File "redist\ffmpeg\doc\ffmpeg-filters.html"
  File "redist\ffmpeg\doc\ffmpeg-formats.html"
  File "redist\ffmpeg\doc\ffmpeg-protocols.html"
  File "redist\ffmpeg\doc\ffmpeg-resampler.html"
  File "redist\ffmpeg\doc\ffmpeg-scaler.html"
  File "redist\ffmpeg\doc\ffmpeg-utils.html"
  File "redist\ffmpeg\doc\ffmpeg.html"
  File "redist\ffmpeg\doc\ffplay-all.html"
  File "redist\ffmpeg\doc\ffplay.html"
  File "redist\ffmpeg\doc\ffprobe-all.html"
  File "redist\ffmpeg\doc\ffprobe.html"
  File "redist\ffmpeg\doc\general.html"
  File "redist\ffmpeg\doc\git-howto.html"
  File "redist\ffmpeg\doc\libavcodec.html"
  File "redist\ffmpeg\doc\libavdevice.html"
  File "redist\ffmpeg\doc\libavfilter.html"
  File "redist\ffmpeg\doc\libavformat.html"
  File "redist\ffmpeg\doc\libavutil.html"
  File "redist\ffmpeg\doc\libswresample.html"
  File "redist\ffmpeg\doc\libswscale.html"
  File "redist\ffmpeg\doc\mailing-list-faq.html"
  File "redist\ffmpeg\doc\nut.html"
  File "redist\ffmpeg\doc\platform.html"
  File "redist\ffmpeg\doc\style.min.css"
  SetOutPath "$INSTDIR\ffmpeg\presets"
  File "redist\ffmpeg\presets\ffprobe.xsd"
  File "redist\ffmpeg\presets\libvpx-1080p.ffpreset"
  File "redist\ffmpeg\presets\libvpx-1080p50_60.ffpreset"
  File "redist\ffmpeg\presets\libvpx-360p.ffpreset"
  File "redist\ffmpeg\presets\libvpx-720p.ffpreset"
  File "redist\ffmpeg\presets\libvpx-720p50_60.ffpreset"
  SetOutPath "$INSTDIR"
  File "redist\google-maps-template.html"
  SetOutPath "$INSTDIR\imageformats"
  File "redist\imageformats\qgif.dll"
  File "redist\imageformats\qicns.dll"
  File "redist\imageformats\qico.dll"
  File "redist\imageformats\qjpeg.dll"
  File "redist\imageformats\qsvg.dll"
  File "redist\imageformats\qtga.dll"
  File "redist\imageformats\qtiff.dll"
  File "redist\imageformats\qwbmp.dll"
  File "redist\imageformats\qwebp.dll" 
  SetOutPath "$INSTDIR"
  File "redist\icudtl.dat"
  File "redist\qtwebengine_devtools_resources.pak"
  File "redist\qtwebengine_resources.pak"
  File "redist\qtwebengine_resources_100p.pak"
  File "redist\qtwebengine_resources_200p.pak"  
  SetOutPath "$INSTDIR\platforms"
  File "redist\platforms\qdirect2d.dll"
  File "redist\platforms\qminimal.dll"
  File "redist\platforms\qoffscreen.dll"
  File "redist\platforms\qwindows.dll"
  SetOutPath "$INSTDIR\styles"
  File "redist\styles\qwindowsvistastyle.dll"
  SetOutPath "$INSTDIR"
  File "redist\LICENSE"
  File "redist\qt5core.dll"
  File "redist\qt5gui.dll"
  File "redist\qt5network.dll"
  File "redist\qt5positioning.dll"
  File "redist\qt5printsupport.dll"
  File "redist\qt5qml.dll"
  File "redist\qt5quick.dll"
  File "redist\qt5quickwidgets.dll"
  File "redist\qt5svg.dll"
  File "redist\qt5webchannel.dll"
  File "redist\qt5webengine.dll"
  File "redist\qt5webenginecore.dll"
  File "redist\qt5webenginewidgets.dll"
  File "redist\qt5widgets.dll"
  File "redist\qtwebengineprocess.exe"
  File "redist\msvcp140.dll"
  File "redist\vccorlib140.dll"
  File "redist\vcruntime140.dll"
  File "redist\README.txt"
  File "redist\routegen.exe"
  SetShellVarContext all
  CreateDirectory "$SMPROGRAMS\Route Generator"
  CreateShortCut "$SMPROGRAMS\Route Generator\Route Generator.lnk" "$INSTDIR\routegen.exe"
  SetOutPath "$INSTDIR\vehicles"
  File "redist\vehicles\airplane.png"
  File "redist\vehicles\bicycle.png"
  File "redist\vehicles\bike.gif"
  File "redist\vehicles\boat.png"
  File "redist\vehicles\car.svg"
  File "redist\vehicles\train.png"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  SetShellVarContext all
  CreateShortCut "$SMPROGRAMS\Route Generator\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\Route Generator\Uninstall.lnk" "$INSTDIR\Uninstall.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\Uninstall.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "Install_Dir" "$INSTDIR"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\Uninstall.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\Uninstall.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

Function .onInit
  IfFileExists $INSTDIR\Uninstall.exe alreadyInstalled theEnd

alreadyInstalled:
  MessageBox MB_YESNO "Route Generator already installed. Uninstall first? (Recommended)" IDYES unInstall IDNO noUninstall
  unInstall:
    Exec $INSTDIR\Uninstall.exe
    Goto theEnd
  noUnInstall:
    DetailPrint "Old version will be overwritten"
  theEnd:
FunctionEnd

Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall 
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\vehicles\train.png"
  Delete "$INSTDIR\vehicles\car.svg"
  Delete "$INSTDIR\vehicles\boat.png"
  Delete "$INSTDIR\vehicles\bike.gif"
  Delete "$INSTDIR\vehicles\bicycle.png"
  Delete "$INSTDIR\vehicles\airplane.png"
  Delete "$INSTDIR\routegen.exe"
  Delete "$INSTDIR\README.txt"
  Delete "$INSTDIR\LICENSE"
  Delete "$INSTDIR\imageformats\qgif.dll"
  Delete "$INSTDIR\imageformats\qicns.dll"
  Delete "$INSTDIR\imageformats\qico.dll"
  Delete "$INSTDIR\imageformats\qjpeg.dll"
  Delete "$INSTDIR\imageformats\qsvg.dll"
  Delete "$INSTDIR\imageformats\qtga.dll"
  Delete "$INSTDIR\imageformats\qtiff.dll"
  Delete "$INSTDIR\imageformats\qwbmp.dll"
  Delete "$INSTDIR\imageformats\qwebp.dll"
  Delete "$INSTDIR\icudtl.dat"
  Delete "$INSTDIR\qtwebengine_devtools_resources.pak"
  Delete "$INSTDIR\qtwebengine_resources.pak"
  Delete "$INSTDIR\qtwebengine_resources_100p.pak"
  Delete "$INSTDIR\qtwebengine_resources_200p.pak"  
  Delete "$INSTDIR\platforms\qdirect2d.dll"
  Delete "$INSTDIR\platforms\qminimal.dll"
  Delete "$INSTDIR\platforms\qoffscreen.dll"
  Delete "$INSTDIR\platforms\qwindows.dll"
  Delete "$INSTDIR\styles\qwindowsvistastyle.dll"
  Delete "$INSTDIR\qt5core.dll"
  Delete "$INSTDIR\qt5gui.dll"
  Delete "$INSTDIR\qt5network.dll"
  Delete "$INSTDIR\qt5positioning.dll"
  Delete "$INSTDIR\qt5printsupport.dll"
  Delete "$INSTDIR\qt5qml.dll"
  Delete "$INSTDIR\qt5quick.dll"
  Delete "$INSTDIR\qt5quickwidgets.dll"
  Delete "$INSTDIR\qt5svg.dll"
  Delete "$INSTDIR\qt5webchannel.dll"
  Delete "$INSTDIR\qt5webengine.dll"
  Delete "$INSTDIR\qt5webenginecore.dll"
  Delete "$INSTDIR\qt5webenginewidgets.dll"
  Delete "$INSTDIR\qt5widgets.dll"
  Delete "$INSTDIR\qtwebengineprocess.exe"
  Delete "$INSTDIR\msvcp140.dll"
  Delete "$INSTDIR\vccorlib140.dll"
  Delete "$INSTDIR\vcruntime140.dll"
  Delete "$INSTDIR\google-maps-template.html"
  Delete "$INSTDIR\ffmpeg\README.txt"
  Delete "$INSTDIR\ffmpeg\LICENSE.txt"
  Delete "$INSTDIR\ffmpeg\presets\libvpx-720p50_60.ffpreset"
  Delete "$INSTDIR\ffmpeg\presets\libvpx-720p.ffpreset"
  Delete "$INSTDIR\ffmpeg\presets\libvpx-360p.ffpreset"
  Delete "$INSTDIR\ffmpeg\presets\libvpx-1080p50_60.ffpreset"
  Delete "$INSTDIR\ffmpeg\presets\libvpx-1080p.ffpreset"
  Delete "$INSTDIR\ffmpeg\presets\ffprobe.xsd"
  Delete "$INSTDIR\ffmpeg\doc\bootstrap.min.css"
  Delete "$INSTDIR\ffmpeg\doc\default.css"
  Delete "$INSTDIR\ffmpeg\doc\developer.html"
  Delete "$INSTDIR\ffmpeg\doc\faq.html"
  Delete "$INSTDIR\ffmpeg\doc\fate.html"
  Delete "$INSTDIR\ffmpeg\doc\ffmpeg-all.html"
  Delete "$INSTDIR\ffmpeg\doc\ffmpeg-bitstream-filters.html"
  Delete "$INSTDIR\ffmpeg\doc\ffmpeg-codecs.html"
  Delete "$INSTDIR\ffmpeg\doc\ffmpeg-devices.html"
  Delete "$INSTDIR\ffmpeg\doc\ffmpeg-filters.html"
  Delete "$INSTDIR\ffmpeg\doc\ffmpeg-formats.html"
  Delete "$INSTDIR\ffmpeg\doc\ffmpeg-protocols.html"
  Delete "$INSTDIR\ffmpeg\doc\ffmpeg-resampler.html"
  Delete "$INSTDIR\ffmpeg\doc\ffmpeg-scaler.html"
  Delete "$INSTDIR\ffmpeg\doc\ffmpeg-utils.html"
  Delete "$INSTDIR\ffmpeg\doc\ffmpeg.html"
  Delete "$INSTDIR\ffmpeg\doc\ffplay-all.html"
  Delete "$INSTDIR\ffmpeg\doc\ffplay.html"
  Delete "$INSTDIR\ffmpeg\doc\ffprobe-all.html"
  Delete "$INSTDIR\ffmpeg\doc\ffprobe.html"
  Delete "$INSTDIR\ffmpeg\doc\general.html"
  Delete "$INSTDIR\ffmpeg\doc\git-howto.html"
  Delete "$INSTDIR\ffmpeg\doc\libavcodec.html"
  Delete "$INSTDIR\ffmpeg\doc\libavdevice.html"
  Delete "$INSTDIR\ffmpeg\doc\libavfilter.html"
  Delete "$INSTDIR\ffmpeg\doc\libavformat.html"
  Delete "$INSTDIR\ffmpeg\doc\libavutil.html"
  Delete "$INSTDIR\ffmpeg\doc\libswresample.html"
  Delete "$INSTDIR\ffmpeg\doc\libswscale.html"
  Delete "$INSTDIR\ffmpeg\doc\mailing-list-faq.html"
  Delete "$INSTDIR\ffmpeg\doc\nut.html"
  Delete "$INSTDIR\ffmpeg\doc\platform.html"
  Delete "$INSTDIR\ffmpeg\doc\style.min.css"
  Delete "$INSTDIR\ffmpeg\bin\ffprobe.exe.txt"
  Delete "$INSTDIR\ffmpeg\bin\ffplay.exe.txt"
  Delete "$INSTDIR\ffmpeg\bin\ffmpeg.exe"
  Delete "$INSTDIR\doc\tutorial.html"
  Delete "$INSTDIR\doc\toolbar.png"
  Delete "$INSTDIR\doc\player_stop.png"
  Delete "$INSTDIR\doc\player_play.png"
  Delete "$INSTDIR\doc\google-maps-logo.png"
  Delete "$INSTDIR\doc\google-link.png"
  Delete "$INSTDIR\doc\google-link-paste.png"
  Delete "$INSTDIR\doc\google-link-copy.png"
  Delete "$INSTDIR\doc\generate.png"
  Delete "$INSTDIR\doc\drawmode.png"
  Delete "$INSTDIR\doc\bike_corrected.png"
  Delete "$INSTDIR\doc\bike.png"
  Delete "$INSTDIR\bmp2avi\out.avi"
  Delete "$INSTDIR\bmp2avi\bmp2avi.htm"
  Delete "$INSTDIR\bmp2avi\bmp2avi.exe"
  Delete "$INSTDIR\Uninstall.exe"

  SetShellVarContext all
  Delete "$SMPROGRAMS\Route Generator\Uninstall.lnk"
  Delete "$SMPROGRAMS\Route Generator\Website.lnk"
  Delete "$SMPROGRAMS\Route Generator\Route Generator.lnk"
  RMDir "$SMPROGRAMS\Route Generator"
  
  RMDir "$INSTDIR\vehicles"
  RMDir "$INSTDIR\imageformats"
  RMDir "$INSTDIR\styles"
  RMDir "$INSTDIR\platforms"
  RMDir "$INSTDIR\ffmpeg\presets"
  RMDir "$INSTDIR\ffmpeg\doc"
  RMDir "$INSTDIR\ffmpeg\bin"
  RMDir "$INSTDIR\ffmpeg"
  RMDir "$INSTDIR\doc"
  RMDir "$INSTDIR\bmp2avi"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd
