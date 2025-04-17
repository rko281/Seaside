"Filed out from Dolphin Smalltalk"!

JQuery subclass: #JQueryClass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQueryClass guid: (GUID fromString: '{f74565e5-d92b-4f38-9db8-f6a0c54561cc}')!

JQueryClass comment: ''!

!JQueryClass categoriesForClass!Objects! !

!JQueryClass methodsFor!

ajax	"Perform an asynchronous HTTP (Ajax) request."		^ self create: JQAjax!

ajaxSetup	"Set default values for future Ajax requests."	^ self create: JQAjaxSetup!

all	"Answer a jQuery object that matches all DOM elements."		^ self expression: '*'!

class: aString 	"Answer a jQuery that matches all DOM elements with the CLASS aString."	^ self expression: '.' , aString greaseString!

contains: anObject in: aContainer	"Check to see if a DOM node is within another DOM node."		self call: 'contains' with: aContainer with: anObject!

document	"Answer a jQuery object with the document DOM element."		^ self expression: (JSStream on: 'document')!

error: aString	"Takes a string and throws an exception containing it."		self call: 'error' with: aString!

escapeSelector: aString	"Escapes any character that has a special meaning in a CSS selector."		self call: 'escapeSelector' with: aString!

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

parseJSON: aString	"Takes a well-formed JSON string and returns the resulting JavaScript object."	self 		greaseDeprecatedApi: 'JQueryClass>>#parseJSON'		details: 'See https://jquery.com/upgrade-guide/3.0/#deprecated-jquery-parsejson'.		self call: 'parseJSON' with: aString!

post	"Load a remote page using an HTTP POST request."		^ self create: JQPost!

ready: anObject	"Binds a function to be executed whenever the DOM is ready to be traversed and manipulated. Note: Do not combine the jQuery ready-function and the Seaside mechanism (WAHtmlDocument>>#addLoadScript:) to add load-scripts. The queues of these two mechanisms are independent and conflict with each other. The execution order of the scripts is undefined. Preferably use the mechanism of Seaside: it transfers less bytes over the network and reliably works for full requests and AJAX callbacks."	^ self expression: anObject asFunction!

support	"A collection of properties that represent the presence of different browser features or bugs."		self access: 'support'!

this	"Answer a jQuery object of the receiving DOM element."		^ self new!

type: anObject	"Determine the internal JavaScript [[Class]] of an object."		self call: 'type' with: anObject!

unique: anArray	"Create a copy of an array of DOM elements with the duplicates removed. Note that this only works on arrays of DOM elements, not strings or numbers."		self call: 'unique' with: anArray!

uniqueSort: anArray	"Create a copy of an array of DOM elements with the duplicates removed. Note that this only works on arrays of DOM elements, not strings or numbers."		self call: 'uniqueSort' with: anArray!

with: anObject	"Convenience method that answers a jQuery (instance) object. Pass it a symbol to reference an DOM id, a block to render new HTML nodes, a javascript object to be run at load time or a string to be used as a CSS query."		anObject isNil		ifTrue: [ ^ self new ].	anObject isSymbol		ifTrue: [ ^ self id: anObject ].	anObject isBlock		ifTrue: [ ^ self html: anObject ].	anObject isJavascript		ifTrue: [ ^ self ready: anObject ].	^ self expression: anObject! !

!JQueryClass categoriesForMethods!
ajax!ajax!public! !
ajaxSetup!ajax!public! !
all!convenience!public! !
class:!convenience!public! !
contains:in:!public!utilities! !
document!convenience!public! !
error:!public!utilities! !
escapeSelector:!public!utilities! !
event!creation!public! !
event:!creation!public! !
expression:!creation!public! !
expression:context:!creation!public! !
get!ajax!public! !
getJson!ajax!public! !
getScript!ajax!public! !
holdReady:!public!utilities! !
html:!creation!public! !
id:!convenience!public! !
isEmptyObject:!public!utilities! !
isPlainObject:!public!utilities! !
isWindow:!public!utilities! !
new!creation!public! !
noop!accessing!public! !
parseJSON:!public!utilities! !
post!ajax!public! !
ready:!creation!public! !
support!agent!public! !
this!convenience!public! !
type:!public!utilities! !
unique:!public!utilities! !
uniqueSort:!public!utilities! !
with:!convenience!public! !
!

