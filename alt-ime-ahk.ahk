; 左右 Alt キーの空打ちで IME の OFF/ON を切り替える
;
; 左 Alt キーの空打ちで IME を「英数」に切り替え
; 右 Alt キーの空打ちで IME を「かな」に切り替え
; Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作
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

; 左 Alt 空打ちで IME を OFF
vk1Dsc07B ::
    IME_SET(0)
    Return

; 右 Alt 空打ちで IME を ON
vk1Csc079 ::
    IME_SET(1)
    Return

vk1Dsc07B & k:: Send, {Up}
vk1Dsc07B & j:: Send, {Down}
vk1Dsc07B & h:: Send, {Left}
vk1Dsc07B & l:: Send, {Right}
vk1Csc079 & z:: Send, #d
vk1Csc079 & vk20sc039 :: Send, {Enter}
vk1Csc079 & k:: Send, {PgUp}
vk1Csc079 & j:: Send, {PgDn}
vk1Dsc07B & i:: Send, {Home}
vk1Dsc07B & n:: Send, {End}
vk1Dsc07B & o:: Send, {Tab}
vk1Dsc07B & u:: Send, +{Tab}
vk1Dsc07B & vkBEsc034 :: AltTab
vk1Dsc07B & vkBCsc033 :: ShiftAltTab
vk1Dsc07B & vk1Csc079 :: Send, {vkF3sc029}
; CTRL + SPACE → 削除(BS)  *visual studioで使用するためコメントアウト
; LCtrl & vk20sc039 :: Send, {BS}