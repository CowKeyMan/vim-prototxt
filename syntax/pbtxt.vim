if exists("b:current_syntax")
  finish
endif

syntax match pbtxtIdentifier "\v\w+\s*(:|\{)@="
highlight link pbtxtIdentifier Identifier

syntax match pbtxtComment "\v//.*$"
highlight link pbtxtComment Comment

syntax region pbtxtString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link pbtxtString String

let b:current_syntax = "pbtxt"
