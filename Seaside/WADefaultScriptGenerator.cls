"Filed out from Dolphin Smalltalk"!

WAScriptGenerator subclass: #WADefaultScriptGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADefaultScriptGenerator guid: (GUID fromString: '{3157b99a-8285-402a-8bde-a451e0e5fceb}')!

WADefaultScriptGenerator comment: 'A WADefaultScriptGenerator uses the onLoad event on the body to trigger the load scripts. Events handlers are directly inlined with the respective elements. Both techniques are considered outdated and should be avoided if possible.'!

!WADefaultScriptGenerator categoriesForClass!Seaside-Core-Document! !

!WADefaultScriptGenerator methodsFor!

close: aHtmlRoot on: aDocument	self 		writeScriptTag: [			aDocument nextPutAll: 'function onLoad(){'.			self writeLoadScriptsOn: aDocument.			aDocument nextPutAll: '};' ]		on: aDocument!

open: aHtmlRoot on: aDocument	aHtmlRoot bodyAttributes at: 'onload' put: 'onLoad()'! !

!WADefaultScriptGenerator categoriesForMethods!
close:on:!actions!public! !
open:on:!actions!public! !
!

