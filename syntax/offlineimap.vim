" Vim syntax file

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax region offlineimapString start=+"+ skip=+\\"+ end=+"+
syntax region offlineimapString start=+'+ skip=+\\'+ end=+'+

syn match offlineimapComment    /#.*$/ contains=@Spell
syn match offlineimapGeneral    /\[\(general\)\]/
syn match offlineimapAccount    /\[\(Account\).*\]/
syn match offlineimapRepository /\[\(Repository\).*\]/
syn match offlineimapDefault    /\[\(DEFAULT\)\]/

syntax match offlineimapOption /^\<\(accounts\)\>/
syntax match offlineimapOption /^\<\(autorefresh\)\>/
syntax match offlineimapOption /^\<\(cert_fingerprint\)\>/
syntax match offlineimapOption /^\<\(createfolders\)\>/
syntax match offlineimapOption /^\<\(folderfilter\)\>/
syntax match offlineimapOption /^\<\(fsync\)\>/
syntax match offlineimapOption /^\<\(holdconnectionopen\)\>/
syntax match offlineimapOption /^\<\(keepalive\)\>/
syntax match offlineimapOption /^\<\(localfolders\)\>/
syntax match offlineimapOption /^\<\(localrepository\)\>/
syntax match offlineimapOption /^\<\(maxconnections\)\>/
syntax match offlineimapOption /^\<\(maxsyncaccounts\)\>/
syntax match offlineimapOption /^\<\(nametrans\)\>/
syntax match offlineimapOption /^\<\(newmail_hook\)\>/
syntax match offlineimapOption /^\<\(postsynchook\)\>/
syntax match offlineimapOption /^\<\(pythonfile\)\>/
syntax match offlineimapOption /^\<\(quick\)\>/
syntax match offlineimapOption /^\<\(realdelete\)\>/
syntax match offlineimapOption /^\<\(remotehost\)\>/
syntax match offlineimapOption /^\<\(remotepasseval\)\>/
syntax match offlineimapOption /^\<\(remoteport\)\>/
syntax match offlineimapOption /^\<\(remoterepository\)\>/
syntax match offlineimapOption /^\<\(remoteuser\)\>/
syntax match offlineimapOption /^\<\(remoteusereval\)\>/
syntax match offlineimapOption /^\<\(socktimeout\)\>/
syntax match offlineimapOption /^\<\(ssl\)\>/
syntax match offlineimapOption /^\<\(sslcacertfile\)\>/
syntax match offlineimapOption /^\<\(status_backend\)\>/
syntax match offlineimapOption /^\<\(type\)\>/
syntax match offlineimapOption /^\<\(ui\)\>/

" Match '0.', '0.0', and '.0'
set iskeyword+=.
syntax match offlineimapNumber /\<\d\+\.*\d*\>\|\<\.\d\+\>/

syn match offlineimapBool     /\<\([Tt]rue\)\>/
syn match offlineimapBool     /\<\([Ff]alse\)\>/
syn match offlineimapActivate /\<\(yes\|no\)\>/

"" Only except certain values for specific options
"syn match offlineimapWrongOption /\<\(maxsyncaccounts\|socktimeout\|autorefresh\|quick\|maxconnections\|remoteport\)\s=\s\(\d\+$\)\@!.*$/
"syn match offlineimapWrongOption /\<fsync\s=\s\(true$\|false$\)\@!.*$/
"syn match offlineimapWrongOption /\<\(realdelete\|ssl\)\s=\s\(yes$\|no$\)\@!.*$/
"syn match offlineimapWrongOption /\<status_backend\s=\s\(plain$\|sqlite$\)\@!.*$/

" Types
syntax match offlineimapWrongOption /\<Maildir\>\s*$/
syntax match offlineimapWrongOption /\<Gmail\>\s*$/
syntax match offlineimapWrongOption /\<IMAP\>\s*$/

" UIs
syntax match offlineimapUI /\<MachineUI\>/
syntax match offlineimapUI /\<TTYUI\>/
syntax match offlineimapUI /\<[Bb]asic\>/
syntax match offlineimapUI /\<[Bb]linkenlights\>/
syntax match offlineimapUI /\<[Qb]uiet\>/
syntax match offlineimapUI /\<[Ss]yslog\>/

"syn match offlineimapWrongOption /\<ui\s=\s\(TTY.TTYUI$\|basic$\|blinkenlights$\|quiet\)\@!.*$/

"syn match offlineimapWrongOptionValue /\S* \zs.*$/ contained containedin=offlineimapWrongOption

highlight default link offlineimapComment Comment
highlight default link offlineimapGeneral Function
highlight default link offlineimapAccount Function
highlight default link offlineimapRepository Function
highlight default link offlineimapDefault Function
highlight default link offlineimapOption Type
"highlight default link offlineimapWrongOptionValue Error
highlight default link offlineimapNumber Number
highlight default link offlineimapBool        Constant
highlight default link offlineimapActivate    Constant
highlight default link offlineimapWrongOption Constant
highlight default link offlineimapUI          Constant
highlight default link offlineimapString String

let b:current_syntax = "offlineimap"
