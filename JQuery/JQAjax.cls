"Filed out from Dolphin Smalltalk 7"!

JQAjaxSetup subclass: #JQAjax
	instanceVariableNames: 'callback callbackId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAjax guid: (GUID fromString: '{740e7860-4383-4dc4-b549-2f76d98ff518}')!
JQAjax comment: 'Load a remote page using an HTTP request.'!
!JQAjax categoriesForClass!JQuery-Core-Objects! !
!JQAjax methodsFor!

addParameter: anObject	"Add the request parameter anObject, a single value or an association."	self parameters add: anObject!

addParameters: aCollection	"Add multiple request parameters from aCollection."	self parameters addAll: aCollection associations!

callback: aBlock	"Register aBlock as a primary callback of the receiver. It is only possible to have a single primary callback registered per instance. The primary callback must generate a response."	self enableCallbacks.	callback := aBlock!

callback: aBlock value: anObject	"Register aBlock as a secondary callback. anObject is a reference to a Javascript object on the client-side. The object will be sent back to the server as a string and passed into aBlock. Multiple secondary callbacks can be defined with one receiver.Note: anObject should be a single literal Javascript object (String, Number, Boolean). The object is transfered from client to server as the print-string of the object and passed into the callback block as a Smalltalk String."	self enableCallbacks.	self addParameter: (self renderContext callbacks		store: (WAValueCallback on: aBlock)) 			-> anObject!

data	^ self options at: 'data' ifAbsentPut: [ JSJoin new ]!

enableCallbacks	self hasCallback ifTrue: [ ^ self ].	self url: self renderContext actionUrl withoutQuery withoutFragment.	self addParameters: self renderContext actionUrl queryFields.	self addParameter: (callbackId := self renderContext callbacks		store: (JSAjaxCallback on: [ self processCallback ]))!

fullUrl	"Answer a Seaside URL object that is composed with the parameters of the receiver. This method excludes dynamic Javascript objects that might be part of the parameters."		| url |	url := self url copy.	self parameters do: [ :each | 		(each isString)			ifTrue: [ url addField: each ].		((each isKindOf: Association) and: [ each value isJavascript not ])			ifTrue: [ url addField: each key value: each value ] ].	^ url!

hasCallback	^ callbackId notNil!

html: aRenderable	"Defines a html rendering callback."	self dataType: 'html'.	self respond: [ :response |		response			doNotCache;			contentType: self application contentType.		self render: aRenderable on: response stream ]!

isSupportedOption: aString	^ true!

javascriptUrl	"Answer a Javascript expression that evaluates to the URL with all parameters attached."	| stream |	stream := JSStream new.	stream javascript: self url.	self data collection isEmpty ifFalse: [		stream nextPutAll: '+"'.		stream nextPut: (self url queryFields isEmpty			ifTrue: [ $? ] ifFalse: [ $& ]).		stream nextPutAll: '"+'; javascript: self data ].	^ stream!

method	^ 'ajax'!

optionAt: aKey put: aValue	^ (self isSupportedOption: aKey) 		ifTrue: [ super optionAt: aKey put: aValue ]		ifFalse: [ self error: 'The option ' , aKey printString , ' is not supported in ' , self class name , '. Either use #ajaxSetup to configure default values, or the more powerful version with #ajax.' ]!

parameters	"Answer the request parameters of the reciever."		^ self data collection!

processCallback	callback isNil		ifFalse: [ callback value ]!

respond: aBlock	"Defines a response callback."	self callback: [ self requestContext respond: aBlock ]!

script: aBlock	"Defines a script rendering callback."	self dataType: 'script'.	self respond: [ :response |		response			doNotCache; 			contentType: (WAMimeType textJavascript				charset: self requestContext handler charSet).		self script: aBlock on: response stream ]!

serialize: aQuery	"Serializes a set of input elements matching aQuery and trigger the associated Seaside callbacks."	self enableCallbacks.	self addParameter: aQuery serialize!

serializeChildren	"Serialize all input fields contained in the receiving element."		self serializeChildren: self jQuery this!

serializeChildren: aQuery	"Serialize all input fields being children of aQuery."	self serialize: (aQuery find: ':input')!

serializeFileUpload: aQuery	"Upload the file in the field identified by aQuery using FormData. Cannot be composed with any other callback."		self		data:			((((JSStream on: 'var formdata = new FormData()'),			 ((aQuery copy attributeAt: 'name') assignLocalTo: 'name'),			 (((aQuery property: 0) access: 'files') assignLocalTo: 'files'),			 (JSStream on:'for(i=0;i<files.length;i++) formdata.append(name,files[i])'),			 (JSStream on: 'return formdata')) asFunction) apply: #());		url: self renderContext actionUrl;		type: 'POST';		cache: false;		processData: false;		contentType: false!

serializeForm	"Serialize all input fields of the form the receiving element is contained in."	self serializeForm: self jQuery this!

serializeForm: aQuery	"Serialize all input fields of the form matching aQuery."	self serializeChildren: (aQuery closest: 'form')!

serializeThis	"Serialize the receiving element. Note that this might not work for all form elements: (1) for check-boxes and multi-select lists Seaside internally depends on an additional hidden form element that is generated automatically, instead use #serializeThisWithHidden (2) submit-button callbacks are ignored, instead use a normal callback to trigger specific code evaluation."	self serialize: self jQuery this!

serializeThisWithHidden	"Serialize the receiving form element and a following hidden form element. This is required in case of a check-box or multi-select list."		self serialize: (self jQuery this		next: 'input:hidden';		addBack)!

serializeWithHidden: aQuery	"Serialize the receiving form element and a following hidden form element. This is required in case of a check-box or multi-select list."		self serialize: (aQuery		next: 'input:hidden';		addBack)!

text: aBlock	"Defines a text rendering callback."	self dataType: 'text'.	self respond: [ :response |		response			doNotCache;			contentType: (WAMimeType textPlain 				charset: self requestContext handler charSet).		aBlock value: response stream ]!

url	^ self options at: 'url' ifAbsentPut: [ WAUrl new ]! !
!JQAjax categoriesFor: #addParameter:!parameters!public! !
!JQAjax categoriesFor: #addParameters:!parameters!public! !
!JQAjax categoriesFor: #callback:!callbacks!public! !
!JQAjax categoriesFor: #callback:value:!callbacks!public! !
!JQAjax categoriesFor: #data!accessing!public! !
!JQAjax categoriesFor: #enableCallbacks!private! !
!JQAjax categoriesFor: #fullUrl!accessing/urls!public! !
!JQAjax categoriesFor: #hasCallback!private! !
!JQAjax categoriesFor: #html:!callbacks!public! !
!JQAjax categoriesFor: #isSupportedOption:!options!public! !
!JQAjax categoriesFor: #javascriptUrl!accessing/urls!public! !
!JQAjax categoriesFor: #method!accessing!public! !
!JQAjax categoriesFor: #optionAt:put:!options!public! !
!JQAjax categoriesFor: #parameters!parameters!public! !
!JQAjax categoriesFor: #processCallback!private! !
!JQAjax categoriesFor: #respond:!callbacks!public! !
!JQAjax categoriesFor: #script:!callbacks!public! !
!JQAjax categoriesFor: #serialize:!convenience!public! !
!JQAjax categoriesFor: #serializeChildren!convenience!public! !
!JQAjax categoriesFor: #serializeChildren:!convenience!public! !
!JQAjax categoriesFor: #serializeFileUpload:!convenience!public! !
!JQAjax categoriesFor: #serializeForm!convenience!public! !
!JQAjax categoriesFor: #serializeForm:!convenience!public! !
!JQAjax categoriesFor: #serializeThis!convenience!public! !
!JQAjax categoriesFor: #serializeThisWithHidden!convenience!public! !
!JQAjax categoriesFor: #serializeWithHidden:!convenience!public! !
!JQAjax categoriesFor: #text:!callbacks!public! !
!JQAjax categoriesFor: #url!accessing!public! !

