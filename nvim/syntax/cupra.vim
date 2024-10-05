" Syntax highlighting for my programming language "cupra"

if exists("b:current_syntax")
  finish
endif

" Define keywords
syn keyword cupraKeyword syscall

" Define operators
syn match cupraOperator "="
syn match cupraOperator "+"
syn match cupraOperator "-"

" Define registers and numbers
syn match cupraRegister "r[89]\|r1[0-5]\|rax\|rbx\|rcx\|rdx\|rsi\|rdi\|rbp\|rsp\|r8\|r9\|r10\|r11\|r12\|r13\|r14\|r15"
syn match cupraNumber "\<\x\+\>\|\<\d\+\>"

" Define comments
syn match cupraComment "//.*$"

" Highlighting
hi def link cupraKeyword Keyword
hi def link cupraOperator Operator
hi def link cupraRegister Identifier
hi def link cupraNumber Number
hi def link cupraComment Comment

let b:current_syntax = "cupra"
