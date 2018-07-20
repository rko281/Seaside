"Filed out from Dolphin Smalltalk 7"!

JQuery subclass: #JQueryClass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQueryClass guid: (GUID fromString: '{0107999d-ea8c-4243-ae02-07367642df67}')!
JQueryClass comment: ''!
!JQueryClass categoriesForClass!JQuery-Core-Objects! !
!JQueryClass methodsFor!

ajax	"Perform an asynchronous HTTP (Ajax) request."		^ self create: JQAjax!

ajaxSetup	"Set default values for future Ajax requests."	^ self create: JQAjaxSetup!

all	"Answer a jQuery object that matches all DOM elements."		^ self expression: '*'!

class: aString 	"Answer a jQuery that matches all DOM elements with the CLASS aString."	^ self expression: '.' , aString greaseString!

contains: anObject in: aContainer	"Check to see if a DOM node is within another DOM node."		self call: 'contains' with: aContainer with: anObject!

document	"Answer a jQuery object with the document DOM element."		^ self expression: (JSStream on: 'document')!

error: aString	"Takes a string and throws an exception containing it."		self call: 'error' with: aString!

event	"Create a new jQuery.Event to be used in an event handler."	^ JQEvent context: self renderContext!

event: aString	"Create a new jQuery.Event object without the new operator."	^ self event alias: (self call: 'Event' with: aString) greaseString!

expression: aString	"This function accepts a string containing a CSS selector which is then used to match a set of elements."	^ self expression: aString context: nil!

expression: aString context: anObject	"This function accepts a string containing a CSS selector which is then used to match a set of elements."		^ (JQueryInstance		context: self renderContext		constructor: (anObject isNil			ifTrue: [ Array with: aString ]			ifFalse: [ Array with: aString with: anObject ]))				rendererClass: self rendererClass;				yourself!

get	"Load a remote page using an HTTP GET request."		^ self create: JQGet!

getJson	"Load JSON data using an HTTP GET request."		^ self create: JQGetJson!

getScript	"Loads, and executes, a local JavaScript file using an HTTP GET request."		^ self create: JQGetScript!

holdReady: aBoolean	"Holds or releases the execution of jQuery's ready event."		self call: 'holdReady' with: aBoolean!

html: aRenderable	"Create DOM elements on-the-fly from the provided String of raw HTML."	^ self expression: (self render: aRenderable)!

id: aString 	"Answer a jQuery with a single DOM element identified by the ID aString."	^ self expression: '#' , aString greaseString!

isEmptyObject: anObject	"Check to see if an object is empty (contains no properties)."		self call: 'isEmptyObject' with: anObject!

isPlainObject: anObject	"Check to see if an object is a plain object (created using {} or new Object)."		self call: 'isPlainObject' with: anObject!

isWindow: anObject	"Determine whether the argument is a window."		self call: 'isWindow' with: anObject!

new	"Wrap jQuery functionality around this DOM Element."	^ self expression: JSStream this!

noop	"An empty function."		self access: 'noop'!

parseJSON: aString	"Takes a well-formed JSON string and returns the resulting JavaScript object."		self call: 'parseJSON' with: aString!

post	"Load a remote page using an HTTP POST request."		^ self create: JQPost!

ready: anObject	"Binds a function to be executed whenever the DOM is ready to be traversed and manipulated. Note: Do not combine the jQuery ready-function and the Seaside mechanism (WAHtmlDocument>>#addLoadScript:) to add load-scripts. The queues of these two mechanisms are independent and conflict with each other. The execution order of the scripts is undefined. Preferably use the mechanism of Seaside: it transfers less bytes over the network and reliably works for full requests and AJAX callbacks."	^ self expression: anObject asFunction!

support	"A collection of properties that represent the presence of different browser features or bugs."		self access: 'support'!

this	"Answer a jQuery object of the receiving DOM element."		^ self new!

type: anObject	"Determine the internal JavaScript [[Class]] of an object."		self call: 'type' with: anObject!

unique: anArray	"Create a copy of an array of DOM elements with the duplicates removed. Note that this only works on arrays of DOM elements, not strings or numbers."		self call: 'unique' with: anArray!

with: anObject	"Convenience method that answers a jQuery (instance) object. Pass it a symbol to reference an DOM id, a block to render new HTML nodes, a javascript object to be run at load time or a string to be used as a CSS query."		anObject isNil		ifTrue: [ ^ self new ].	anObject isSymbol		ifTrue: [ ^ self id: anObject ].	anObject isBlock		ifTrue: [ ^ self html: anObject ].	anObject isJavascript		ifTrue: [ ^ self ready: anObject ].	^ self expression: anObject! !
!JQueryClass categoriesFor: #ajax!ajax!public! !
!JQueryClass categoriesFor: #ajaxSetup!ajax!public! !
!JQueryClass categoriesFor: #all!convenience!public! !
!JQueryClass categoriesFor: #class:!convenience!public! !
!JQueryClass categoriesFor: #contains:in:!public!utilities! !
!JQueryClass categoriesFor: #document!convenience!public! !
!JQueryClass categoriesFor: #error:!public!utilities! !
!JQueryClass categoriesFor: #event!creation!public! !
!JQueryClass categoriesFor: #event:!creation!public! !
!JQueryClass categoriesFor: #expression:!creation!public! !
!JQueryClass categoriesFor: #expression:context:!creation!public! !
!JQueryClass categoriesFor: #get!ajax!public! !
!JQueryClass categoriesFor: #getJson!ajax!public! !
!JQueryClass categoriesFor: #getScript!ajax!public! !
!JQueryClass categoriesFor: #holdReady:!public!utilities! !
!JQueryClass categoriesFor: #html:!creation!public! !
!JQueryClass categoriesFor: #id:!convenience!public! !
!JQueryClass categoriesFor: #isEmptyObject:!public!utilities! !
!JQueryClass categoriesFor: #isPlainObject:!public!utilities! !
!JQueryClass categoriesFor: #isWindow:!public!utilities! !
!JQueryClass categoriesFor: #new!creation!public! !
!JQueryClass categoriesFor: #noop!accessing!public! !
!JQueryClass categoriesFor: #parseJSON:!public!utilities! !
!JQueryClass categoriesFor: #post!ajax!public! !
!JQueryClass categoriesFor: #ready:!creation!public! !
!JQueryClass categoriesFor: #support!agent!public! !
!JQueryClass categoriesFor: #this!convenience!public! !
!JQueryClass categoriesFor: #type:!public!utilities! !
!JQueryClass categoriesFor: #unique:!public!utilities! !
!JQueryClass categoriesFor: #with:!convenience!public! !

