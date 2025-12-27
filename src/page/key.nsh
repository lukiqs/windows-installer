Function KeyPageCreate
    nsDialogs::Create 1018
    Pop $0
    ${If} $0 == error
        Abort
    ${EndIf}

    ${NSD_CreateLabel} 20 20 300 24 "${LabelInstallationKey}"
    Pop $1

    ${NSD_CreateText} 20 40 300 24 ""
    Pop $InstallationKey

    nsDialogs::Show
FunctionEnd

Function KeyPageLeave
    ${NSD_GetText} $InstallationKey $0
    StrCmp $0 "" 0 +2
        MessageBox MB_OK|MB_ICONEXCLAMATION "${LabelInvalidInstallationKey}"
        Abort  ;
FunctionEnd