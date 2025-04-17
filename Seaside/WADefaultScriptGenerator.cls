"Filed out from Dolphin Smalltalk"!

WAScriptGenerator subclass: #WADefaultScriptGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADefaultScriptGenerator guid: (GUID fromString: '{cc9dbf12-00ad-4540-8bb7-2188c3bf62a5}')!

WADefaultScriptGenerator comment: 'A WADefaultScriptGenerator uses the onLoad event on the body to trigger the load scripts. Events handlers are directly inlined with the respective elements. Both techniques are considered outdated and should be avoided if possible.'!

!WADefaultScriptGenerator categoriesForClass!Document! !

!WADefaultScriptGenerator methodsFor!

close: aHtmlRoot on: aDocument	self 		writeScriptTag: [			aDocument nextPutAll: 'function onLoad(){'.			self writeLoadScriptsOn: aDocument.			aDocument nextPutAll: '};' ]		on: aDocument!

open: aHtmlRoot on: aDocument	aHtmlRoot bodyAttributes at: 'onload' put: 'onLoad()'! !

!WADefaultScriptGenerator categoriesForMethods!
close:on:!actions!public! !
open:on:!actions!public! !
!

