"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAScriptTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAScriptTag guid: (GUID fromString: '{1ae6cac7-df3b-4a36-ae0b-d13e30690a2a}')!

WAScriptTag comment: 'Defines a script, such as a JavaScript.'!

!WAScriptTag categoriesForClass!Seaside-Canvas-Tags! !

!WAScriptTag methodsFor!

async	"If the async attribute is present, then the script will be executed asynchronously, as soon as it is available.	See: http://www.w3.org/TR/html5/scripting-1.html#attr-script-async"	self attributes at: 'async' put: true!

defer	"When set, this boolean attribute provides a hint to the user agent that the script is not going to generate any document content (e.g., no 'document.write' in javascript) and thus, the user agent can continue parsing and rendering."	self attributes at: 'defer' put: true!

resourceUrl: aString	self url: (canvas absoluteUrlForResource: aString)!

tag	^ 'script'!

type: aString	self attributeAt: 'type' put: aString!

url: aString	self attributes at: 'src' put: aString!

with: aStringOrJSObject	self attributes		at: 'type'		ifAbsentPut: [ 'text/javascript' ].	super with: [		aStringOrJSObject ifNotNil: [			aStringOrJSObject isJavascript				ifTrue: [					aStringOrJSObject asJavascriptOn: self document stream ]				ifFalse: [					"we want to render a String directly and avoid escaping "" and '"					self document nextPutAll: aStringOrJSObject greaseString ] ] ]! !

!WAScriptTag categoriesForMethods!
async!attributes!public! !
defer!attributes!public! !
resourceUrl:!attributes!public! !
tag!accessing!public! !
type:!attributes!public! !
url:!attributes!public! !
with:!public! !
!

