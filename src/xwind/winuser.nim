

import xio/windows/base/[windef, winnt, minwindef, winuser, winbase]


proc messageBox*(hwnd: int, lpText: string, 
                 lpCation: string, uType: uint32): int {.inline.} =
  ## Displays a modal dialog with a system icon, buttons and messages(UTF-8 versions).
  messageBoxA(cast[HWND](hwnd), cast[LPCTSTR](lpText[0].unsafeAddr), 
              cast[LPCTSTR](lpCation.cstring), UINT(utype))

proc messageBox*(hwnd: int, lpText: WideCStringObj, 
                 lpCation: WideCStringObj, uType: uint32): int {.inline.} =
  ## Displays a modal dialog with a system icon, buttons and messages(Unicode version).
  messageBoxW(cast[HWND](hwnd), cast[LPCWSTR](lpText), 
              cast[LPCWSTR](lpCation), UINT(utype))

proc getComputerNameA*(nSize: int): string {.inline.} =
  ## Gets a type of the computer name(UTF-8 version).
  result = newString(nSize)
  var nsize = DWORD(nSize)
  discard getComputerNameA(result.cstring, nSize)

proc getComputerNameW*(nSize: int): WideCStringObj {.inline.} =
  ## Gets a type of the computer name(Unicode version).
  result = newWideCString("")
  var nsize = DWORD(nSize)
  discard getComputerNameW(cast[LPCWSTR](result), nSize)



when isMainModule:
  import strformat


  const MaxComputerLength = 15

  # MessageBox
  discard messageBox(0, "Resource not available\nDo you want to try again?还好",
                     "Hello, Nim", MB_ICONWARNING or MB_CANCELTRYCONTINUE or MB_DEFBUTTON2)

  discard messageBox(0, newWideCString("Resource not available\n你想测试吗?"),
                     newWideCString("Account Details"), MB_ICONWARNING or MB_CANCELTRYCONTINUE or MB_DEFBUTTON2)

  # Get width and height of the screen
  doAssert fmt"{getSystemMetrics(SM_CXSCREEN) = }" == "getSystemMetrics(SM_CXSCREEN) = 1366"
  doAssert fmt"{getSystemMetrics(SM_CYSCREEN) = }" == "getSystemMetrics(SM_CYSCREEN) = 768"

  # Get computer name
  echo getComputerNameA(MaxComputerLength + 20)
  echo getComputerNameW(MaxComputerLength + 100)

