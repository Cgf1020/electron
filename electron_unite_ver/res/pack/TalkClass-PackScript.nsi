LangString strFlashConference 1033 "TalkClass"
LangString strFlashConference 2052 "�ؿ���"
LangString strFlashConference 1028 "���n�"
LangString strFlashConference 1041 "TalkClass"
LangString strFlashConference 1042 "TalkClass"
;LangString strFlashConference 1036 "TalkClass"
LangString strWebsite 1033 "Visit TalkClass Website"
LangString strWebsite 2052 "���� �ؿ��� ��վ"
LangString strWebsite 1028 "�L�� ���n� �Wվ"
LangString strWebsite 1041 "TalkClass��Web�����Ȥ˥����������ޤ�"
LangString strWebsite 1042 "Visit TalkClass Website"
;LangString strWebsite 1036 "Visit TalkClass Website"
LangString strUninstall 1033 "Uninstall TalkClass"
LangString strUninstall 2052 "ж�� �ؿ���"
LangString strUninstall 1028 "ж�d ���n�"
LangString strUninstall 1041 "TalkClass�򥢥󥤥󥹥ȩ`�뤷�ޤ�"
LangString strUninstall 1042 "Uninstall TalkClass"
;LangString strUninstall 1036 "Uninstall TalkClass"
LangString strUnConfirm1 1033 "Are you sure you want to completely remove"
LangString strUnConfirm1 2052 "��ȷʵҪ��ȫ�Ƴ�"
LangString strUnConfirm1 1028 "���_��Ҫ��ȫ�Ƴ�"
LangString strUnConfirm1 1041 "��������ȫ���������ޤ���"
LangString strUnConfirm1 1042 "Are you sure you want to completely remove"
;LangString strUnConfirm1 1036 "Are you sure you want to completely remove"
LangString strUnConfirm2 1033 "and all of its components?"
LangString strUnConfirm2 2052 "���������е������"
LangString strUnConfirm2 1028 "���������еĽM����"
LangString strUnConfirm2 1041 "������Ӥ��Τ��٤ƤΥ���ݩ`�ͥ�ȣ�"
LangString strUnConfirm2 1042 "and all of its components?"
;LangString strUnConfirm2 1036 "and all of its components?"
LangString strUnComplete 1033 "was successfully removed from your computer."
LangString strUnComplete 2052 "�ѳɹ��ش����ļ�����Ƴ���"
LangString strUnComplete 1028 "�ѳɹ��؏�����Ӌ��C�Ƴ���"
LangString strUnComplete 1041 "����ԥ�`��������������������ޤ�����"
LangString strUnComplete 1042 "was successfully removed from your computer."
;LangString strUnComplete 1036 "was successfully removed from your computer."
LangString strtermpross 1033 "TalkClass is running, click the 'set' button closures continue after the installation procedure"
LangString strtermpross 2052 "�����ؿ��� ������������У�������ȷ������ť�رճ���������װ"
LangString strtermpross 1028 "�������n� ܛ�������\���У�Ո�c�����_�������o�P�]�������^�m���b"
LangString strtermpross 1041 "TalkClass���եȥ��������g�Ф���Ƥ��ޤ���[OK]�ܥ���򥯥�å����ƥץ������]�������󥹥ȩ`���A�Ф��Ƥ�������"
LangString strtermpross 1042 "TalkClass is running, click the 'set' button closures continue after the installation procedure"
;LangString strtermpross 1036 "TalkClass is running, click the 'set' button closures continue after the installation procedure"
LangString strOSNotSupport 1033 "TalkClass can not run at this OS version."
LangString strOSNotSupport 2052 "�ؿ��� ������������ڴ˰汾�Ĳ���ϵͳ��"
LangString strOSNotSupport 1028 "���n� ܛ�������\��춴˰汾�Ĳ���ϵ�y��"
LangString strOSNotSupport 1041 "TalkClass���եȥ������ϡ����ΥЩ`�����Υ��ڥ�`�ƥ��󥰥����ƥ�Ǥόg�ФǤ��ޤ���"
LangString strOSNotSupport 1042 "TalkClass can not run at this OS version."
;LangString strOSNotSupport 1036 "TalkClass can not run at this OS version."


; ��װ�����ʼ���峣��
!define strLocalStorage "local-storage"	;����Ŀ¼
!define strProductName "TalkClass"		;��Ʒkey	  ���Ʊ�������ֵ	
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
; ------ MUI �ִ����涨�� (1.67 �汾���ϼ���) ------
!include "MUI.nsh"
!include "FontReg.nsh"
!include "nsProcess.nsh"
!include "Sections.nsh"

; MUI Ԥ���峣��
!define MUI_ABORTWARNING
!define MUI_ICON "ico\TalkClass-install.ico"
!define MUI_UNICON "ico\TalkClass-uninstall.ico"

; ����ѡ�񴰿ڳ�������
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; ��ӭҳ��
;!insertmacro MUI_PAGE_WELCOME

; ���Э��ҳ��
!define MUI_LICENSEPAGE_BUTTON
LicenseLangString FlashConferenceLicense 1033 "EULA\TalkClass-EULA\EULAen_US.txt"
LicenseLangString FlashConferenceLicense 2052 "EULA\TalkClass-EULA\EULAzh_CN.txt"
LicenseLangString FlashConferenceLicense 1028 "EULA\TalkClass-EULA\EULAzh_TW.txt"
LicenseLangString FlashConferenceLicense 1041 "EULA\TalkClass-EULA\EULAjp_JA.txt"
LicenseLangString FlashConferenceLicense 1042 "EULA\TalkClass-EULA\EULAko_KR.txt"
!insertmacro MUI_PAGE_LICENSE "$(FlashConferenceLicense)"

; ��װĿ¼ѡ��ҳ��
!define MUI_PAGE_DIRECTORY Pageshow
!insertmacro MUI_PAGE_DIRECTORY

; ��ʼ�˵�����ҳ��
var ICONS_GROUP
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "${PRODUCT_NAME}"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${PRODUCT_STARTMENU_REGVAL}"
!insertmacro MUI_PAGE_STARTMENU Application $ICONS_GROUP


; ��װ����ҳ��
!insertmacro MUI_PAGE_INSTFILES

; ��װ���ҳ��
;!define MUI_FINISHPAGE_RUN "$INSTDIR\Class.exe"
!define MUI_FINISHPAGE_NOREBOOTSUPPORT
!insertmacro MUI_PAGE_FINISH


; ��װж�ع���ҳ��
!insertmacro MUI_UNPAGE_WELCOME
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH

; ��װ�����������������
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "TradChinese"
!insertmacro MUI_LANGUAGE "Japanese"
!insertmacro MUI_LANGUAGE "Korean"
; ��װԤ�ͷ��ļ�
!insertmacro MUI_RESERVEFILE_LANGDLL
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS
; ------ MUI �ִ����涨����� ------

var MajorVersion
var MinorVersion

Name "$(strFlashConference) ${PRODUCT_VERSION}"
OutFile "TalkClass.exe"
RequestExecutionLevel admin ;Require admin rights on NT6+ (When UAC is turned on)
InstallDir "$APPDATA\${strProductName}"
InstallDirRegKey HKLM "${PRODUCT_UNINST_KEY}" "UninstallString"
ShowInstDetails show
ShowUnInstDetails show
;����Ĭ��װ/ж��
;SilentInstall silent
;SilentUninstall silent
BrandingText "TalkClass Install System V2.0"

Section "MainSection" SEC01
      System::Call "Kernel32::GetVersion(v) i .s"
      Pop $0
      IntOp $MajorVersion $0 & 0xFF
      ;DetailPrint "Windows ���汾: $MajorVersion"
      IntOp $MinorVersion $0 & 0xFFFF
      IntOp $MinorVersion $MinorVersion >> 8
      ;DetailPrint "Windows �ΰ汾: $MinorVersion"
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

; ������ʼ�˵���ݷ�ʽ
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

#-- ���� NSIS �ű��༭�������� Function ���α�������� Section ����֮���д���Ա��ⰲװ�������δ��Ԥ֪�����⡣--#

Function CNLang
  Push ""
  Push ${LANG_SIMPCHINESE}
  Push "��������"
  Push ${LANG_ENGLISH}
  Push English
  Push A ; A means auto count languages
         ; for the auto count to work the first empty push (Push "") must remain
  LangDLL::LangDialog "��װ����" "��ѡ��װ����"

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
  Push "���w����"
  Push ${LANG_ENGLISH}
  Push English
  Push A ; A means auto count languages
         ; for the auto count to work the first empty push (Push "") must remain
  LangDLL::LangDialog "���b�Z��" "Ո�x���b�Z��"

  Pop $LANGUAGE
  StrCmp $LANGUAGE "cancel" 0 +2
  Abort
FunctionEnd

Function JPLang
  Push ""
  Push ${LANG_JAPANESE}
  Push "�ձ��Z"
  Push ${LANG_ENGLISH}
  Push English
  Push A ; A means auto count languages
         ; for the auto count to work the first empty push (Push "") must remain
  LangDLL::LangDialog "���󥹥ȩ`�����Z" "���󥹥ȩ`�����Z���x�k���Ƥ�������"

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

;��װʱ����Ƿ�����Ѱ�װĿ¼������ɾ������Ŀ¼ local-storage
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
  ;�ر�Class.exe����
;  Push $R0
;  CheckProc:
;    nsProcess::_FindProcess "Class.exe"
;    Pop $R0
;    IntCmp $R0 0 Done
;    MessageBox MB_OKCANCEL|MB_ICONSTOP "��װ�����⵽ ${PRODUCT_NAME} �������С�$\r$\n$\r$\n��� ��ȷ���� ǿ�ƹر�${PRODUCT_NAME}��������װ��$\r$\n��� ��ȡ���� �˳���װ����" IDCANCEL Exit
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
	
  ;�ر�Class.exe����
  Push $R0
  nsProcess::_FindProcess "Class.exe"
  Pop $R0
  IntCmp $R0 0 running no_running no_running
  running:
  MessageBox MB_OKCANCEL|MB_ICONSTOP "��װ�����⵽ ${PRODUCT_NAME} �������С�$\r$\n$\r$\n��� ��ȷ���� ǿ�ƹر�${PRODUCT_NAME}��������װ��$\r$\n��� ��ȡ���� �˳���װ����" IDOK dokill IDCANCEL stopit
  ;MessageBox MB_ICONQUESTION|MB_YESNO "��װ�����⵽ ${PRODUCT_NAME} �������У��Ƿ�ǿ�йرղ�������װ?" IDYES dokill IDNO stopit
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
 *  �����ǰ�װ�����ж�ز���  *
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

#-- ���� NSIS �ű��༭�������� Function ���α�������� Section ����֮���д���Ա��ⰲװ�������δ��Ԥ֪�����⡣--#
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
;    MessageBox MB_OKCANCEL|MB_ICONSTOP "Uninstall program detected${PRODUCT_NAME} Running��$\r$\n$\r$\n Click ��OK��Force Close${PRODUCT_NAME}��Continue Uninstall��$\r$\n Click��Cancel�� Quit Uninstall��" IDCANCEL Exit
;    Push "Class.exe"
;    Processwork::KillProcess
;    Sleep 1000
;    Goto CheckProc
;    Exit:
;    Abort
;    Done:
;    Pop $R0
;FunctionEnd


;��ʼж��ʱ��飺
Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "$(strUnConfirm1) $(^Name) $(strUnConfirm2)" IDYES +2
  Push $R0
  nsProcess::_FindProcess "Class.exe"
  Pop $R0
  IntCmp $R0 0 running no_running no_running
  running:
  MessageBox MB_OKCANCEL|MB_ICONSTOP "Uninstall program detected${PRODUCT_NAME} Running��$\r$\n$\r$\n Click ��OK��Force Close${PRODUCT_NAME}��Continue Uninstall��$\r$\n Click��Cancel�� Quit Uninstall��" IDOK dokill IDCANCEL stopit
  ;MessageBox MB_ICONQUESTION|MB_YESNO "��װ�����⵽ ${PRODUCT_NAME} �������У��Ƿ�ǿ�йرղ�����ж��?" IDYES dokill IDNO stopit
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

