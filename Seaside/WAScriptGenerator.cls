"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAScriptGenerator
	instanceVariableNames: 'loadScripts'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAScriptGenerator guid: (GUID fromString: '{c3913eaf-2503-44ba-962e-8f2bb7e965c6}')!

WAScriptGenerator comment: 'I am responsible to render the loadscripts and make them run on page load. See subclasses for different strategies.'!

!WAScriptGenerator categoriesForClass!Document! !

!WAScriptGenerator methodsFor!

addLoadScript: anObject	"Add a script anObject to the receiver. This method ensures all scripts to run in the added order when the DOM is ready. Note that the default implementation calls the scripts when the page has finished loading."		^ loadScripts addLast: anObject!

addLoadScriptFirst: anObject	"Add a script anObject at the beginning of the load scripts."		^ loadScripts addFirst: anObject!

close: aHtmlRoot on: aDocument	"This method is called before the document is closed."!

closeOn: aDocument	"This method is called to close the document that has no root."		self loadScripts isEmpty 		ifTrue: [ ^ self ].	self 		writeScriptTag: [ self writeLoadScriptsOn: aDocument ]		on: aDocument!

event: aString do: anObject on: aBrush	"Attaches the Javscript anObject to the event aString of aBrush. This default implementation simply inlines the Javascript code into the brush; subclasses might override this to do something more meaningful."		aBrush attributes at: 'on' , aString append: anObject separator: ';'!

initialize	super initialize.	loadScripts := OrderedCollection new!

loadScripts	"Answer the load scripts of the receiver. These scripts will be evaluated in order when the page has loaded."	^ loadScripts!

open: aHtmlRoot on: aDocument	"This method is called before the document is opened."!

writeLoadScriptsOn: aDocument	"Utility method to write the receivers load scripts onto aDocument."	self loadScripts do: [ :each |		aDocument stream javascript: each.		aDocument nextPut: $; ]!

writeScriptTag: aBlock on: aDocument	"Utitlity method to properly wrap the script generation code in aBlock onto aDocument."	| attributes |	attributes := WAHtmlAttributes new.	attributes at: 'type' put: 'text/javascript'.	aDocument openTag: 'script' attributes: attributes.	aBlock value.	aDocument closeTag: 'script'! !

!WAScriptGenerator categoriesForMethods!
addLoadScript:!accessing!public! !
addLoadScriptFirst:!accessing!public! !
close:on:!actions!public! !
closeOn:!actions!public! !
event:do:on:!public! !
initialize!initialization!public! !
loadScripts!accessing!public! !
open:on:!actions!public! !
writeLoadScriptsOn:!private! !
writeScriptTag:on:!private! !
!

