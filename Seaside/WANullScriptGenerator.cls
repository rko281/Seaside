"Filed out from Dolphin Smalltalk 7"!

WAScriptGenerator subclass: #WANullScriptGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANullScriptGenerator guid: (GUID fromString: '{83b25c45-c477-4ce1-bcd9-1b398b5bcc9f}')!
WANullScriptGenerator comment: 'A script generator that does not support any load scripts. This results in cleaner HTML and should result in slightly faster page loads.'!
!WANullScriptGenerator categoriesForClass!Seaside-Core-Document! !
!WANullScriptGenerator methodsFor!

addLoadScript: anObject	WAError signal: '#addLoadScript: is not supported by WANullScriptGenerator use WADefaultScriptGenerator or JQScriptGenerator instead'!

addLoadScriptFirst: anObject	WAError signal: '#addLoadScriptFirst: is not supported by WANullScriptGenerator use WADefaultScriptGenerator or JQScriptGenerator instead'!

close: aHtmlRoot on: aDocument	"do nothing"!

open: aHtmlRoot on: aDocument	"do nothing"! !
!WANullScriptGenerator categoriesFor: #addLoadScript:!accesing!public! !
!WANullScriptGenerator categoriesFor: #addLoadScriptFirst:!accesing!public! !
!WANullScriptGenerator categoriesFor: #close:on:!actions!public! !
!WANullScriptGenerator categoriesFor: #open:on:!actions!public! !

