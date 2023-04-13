LangString strFlashConference 1033 "TalkClass"
LangString strFlashConference 2052 "拓课云"
LangString strFlashConference 1028 "拓課雲"
LangString strFlashConference 1041 "TalkClass"
LangString strFlashConference 1042 "TalkClass"
;LangString strFlashConference 1036 "TalkClass"
LangString strWebsite 1033 "Visit TalkClass Website"
LangString strWebsite 2052 "访问 拓课云 网站"
LangString strWebsite 1028 "訪問 拓課雲 網站"
LangString strWebsite 1041 "TalkClassのWebサイトにアクセスします"
LangString strWebsite 1042 "Visit TalkClass Website"
;LangString strWebsite 1036 "Visit TalkClass Website"
LangString strUninstall 1033 "Uninstall TalkClass"
LangString strUninstall 2052 "卸载 拓课云"
LangString strUninstall 1028 "卸載 拓課雲"
LangString strUninstall 1041 "TalkClassをアンインストールします"
LangString strUninstall 1042 "Uninstall TalkClass"
;LangString strUninstall 1036 "Uninstall TalkClass"
LangString strUnConfirm1 1033 "Are you sure you want to completely remove"
LangString strUnConfirm1 2052 "您确实要完全移除"
LangString strUnConfirm1 1028 "您確實要完全移除"
LangString strUnConfirm1 1041 "本当に完全に削除しますか"
LangString strUnConfirm1 1042 "Are you sure you want to completely remove"
;LangString strUnConfirm1 1036 "Are you sure you want to completely remove"
LangString strUnConfirm2 1033 "and all of its components?"
LangString strUnConfirm2 2052 "，及其所有的组件？"
LangString strUnConfirm2 1028 "，及其所有的組件？"
LangString strUnConfirm2 1041 "、およびそのすべてのコンポーネント？"
LangString strUnConfirm2 1042 "and all of its components?"
;LangString strUnConfirm2 1036 "and all of its components?"
LangString strUnComplete 1033 "was successfully removed from your computer."
LangString strUnComplete 2052 "已成功地从您的计算机移除。"
LangString strUnComplete 1028 "已成功地從您的計算機移除。"
LangString strUnComplete 1041 "コンピュータから正常に削除されました。"
LangString strUnComplete 1042 "was successfully removed from your computer."
;LangString strUnComplete 1036 "was successfully removed from your computer."
LangString strtermpross 1033 "TalkClass is running, click the 'set' button closures continue after the installation procedure"
LangString strtermpross 2052 "您的拓课云 软件正在运行中，请点击‘确定’按钮关闭程序后继续安装"
LangString strtermpross 1028 "您的拓課雲 軟件正在運行中，請點擊‘確定’按鈕關閉程序後繼續安裝"
LangString strtermpross 1041 "TalkClassソフトウェアが実行されています。[OK]ボタンをクリックしてプログラムを閉じ、インストールを続行してください"
LangString strtermpross 1042 "TalkClass is running, click the 'set' button closures continue after the installation procedure"
;LangString strtermpross 1036 "TalkClass is running, click the 'set' button closures continue after the installation procedure"
LangString strOSNotSupport 1033 "TalkClass can not run at this OS version."
LangString strOSNotSupport 2052 "拓课云 软件不能运行于此版本的操作系统。"
LangString strOSNotSupport 1028 "拓課雲 軟件不能運行於此版本的操作系統。"
LangString strOSNotSupport 1041 "TalkClassソフトウェアは、このバージョンのオペレーティングシステムでは実行できません。"
LangString strOSNotSupport 1042 "TalkClass can not run at this OS version."
;LangString strOSNotSupport 1036 "TalkClass can not run at this OS version."


; 安装程序初始定义常量
!define strLocalStorage "local-storage"	;缓存目录
!define strProductName "TalkClass"		;产品key	  定制必须改这个值	
!define PRODUCT_NAME "$(strFlashConference)"
!define PRODUCT_VERSION "V4.14.0"
!define PRODUCT_PUBLISHER "TalkClass Technology, Inc."
!define PRODUCT_WEB_SITE "http://www.talk-cloud.com/"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\${strProductName}\Class.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define PRODUCT_STARTMENU_REGVAL "NSIS:StartMenuDir"


SetCompressor lzma
RequestExecutionLevel admin
; ------ MUI 现代界面定义 (1.67 版本以上兼容) ------
!include "MUI.nsh"
!include "FontReg.nsh"
!include "nsProcess.nsh"
!include "Sections.nsh"

; MUI 预定义常量
!define MUI_ABORTWARNING
!define MUI_ICON "ico\TalkClass-install.ico"
!define MUI_UNICON "ico\TalkClass-uninstall.ico"

; 语言选择窗口常量设置
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; 欢迎页面
;!insertmacro MUI_PAGE_WELCOME

; 许可协议页面
!define MUI_LICENSEPAGE_BUTTON
LicenseLangString FlashConferenceLicense 1033 "EULA\TalkClass-EULA\EULAen_US.txt"
LicenseLangString FlashConferenceLicense 2052 "EULA\TalkClass-EULA\EULAzh_CN.txt"
LicenseLangString FlashConferenceLicense 1028 "EULA\TalkClass-EULA\EULAzh_TW.txt"
LicenseLangString FlashConferenceLicense 1041 "EULA\TalkClass-EULA\EULAjp_JA.txt"
LicenseLangString FlashConferenceLicense 1042 "EULA\TalkClass-EULA\EULAko_KR.txt"
!insertmacro MUI_PAGE_LICENSE "$(FlashConferenceLicense)"

; 安装目录选择页面
!define MUI_PAGE_DIRECTORY Pageshow
!insertmacro MUI_PAGE_DIRECTORY

; 开始菜单设置页面
var ICONS_GROUP
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "${PRODUCT_NAME}"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${PRODUCT_STARTMENU_REGVAL}"
!insertmacro MUI_PAGE_STARTMENU Application $ICONS_GROUP


; 安装过程页面
!insertmacro MUI_PAGE_INSTFILES

; 安装完成页面
;!define MUI_FINISHPAGE_RUN "$INSTDIR\Class.exe"
!define MUI_FINISHPAGE_NOREBOOTSUPPORT
!insertmacro MUI_PAGE_FINISH


; 安装卸载过程页面
!insertmacro MUI_UNPAGE_WELCOME
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH

; 安装界面包含的语言设置
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "TradChinese"
!insertmacro MUI_LANGUAGE "Japanese"
!insertmacro MUI_LANGUAGE "Korean"
; 安装预释放文件
!insertmacro MUI_RESERVEFILE_LANGDLL
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS
; ------ MUI 现代界面定义结束 ------

var MajorVersion
var MinorVersion

Name "$(strFlashConference) ${PRODUCT_VERSION}"
OutFile "TalkClass.exe"
RequestExecutionLevel admin ;Require admin rights on NT6+ (When UAC is turned on)
InstallDir "$APPDATA\${strProductName}"
InstallDirRegKey HKLM "${PRODUCT_UNINST_KEY}" "UninstallString"
ShowInstDetails show
ShowUnInstDetails show
;程序静默安装/卸载
;SilentInstall silent
;SilentUninstall silent
BrandingText "TalkClass Install System V2.0"

Section "MainSection" SEC01
      System::Call "Kernel32::GetVersion(v) i .s"
      Pop $0
      IntOp $MajorVersion $0 & 0xFF
      ;DetailPrint "Windows 主版本: $MajorVersion"
      IntOp $MinorVersion $0 & 0xFFFF
      IntOp $MinorVersion $MinorVersion >> 8
      ;DetailPrint "Windows 次版本: $MinorVersion"
      IntCmpU $0 0x80000000 0 nt
      messagebox  MB_ICONINFORMATION|MB_OK $(strOSNotSupport)
      quit
      nt:

	call CloseParentWithUserApproval

  ;DetailPrint "Stoping tkservice service"
  ;nsExec::Exec  /TIMEOUT=15000 "net stop tkservice"

  SetOutPath "$INSTDIR"
  SetOverwrite on
  File /r "..\..\dist\class\*.*"

  ;SetOutPath "$INSTDIR"
  ;Execwait "$INSTDIR\tkservice.exe /service"
  ;DetailPrint "Starting tkservice service"
  ;nsExec::Exec  /TIMEOUT=15000 "net start tkservice"
  SetOutPath "$INSTDIR"

; 创建开始菜单快捷方式
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  CreateDirectory "$SMPROGRAMS\$ICONS_GROUP"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\$(strFlashConference).lnk" "$INSTDIR\Class.exe"
  CreateShortCut "$DESKTOP\$(strFlashConference).lnk" "$INSTDIR\Class.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -AdditionalIcons
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\$(strWebsite).lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\$(strUninstall).lnk" "$INSTDIR\uninst.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\Class.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\Class.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
  WriteRegStr HKCU "SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" "$INSTDIR\Class.exe" "RUNASADMIN"

  WriteRegStr HKCR "enterroom" "" '"URL:TalkClass Protocol"'
  WriteRegStr HKCR "enterroom" "URL Protocol" ""
  WriteRegStr HKCR "enterroom\ExeName" "ExeName" "$INSTDIR\Class.exe"
  WriteRegStr HKCR "enterroom\Shell\open\command" "" "$INSTDIR\Class.exe %1"

  WriteRegStr HKCU "Software\TalkClass\Config\TalkClass" "Installation" "$INSTDIR"
  WriteRegStr HKCR ".TalkClass" "" "TalkClassml"
  WriteRegStr HKCR "TalkClassml" "" "TalkClass launcher"   ; I thought $R0 was the description? --Dave
  WriteRegStr HKCR "TalkClassml\shell" "" "open"
  WriteRegStr HKCR "TalkClassml\DefaultIcon" "" '"$INSTDIR\Class.exe",0'
  WriteRegStr HKCR "TalkClassml\shell\open\command" "" '"$INSTDIR\Class.exe" "%1"'
  
  StrCpy $FONT_DIR $FONTS
  !insertmacro InstallFONFont "Talk.ttf" "Talk Calligraphr"
  SendMessage ${HWND_BROADCAST} ${WM_FONTCHANGE} 0 0 /TIMEOUT=3000
  
SectionEnd

#-- 根据 NSIS 脚本编辑规则，所有 Function 区段必须放置在 Section 区段之后编写，以避免安装程序出现未可预知的问题。--#

Function CNLang
  Push ""
  Push ${LANG_SIMPCHINESE}
  Push "简体中文"
  Push ${LANG_ENGLISH}
  Push English
  Push A ; A means auto count languages
         ; for the auto count to work the first empty push (Push "") must remain
  LangDLL::LangDialog "安装语言" "请选择安装语言"

  Pop $LANGUAGE
  StrCmp $LANGUAGE "cancel" 0 +2
  Abort
FunctionEnd

Function ENLang
  Push ""
  Push ${LANG_ENGLISH}
  Push English
  Push A ; A means auto count languages
         ; for the auto count to work the first empty push (Push "") must remain
  LangDLL::LangDialog "Installer Language" "Please select the language of the installer"

  Pop $LANGUAGE
  StrCmp $LANGUAGE "cancel" 0 +2
  Abort
FunctionEnd

Function TNLang
  Push ""
  Push ${LANG_TRADCHINESE}
  Push "繁體中文"
  Push ${LANG_ENGLISH}
  Push English
  Push A ; A means auto count languages
         ; for the auto count to work the first empty push (Push "") must remain
  LangDLL::LangDialog "安裝語言" "請選擇安裝語言"

  Pop $LANGUAGE
  StrCmp $LANGUAGE "cancel" 0 +2
  Abort
FunctionEnd

Function JPLang
  Push ""
  Push ${LANG_JAPANESE}
  Push "日本語"
  Push ${LANG_ENGLISH}
  Push English
  Push A ; A means auto count languages
         ; for the auto count to work the first empty push (Push "") must remain
  LangDLL::LangDialog "インストール言語" "インストール言語を選択してください"

  Pop $LANGUAGE
  StrCmp $LANGUAGE "cancel" 0 +2
  Abort
FunctionEnd


Function Pageshow
  ReadRegStr $R0 HKLM "${PRODUCT_DIR_REGKEY}" "" 
;  MessageBox MB_ICONINFORMATION|MB_OK $R1
	StrLen $R2 "\Class.exe"
	StrLen $R3 $R0
	${If} $R0 != ""
	${AndIf} $R3 > $R2
		StrCpy $R1 $R0 -$R2
		StrCpy $INSTDIR $R1
	${Else}
		StrCpy $INSTDIR "$APPDATA\${strProductName}"
	${EndIf}
FunctionEnd

;安装时检测是否存在已安装目录，并且删除缓冲目录 local-storage
Function DeleteLocatStorage
;	strLocalStorage
;Delete "$INSTDIR\*.*"
	RMDir /r "$INSTDIR\${strLocalStorage}"
FunctionEnd


;Function .onInit
  ;!insertmacro MUI_LANGDLL_DISPLAY
;  System::Call "Kernel32::GetSystemDefaultLangID(v..)i.s"
;  Pop $0
;  IntOp $0 $0 & 0xFFFF
;  ${if} $0 == 2052
;     call CNLang
;  ${ElseIf} $0  == 1028
;     call TNLang
;  ${Else}
;     call ENLang
;  ${endif}
  ;关闭Class.exe进程
;  Push $R0
;  CheckProc:
;    nsProcess::_FindProcess "Class.exe"
;    Pop $R0
;    IntCmp $R0 0 Done
;    MessageBox MB_OKCANCEL|MB_ICONSTOP "安装程序检测到 ${PRODUCT_NAME} 正在运行。$\r$\n$\r$\n点击 “确定” 强制关闭${PRODUCT_NAME}，继续安装。$\r$\n点击 “取消” 退出安装程序。" IDCANCEL Exit
;    Push "Class.exe"
;    nsProcess::_KillProcess
;    Sleep 1000
;    Goto CheckProc
;    Exit:
;    Abort
;    Done:
;    Pop $R0
;FunctionEnd


Function .onInit
  call Pageshow
  System::Call "Kernel32::GetSystemDefaultLangID(v..)i.s"
  Pop $0
  IntOp $0 $0 & 0xFFFF
	${If} $0 == 2052	
		Call CNLang
		
	${ElseIf} $0 == 1028		
		Call TNLang
		
	${ElseIf} $0 == 1041		
		Call JPLang
		
	${Else}
		Call ENLang
		
	${EndIf}
	
  ;关闭Class.exe进程
  Push $R0
  nsProcess::_FindProcess "Class.exe"
  Pop $R0
  IntCmp $R0 0 running no_running no_running
  running:
  MessageBox MB_OKCANCEL|MB_ICONSTOP "安装程序检测到 ${PRODUCT_NAME} 正在运行。$\r$\n$\r$\n点击 “确定” 强制关闭${PRODUCT_NAME}，继续安装。$\r$\n点击 “取消” 退出安装程序。" IDOK dokill IDCANCEL stopit
  ;MessageBox MB_ICONQUESTION|MB_YESNO "安装程序检测到 ${PRODUCT_NAME} 正在运行，是否强行关闭并继续安装?" IDYES dokill IDNO stopit
  no_running:
  GoTo endding
  dokill:
  nsProcess::_KillProcess "Class.exe"
  nsProcess::_KillProcess "httpserver-win.exe"
  Sleep 1000
  Pop $R0
  GoTo endding
  stopit:
  Abort
  endding:
  nsProcess::_Unload
  ;call DeleteLocatStorage
FunctionEnd

/******************************
 *  以下是安装程序的卸载部分  *
 ******************************/

Section Uninstall
  !insertmacro MUI_STARTMENU_GETFOLDER "Application" $ICONS_GROUP

  ;DetailPrint "Stoping tkservice service"
  ;nsExec::Exec  /TIMEOUT=15000 "net stop tkservice"
  ;Execwait "$INSTDIR\tkservice /unregserver"
  DetailPrint "Delete files"
  ;DetailPrint "Stoping tkservice service"
  ;nsExec::Exec  /TIMEOUT=15000 "net stop tkservice"
  ;UnRegDll "$INSTDIR\NSBack.dll"
  ;UnRegDll "$INSTDIR\AudioConvert.ax"
  ;UnRegDll "$INSTDIR\AudioResample.ax"
  UnRegDll "$INSTDIR\RealMediaSplitter.ax"
  Delete "$INSTDIR\Class.exe"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\*.*"
  Delete "$SMPROGRAMS\$ICONS_GROUP\$(strUninstall).lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\$(strWebsite).lnk"
  Delete "$DESKTOP\$(strFlashConference).lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\$(strFlashConference).lnk"
  RMDir /r "$SMPROGRAMS\$ICONS_GROUP"
  RMDir /r "$INSTDIR\data"
  RMDir /r "$INSTDIR\language"
  RMDir /r "$INSTDIR\skins"
  RMDir /r "$INSTDIR\tdata"
  RMDir /r "$INSTDIR"
  RMDir "$COMMONFILES\dynPPT"
  
  StrCpy $FONT_DIR $FONTS
; !insertmacro RemoveFONFont "Talk.ttf" "Talk Calligraphr"
  SendMessage ${HWND_BROADCAST} ${WM_FONTCHANGE} 0 0 /TIMEOUT=3000

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  DeleteRegKey HKCR "enterroom"
  DeleteRegKey HKCR "tkml"
  DeleteRegKey HKCU "Software\TalkClass\Config\TalkClass"
  SetAutoClose true
SectionEnd

#-- 根据 NSIS 脚本编辑规则，所有 Function 区段必须放置在 Section 区段之后编写，以避免安装程序出现未可预知的问题。--#
;Function un.onInit
;!insertmacro MUI_UNGETLANGUAGE
;  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "$(strUnConfirm1) $(^Name) $(strUnConfirm2)" IDYES +2
;  Abort
;    Push $R0
;  CheckProc:
;    Push "Class.exe"
;    ProcessWork::existsprocess
;    Pop $R0
;    IntCmp $R0 0 Done
;    MessageBox MB_OKCANCEL|MB_ICONSTOP "Uninstall program detected${PRODUCT_NAME} Running。$\r$\n$\r$\n Click “OK”Force Close${PRODUCT_NAME}，Continue Uninstall。$\r$\n Click“Cancel” Quit Uninstall。" IDCANCEL Exit
;    Push "Class.exe"
;    Processwork::KillProcess
;    Sleep 1000
;    Goto CheckProc
;    Exit:
;    Abort
;    Done:
;    Pop $R0
;FunctionEnd


;开始卸载时检查：
Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "$(strUnConfirm1) $(^Name) $(strUnConfirm2)" IDYES +2
  Push $R0
  nsProcess::_FindProcess "Class.exe"
  Pop $R0
  IntCmp $R0 0 running no_running no_running
  running:
  MessageBox MB_OKCANCEL|MB_ICONSTOP "Uninstall program detected${PRODUCT_NAME} Running。$\r$\n$\r$\n Click “OK”Force Close${PRODUCT_NAME}，Continue Uninstall。$\r$\n Click“Cancel” Quit Uninstall。" IDOK dokill IDCANCEL stopit
  ;MessageBox MB_ICONQUESTION|MB_YESNO "安装程序检测到 ${PRODUCT_NAME} 正在运行，是否强行关闭并继续卸载?" IDYES dokill IDNO stopit
  no_running:
  GoTo endding
  dokill:
  nsProcess::_KillProcess "Class.exe"
  nsProcess::_KillProcess "httpserver-win.exe"
  Sleep 1000
  Pop $R0
  GoTo endding
  stopit:
  Abort
  endding:
  nsProcess::_Unload
FunctionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) $(strUnComplete)"
FunctionEnd

;Function CloseParentWithUserApproval
;Push $5

;loop:
;  push "Class.exe"
;  processwork::existsprocess
;  pop $5
;  IntCmp $5 0 done

;  MessageBox MB_OK|MB_ICONEXCLAMATION    "$(strtermpross)" IDCANCEL BailOut
;  push "Class.exe"
;  processwork::KillProcess
;  Sleep 2000
;Goto loop

;BailOut:
;  Abort

;done:
;Pop $5
;FunctionEnd


Function CloseParentWithUserApproval
Push $5
loop:
  nsProcess::_FindProcess "Class.exe"
  Pop $5
  IntCmp $5 0 running no_running no_running
  running:
  MessageBox MB_OK|MB_ICONEXCLAMATION    "$(strtermpross)" IDOK dokill IDCANCEL stopit
  no_running:
  GoTo endding
  dokill:
  nsProcess::_KillProcess "Class.exe"
  nsProcess::_KillProcess "httpserver-win.exe"
  Pop $5
  Sleep 2000
Goto loop
  GoTo endding
  stopit:
  Abort
  endding:
  nsProcess::_Unload
FunctionEnd

