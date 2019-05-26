"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #JSJson
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSJson guid: (GUID fromString: '{bb4c7f81-dcc6-497d-b060-3ac05e956eb9}')!
JSJson comment: 'I represent the JSON object (www.json.org) that is supported by most modern web browsers. For older browsers I require WAJsonDeploymentLibrary or WAJsonDevelopmentLibrary to be included.'!
!JSJson categoriesForClass!Javascript-Core-Base! !
!JSJson methodsFor!

javascriptContentOn: aStream	aStream nextPutAll: 'JSON'!

parse: aString	"This method parses a JSON text to produce an object or array."	self call: 'parse' with: aString!

parse: aString reviver: aFunction 	"This method parses a JSON text to produce an object or array. The optional reviver parameter is a function that can filter and transform the results. It receives each of the keys and values, and its return value is used instead of the original value. If it returns what it received, then the structure is not modified. If it returns undefined then the member is deleted."	self call: 'parse' with: aString with: aFunction asFunction!

stringify: anObject	"Serialize anObject as a JSON string."	self call: 'stringify' with: anObject!

stringify: anObject replacer: aReplacer	"Serialize anObject as a JSON string. aReplacer is an optional parameter that determines how object values are stringified for objects. It can be a function or an array of strings."	self call: 'stringify' with: anObject with: aReplacer!

stringify: anObject replacer: aReplacer space: aSpace	"Serialize anObject as a JSON string. aReplacer is an optional parameter that determines how object values are stringified for objects. It can be a function or an array of strings. aSpace is an optional parameter that specifies the indentation of nested structures. If it is omitted, the text will be packed without extra whitespace."	self call: 'stringify' with: anObject with: aReplacer with: aSpace!

stringify: anObject space: aSpace	"Serialize anObject as a JSON string. aSpace is an optional parameter that specifies the indentation of nested structures. If it is omitted, the text will be packed without extra whitespace."	self call: 'stringify' with: anObject with: aSpace! !
!JSJson categoriesFor: #javascriptContentOn:!printing!public! !
!JSJson categoriesFor: #parse:!accessing!public! !
!JSJson categoriesFor: #parse:reviver:!accessing!public! !
!JSJson categoriesFor: #stringify:!accessing!public! !
!JSJson categoriesFor: #stringify:replacer:!accessing!public! !
!JSJson categoriesFor: #stringify:replacer:space:!accessing!public! !
!JSJson categoriesFor: #stringify:space:!accessing!public! !

