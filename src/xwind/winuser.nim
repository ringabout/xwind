{.pragma: libUser32, stdcall, dynlib: "User32.dll".}


type
  HANDLE* = int
  HWND* = HANDLE

  WINBOOL* = int32

  WCHAR* = uint16
  LPCWSTR* = ptr WCHAR
  LPCTSTR* = LPCWSTR
  PWCHAR* = ptr WCHAR
  LPWCH* = ptr WCHAR
  PWCH* = ptr WCHAR
  LPCWCH* = ptr WCHAR
  PCWCH* = ptr WCHAR
  NWPSTR* = ptr WCHAR
  LPWSTR* = ptr WCHAR
  PWSTR* = ptr WCHAR
  PZPWSTR* = ptr PWSTR
  PCZPWSTR* = ptr PWSTR
  LPUWSTR* = ptr WCHAR
  PUWSTR* = ptr WCHAR
  PCWSTR* = ptr WCHAR
  PZPCWSTR* = ptr PCWSTR
  LPCUWSTR* = ptr WCHAR
  PCUWSTR* = ptr WCHAR

  UINT* = uint32

  LPSTR* = cstring

  BYTE* = uint8
  WORD* = uint16
  DWORD* = int32
  PWORD* = ptr WORD
  LPWORD* = ptr WORD
  PDWORD* = ptr DWORD
  LPDWORD* = ptr DWORD

const
  MB_OK* = 0x00000000
  MB_OKCANCEL* = 0x00000001
  MB_ABORTRETRYIGNORE* = 0x00000002
  MB_YESNOCANCEL* = 0x00000003
  MB_YESNO* = 0x00000004
  MB_RETRYCANCEL* = 0x00000005
  MB_CANCELTRYCONTINUE* = 0x00000006
  MB_ICONHAND* = 0x00000010
  MB_ICONQUESTION* = 0x00000020
  MB_ICONEXCLAMATION* = 0x00000030
  MB_ICONASTERISK* = 0x00000040
  MB_USERICON* = 0x00000080
  MB_ICONWARNING* = MB_ICONEXCLAMATION
  MB_ICONERROR* = MB_ICONHAND
  MB_ICONINFORMATION* = MB_ICONASTERISK
  MB_ICONSTOP* = MB_ICONHAND
  MB_DEFBUTTON1* = 0x00000000
  MB_DEFBUTTON2* = 0x00000100
  MB_DEFBUTTON3* = 0x00000200
  MB_DEFBUTTON4* = 0x00000300
  MB_APPLMODAL* = 0x00000000
  MB_SYSTEMMODAL* = 0x00001000
  MB_TASKMODAL* = 0x00002000
  MB_HELP* = 0x00004000
  MB_NOFOCUS* = 0x00008000
  MB_SETFOREGROUND* = 0x00010000
  MB_DEFAULT_DESKTOP_ONLY* = 0x00020000
  MB_TOPMOST* = 0x00040000
  MB_RIGHT* = 0x00080000
  MB_RTLREADING* = 0x00100000
  MB_SERVICE_NOTIFICATION* = 0x00200000
  MB_SERVICE_NOTIFICATION_NT3X* = 0x00040000
  MB_TYPEMASK* = 0x0000000F
  MB_ICONMASK* = 0x000000F0
  MB_DEFMASK* = 0x00000F00
  MB_MODEMASK* = 0x00003000
  MB_MISCMASK* = 0x0000C000

  SM_CXSCREEN* = 0
  SM_CYSCREEN* = 1
  SM_CXVSCROLL* = 2
  SM_CYHSCROLL* = 3
  SM_CYCAPTION* = 4
  SM_CXBORDER* = 5
  SM_CYBORDER* = 6
  SM_CXDLGFRAME* = 7
  SM_CYDLGFRAME* = 8
  SM_CYVTHUMB* = 9
  SM_CXHTHUMB* = 10
  SM_CXICON* = 11
  SM_CYICON* = 12
  SM_CXCURSOR* = 13
  SM_CYCURSOR* = 14
  SM_CYMENU* = 15
  SM_CXFULLSCREEN* = 16
  SM_CYFULLSCREEN* = 17
  SM_CYKANJIWINDOW* = 18
  SM_MOUSEPRESENT* = 19
  SM_CYVSCROLL* = 20
  SM_CXHSCROLL* = 21
  SM_DEBUG* = 22
  SM_SWAPBUTTON* = 23
  SM_RESERVED1* = 24
  SM_RESERVED2* = 25
  SM_RESERVED3* = 26
  SM_RESERVED4* = 27
  SM_CXMIN* = 28
  SM_CYMIN* = 29
  SM_CXSIZE* = 30
  SM_CYSIZE* = 31
  SM_CXFRAME* = 32
  SM_CYFRAME* = 33
  SM_CXMINTRACK* = 34
  SM_CYMINTRACK* = 35
  SM_CXDOUBLECLK* = 36
  SM_CYDOUBLECLK* = 37
  SM_CXICONSPACING* = 38
  SM_CYICONSPACING* = 39
  SM_MENUDROPALIGNMENT* = 40
  SM_PENWINDOWS* = 41
  SM_DBCSENABLED* = 42
  SM_CMOUSEBUTTONS* = 43
  SM_CXFIXEDFRAME* = SM_CXDLGFRAME
  SM_CYFIXEDFRAME* = SM_CYDLGFRAME
  SM_CXSIZEFRAME* = SM_CXFRAME
  SM_CYSIZEFRAME* = SM_CYFRAME
  SM_SECURE* = 44
  SM_CXEDGE* = 45
  SM_CYEDGE* = 46
  SM_CXMINSPACING* = 47
  SM_CYMINSPACING* = 48
  SM_CXSMICON* = 49
  SM_CYSMICON* = 50
  SM_CYSMCAPTION* = 51
  SM_CXSMSIZE* = 52
  SM_CYSMSIZE* = 53
  SM_CXMENUSIZE* = 54
  SM_CYMENUSIZE* = 55
  SM_ARRANGE* = 56
  SM_CXMINIMIZED* = 57
  SM_CYMINIMIZED* = 58
  SM_CXMAXTRACK* = 59
  SM_CYMAXTRACK* = 60
  SM_CXMAXIMIZED* = 61
  SM_CYMAXIMIZED* = 62
  SM_NETWORK* = 63
  SM_CLEANBOOT* = 67
  SM_CXDRAG* = 68
  SM_CYDRAG* = 69
  SM_SHOWSOUNDS* = 70
  SM_CXMENUCHECK* = 71
  SM_CYMENUCHECK* = 72
  SM_SLOWMACHINE* = 73
  SM_MIDEASTENABLED* = 74
  SM_MOUSEWHEELPRESENT* = 75
  SM_XVIRTUALSCREEN* = 76
  SM_YVIRTUALSCREEN* = 77
  SM_CXVIRTUALSCREEN* = 78
  SM_CYVIRTUALSCREEN* = 79
  SM_CMONITORS* = 80
  SM_SAMEDISPLAYFORMAT* = 81
  SM_IMMENABLED* = 82
  SM_CXFOCUSBORDER* = 83
  SM_CYFOCUSBORDER* = 84
  SM_TABLETPC* = 86
  SM_MEDIACENTER* = 87
  SM_STARTER* = 88
  SM_SERVERR2* = 89
  SM_MOUSEHORIZONTALWHEELPRESENT* = 91
  SM_CXPADDEDBORDER* = 92
  SM_DIGITIZER* = 94
  SM_MAXIMUMTOUCHES* = 95
  SM_CMETRICS* = 97
  SM_REMOTESESSION* = 0x1000
  SM_SHUTTINGDOWN* = 0x2000
  SM_REMOTECONTROL* = 0x2001
  SM_CARETBLINKINGENABLED* = 0x2002
  SM_CONVERTIBLESLATEMODE* = 0x2003
  SM_SYSTEMDOCKED* = 0x2004

proc messageBoxA(hwnd: HWND, lpText: LPCTSTR, 
                 lpCation: LPCTSTR, uType: UINT): int {.importc: "MessageBoxA", libUser32.}

proc messageBoxW(hwnd: HWND, lpText: LPCWSTR, 
                 lpCation: LPCWSTR, uType: UINT): int {.importc: "MessageBoxW", libUser32.}


proc messageBox*(hwnd: int, lpText: string, 
                 lpCation: string, uType: uint32): int {.inline.} =
  ## Displays a modal dialog with a system icon, buttons and messages(UTF-8 versions).
  messageBoxA(HWND(hwnd), cast[LPCTSTR](lpText[0].unsafeAddr), 
              cast[LPCTSTR](lpCation[0].unsafeAddr), UINT(utype))

proc messageBox*(hwnd: int, lpText: WideCStringObj, 
                 lpCation: WideCStringObj, uType: uint32): int {.inline.} =
  ## Displays a modal dialog with a system icon, buttons and messages(Unicode version).
  messageBoxW(HWND(hwnd), cast[LPCWSTR](lpText), 
              cast[LPCWSTR](lpCation), UINT(utype))

proc getSystemMetrics*(nIndex: cint): cint {.importc: "GetSystemMetrics", libUser32.} =
  ## Retrieves the specified system metric or system configuration setting.

proc lockWorkStation*(): bool {.importc: "LockWorkStation", libUser32.} =
  ## Locks the screen.


# type
#   ComputerNameFormat* {.pure.} = enum
#     ComputerNameNetBIOS,
#     ComputerNameDnsHostname,
#     ComputerNameDnsDomain,
#     ComputerNameDnsFullyQualified,
#     ComputerNamePhysicalNetBIOS,
#     ComputerNamePhysicalDnsHostname,
#     ComputerNamePhysicalDnsDomain,
#     ComputerNamePhysicalDnsFullyQualified,
#     ComputerNameMax

# proc getComputerNameExA*(nameType: ComputerNameFormat, 
#                          lpBuffer: LPSTR, nSize: LPDWORD): bool {.importc: "GetComputerNameExA", libUser32.}

# proc getComputerNameExW*(nameType: ComputerNameFormat, 
#                          lpBuffer: LPWSTR, nSize: LPDWORD): bool {.importc: "GetComputerNameExW", libUser32.}

# proc getComputerNameEx*(nameType: ComputerNameFormat, 
#                         lpBuffer: string, nSize: int): bool {.inline.} =
#   ## Gets a type of the computer name(UTF-8 version).
#   getComputerNameExA(nameType, lpBuffer.cstring,  cast[LPDWORD](nSize))

# proc getComputerNameEx*(nameType: ComputerNameFormat, 
#                         lpBuffer: WideCStringObj, nSize: int): bool {.inline.} =
#   ## Gets a type of the computer name(Unicode version).
#   getComputerNameExW(nameType, cast[LPCWSTR](lpBuffer),  cast[LPDWORD](nSize))


{.pragma: libKernel32, stdcall, dynlib: "Kernel32.dll".}

const
  MaxComputerLength* = 15

proc getLastError*(): DWORD {.importc: "GetLastError", libKernel32.}

proc getComputerNameA*(lpBuffer: LPSTR, 
                         nSize: LPDWORD): WINBOOL {.importc: "GetComputerNameA", libKernel32.}

proc getComputerNameW*(lpBuffer: LPWSTR, 
                         nSize: LPDWORD): WINBOOL {.importc: "GetComputerNameW", libKernel32.}

proc getComputerNameA*(nSize: int): string {.inline.} =
  ## Gets a type of the computer name(UTF-8 version).
  result = newString(nSize)
  discard getComputerNameA(result.cstring, cast[LPDWORD](unsafeAddr nSize))

proc getComputerNameW*(nSize: int): WideCStringObj {.inline.} =
  ## Gets a type of the computer name(Unicode version).
  new result
  discard getComputerNameW(cast[LPCWSTR](result), cast[LPDWORD](unsafeAddr nSize))



when isMainModule:
  import strformat

  # MessageBox
  # discard messageBox(0, "Resource not available\nDo you want to try again?还好",
  #                    "Hello, Nim", MB_ICONWARNING or MB_CANCELTRYCONTINUE or MB_DEFBUTTON2)

  # discard messageBox(0, newWideCString("Resource not available\n你想测试吗?"),
  #                    newWideCString("Account Details"), MB_ICONWARNING or MB_CANCELTRYCONTINUE or MB_DEFBUTTON2)

  # Get width and height of the screen
  doAssert fmt"{getSystemMetrics(SM_CXSCREEN) = }" == "getSystemMetrics(SM_CXSCREEN) = 1366"
  doAssert fmt"{getSystemMetrics(SM_CYSCREEN) = }" == "getSystemMetrics(SM_CYSCREEN) = 768"

  # Get computer name
  echo getComputerNameA(MaxComputerLength + 20)
  echo getComputerNameW(MaxComputerLength + 100)

