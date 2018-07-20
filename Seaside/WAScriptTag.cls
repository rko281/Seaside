"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAScriptTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAScriptTag guid: (GUID fromString: '{7a6c00ec-470f-4d56-8f90-b2b49e5ce2a4}')!
WAScriptTag comment: 'Defines a script, such as a JavaScript.'!
!WAScriptTag categoriesForClass!Seaside-Canvas-Tags! !
!WAScriptTag methodsFor!

async	"If the async attribute is present, then the script will be executed asynchronously, as soon as it is available.	See: http://www.w3.org/TR/html5/scripting-1.html#attr-script-async"	self attributes at: 'async' put: true!

defer	"When set, this boolean attribute provides a hint to the user agent that the script is not going to generate any document content (e.g., no 'document.write' in javascript) and thus, the user agent can continue parsing and rendering."	self attributes at: 'defer' put: true!

resourceUrl: aString	self url: (canvas absoluteUrlForResource: aString)!

tag	^ 'script'!

url: aString	self attributes at: 'src' put: aString!

with: aString 	self attributes 		at: 'type'		ifAbsentPut: [ 'text/javascript' ].	super with: [		aString isNil ifFalse: [			self document nextPutAll: aString greaseString ] ]! !
!WAScriptTag categoriesFor: #async!attributes!public! !
!WAScriptTag categoriesFor: #defer!attributes!public! !
!WAScriptTag categoriesFor: #resourceUrl:!attributes!public! !
!WAScriptTag categoriesFor: #tag!accessing!public! !
!WAScriptTag categoriesFor: #url:!attributes!public! !
!WAScriptTag categoriesFor: #with:!public! !

