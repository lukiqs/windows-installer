!define APP_NAME "Application"

Name "${APP_NAME}"
OutFile "${APP_NAME}-installer.exe"

InstallDir "$PROGRAMFILES\${APP_NAME}"
InstallDirRegKey HKLM "Software\${APP_NAME}" "InstallDir"

Var InstallationKey

!define LabelInstallationKey "Enter installation key:"
!define LabelInvalidInstallationKey "Installation key cannot be empty!"
