; 左右 Alt キーの空打ちで IME の OFF/ON を切り替える
;
; 左 Alt キーの空打ちで IME を「英数」に切り替え
; 右 Alt キーの空打ちで IME を「かな」に切り替え
; Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作
;
; Author:     karakaram   http://www.karakaram.com/alt-ime-on-off

#Include IME.ahk

; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
#MaxHotkeysPerInterval 350

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

; 上部メニューがアクティブになるのを抑制
*~LAlt::Send {Blind}{vk07}
*~RAlt::Send {Blind}{vk07}

; 左 Alt 空打ちで IME を OFF
LAlt up::
    if (A_PriorHotkey == "*~LAlt")
    {
        IME_SET(0)
    }
    Return

; 右 Alt 空打ちで IME を ON
RAlt up::
    if (A_PriorHotkey == "*~RAlt")
    {
        IME_SET(1)
    }
    Return
	
; Vi cursor: Escape key + hjkl
Esc & h::
  Send, {Left down}{Left up}
Return
Esc & j::
   Send, {Down down}{Down up}
Return
Esc & k::
   Send, {Up down}{Up up}
Return
Esc & l::
   Send, {Right down}{Right up}
Return

;Change CapsLock to Ctrl
;sc03A & p::send {Up}
;sc03A & b::send {Left}
;sc03A & n::send {Down}
;sc03A & f::send {Right}

sc03A & a::send {Home}
sc03A & e::send {End}
sc03A & k::send +{End}{Del}
sc03A & d::send {Del}
sc03A & h::send {BS}

sc03A & q::send ^{q}
sc03A & w::send ^{w}
sc03A & r::send ^{r}
sc03A & t::send ^{t}
sc03A & y::send ^{y}
sc03A & u::send ^{u}
sc03A & s::send ^{s}
sc03A & g::send ^{g}
sc03A & z::send ^{z}
sc03A & x::send ^{x}
sc03A & c::send ^{c}
sc03A & v::send ^{v}
sc03A & b::send ^{b}
sc03A & .::send ^{.}
