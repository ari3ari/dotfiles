; 変換・無変換 キーの空打ちで IME の OFF/ON を切り替える
;
; 無変換 キーの空打ちで IME を「英数」に切り替え
; 変換 キーの空打ちで IME を「かな」に切り替え
;
; AutoHotkey: v1.1.24.05
; Author:     karakaram   http://www.karakaram.com/alt-ime-on-off

#Include IME.ahk

; 主要なキーを HotKey に設定し、何もせずパススルーする
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~LAlt::
*~RAlt::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
    Return

; 左 無変換 空打ちで IME を OFF
vk1Dsc07B ::
    IME_SET(0)
    Return

; 右 変換 空打ちで IME を ON
vk1Csc079 ::
    IME_SET(1)
    Return

; vimライクなカーソル移動・選択
vk1Dsc07B & k::
  If GetKeyState("shift", "P")
      Send, +{Up}
  else
      Send, {Up}
  return
vk1Dsc07B & j::
  If GetKeyState("shift", "P")
      Send, +{Down}
  else
      Send, {Down}
  return
vk1Dsc07B & h::
  If GetKeyState("shift", "P")
      Send, +{Left}
  else
      Send, {Left}
  return
vk1Dsc07B & l::
  If GetKeyState("shift", "P")
      Send, +{Right}
  else
      Send, {Right}
  return

; 一行コピー・切り取り・選択・挿入
vk1Dsc07B & y::
  If GetKeyState("shift", "P")
      Send, {End}+{Home}^{c}
  else
      Send, ^{c}
  return
vk1Dsc07B & d::
  If GetKeyState("shift", "P")
      Send, {End}+{Home}^{x}
  else
      Send, ^{x}
  return
vk1Dsc07B & v:: Send, {End}+{Home}
vk1Dsc07B & o:: Send, {End}{Enter}

; 単語移動・選択
vk1Dsc07B & w::
  If GetKeyState("shift", "P") {
      Send, ^{left}+^{right}
      ;Clipboard := RegExReplace(Clipboard, "^[:space:]+|[:space:]+$/g", "")
  }
  else {
      Send, {Blind}^{right}
  }
  return
vk1Dsc07B & b::Send, {Blind}^{left}

; 行頭まで移動
vk1Dsc07B & 0::
vk1Dsc07B & i::
vk1Dsc07B & ^::
  If GetKeyState("shift", "P")
      Send, {Blind}+{Home}
  else
      Send, {Blind}{Home}
  return
; 行末移動・選択
vk1Dsc07B & a::
vk1Dsc07B & 4::
  If GetKeyState("shift", "P")
      Send, {Blind}+{End}
  else
    Send, {Blind}{End}
  return

; その他
vk1Csc079 & z:: Send, #d
vk1Csc079 & vk20sc039 :: Send, {Enter}
vk1Csc079 & k:: Send, {PgUp}
vk1Csc079 & j:: Send, {PgDn}
vk1Dsc07B & t::
  If GetKeyState("shift", "P")
      Send, +{Tab}
  else
      Send, {Tab}
  return
vk1Dsc07B & vkBEsc034 :: AltTab
vk1Dsc07B & vkBCsc033 :: ShiftAltTab
vk1Dsc07B & vk1Csc079 :: Send, {vkF3sc029}
; CTRL + SPACE → 削除(BS)  *visual studioで使用するためコメントアウト
; LCtrl & vk20sc039 :: Send, {BS}
