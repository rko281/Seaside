"Filed out from Dolphin Smalltalk"!

WAScriptGenerator subclass: #WANullScriptGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WANullScriptGenerator guid: (GUID fromString: '{b8842992-f07b-428e-80f7-478a0a6bc84b}')!

WANullScriptGenerator comment: 'A script generator that does not support any load scripts. This results in cleaner HTML and should result in slightly faster page loads.'!

!WANullScriptGenerator categoriesForClass!Document! !

!WANullScriptGenerator methodsFor!

addLoadScript: anObject	WAError signal: '#addLoadScript: is not supported by WANullScriptGenerator use WADefaultScriptGenerator or JQScriptGenerator instead'!

addLoadScriptFirst: anObject	WAError signal: '#addLoadScriptFirst: is not supported by WANullScriptGenerator use WADefaultScriptGenerator or JQScriptGenerator instead'!

close: aHtmlRoot on: aDocument	"do nothing"!

open: aHtmlRoot on: aDocument	"do nothing"! !

!WANullScriptGenerator categoriesForMethods!
addLoadScript:!accessing!public! !
addLoadScriptFirst:!accessing!public! !
close:on:!actions!public! !
open:on:!actions!public! !
!

