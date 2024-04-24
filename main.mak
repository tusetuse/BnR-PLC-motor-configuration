SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Python312\Scripts\;C:\Python312\;C:\ProgramData\Oracle\Java\javapath;C:\Program Files\Common Files\Oracle\Java\javapath;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\dotnet\;C:\Program Files\Docker\Docker\resources\bin;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files\nodejs\;C:\ProgramData\chocolatey\bin;C:\Program Files (x86)\cloudflared;C:\Program Files\Git\cmd;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files (x86)\Windows Kits\8.1\Windows Performance Toolkit\;C:\Program Files (x86)\Windows Kits\10\Windows Performance Toolkit\;C:\Users\ivanr\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Nmap;C:\Users\ivanr\AppData\Local\Programs\Microsoft VS Code\bin;C:\msys64\ucrt64\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\ivanr\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Nmap;C:\Users\ivanr\AppData\Local\Programs\Microsoft VS Code\bin;C:\msys64\ucrt64\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.8.7.28 SP
export AS_COMPANY_NAME :=  
export AS_USER_NAME := ivanr
export AS_PATH := C:/BrAutomation/AS48
export AS_BIN_PATH := C:/BrAutomation/AS48/Bin-en
export AS_PROJECT_PATH := C:/Users/ivanr/OneDrive/Plocha/test_diplomovka
export AS_PROJECT_NAME := test_diplomovka
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS48/AS/VC
export AS_TEMP_PATH := C:/Users/ivanr/OneDrive/Plocha/test_diplomovka/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Users/ivanr/OneDrive/Plocha/test_diplomovka/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS48/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS48/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS48
export WIN32_AS_PATH := "C:\BrAutomation\AS48"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS48\Bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Users\ivanr\OneDrive\Plocha\test_diplomovka"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS48\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\ivanr\OneDrive\Plocha\test_diplomovka\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\ivanr\OneDrive\Plocha\test_diplomovka\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS48\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS48"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/test_diplomovka.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndTransfer'   

