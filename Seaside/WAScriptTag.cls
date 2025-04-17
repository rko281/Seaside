"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAScriptTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAScriptTag guid: (GUID fromString: '{28230a29-5fe0-4d0f-bb6c-8af7b9b914a8}')!

WAScriptTag comment: 'Defines a script, such as a JavaScript.'!

!WAScriptTag categoriesForClass!Tags! !

!WAScriptTag methodsFor!

async	"If the async attribute is present, then the script will be executed asynchronously, as soon as it is available.	See: http://www.w3.org/TR/html5/scripting-1.html#attr-script-async"	self attributes at: 'async' put: true!

defer	"When set, this boolean attribute provides a hint to the user agent that the script is not going to generate any document content (e.g., no 'document.write' in javascript) and thus, the user agent can continue parsing and rendering."	self attributes at: 'defer' put: true!

resourceUrl: aString	self url: (canvas absoluteUrlForResource: aString)!

tag	^ 'script'!

type: aString	self attributeAt: 'type' put: aString!

url: aString	self attributes at: 'src' put: aString!

with: aStringOrJSObject	self attributes		at: 'type'		ifAbsentPut: [ 'text/javascript' ].	super with: [		aStringOrJSObject ifNotNil: [			aStringOrJSObject isJavascript				ifTrue: [					self document stream javascript: aStringOrJSObject ]				ifFalse: [					"we want to render a String directly and avoid escaping "" and '"					self document nextPutAll: aStringOrJSObject greaseString ] ] ]! !

!WAScriptTag categoriesForMethods!
async!attributes!public! !
defer!attributes!public! !
resourceUrl:!attributes!public! !
tag!accessing!public! !
type:!attributes!public! !
url:!attributes!public! !
with:!public! !
!

