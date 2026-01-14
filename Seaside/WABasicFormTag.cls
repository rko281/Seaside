"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WABasicFormTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABasicFormTag guid: (GUID fromString: '{980df1cd-ad28-44cd-b6c7-ada7ab9ac8ac}')!

WABasicFormTag comment: 'Acts as a basic form, with no defaultAction, and no holding of _s and _c values.'!

!WABasicFormTag categoriesForClass!Seaside-Canvas-Tags! !

!WABasicFormTag methodsFor!

acceptCharset: aString 	"This attribute specifies the list of character encodings for input data that is accepted by the server processing this form. The value is a space- and/or comma-delimited list of charset values. The client must interpret this list as an exclusive-or list, i.e., the server is able to accept any single character encoding per entity received.The default value for this attribute is the reserved string 'UNKNOWN'. User agents may interpret this value as the character encoding that was used to transmit the document containing this FORM element."	self attributes 		at: 'accept-charset'		put: aString!

action: aUrlOrString	"This attribute specifies a form processing agent. User agent behavior for a value other than an HTTP URI is undefined."	self attributes 		at: 'action'		put: aUrlOrString!

defaultUrlCharset	"the character set used for POSTs that are application/x-www-form-urlencoded	and GETs	There are standards that dictate this:	http://www.w3.org/International/O-URL-code.html	but that doesn't mean is will work with your favorite old browser"	^ 'utf-8'!

get	"tells the user agent to use the HTTP GET method to submit this form"	self method: 'get'!

initialize	| charSet |	super initialize.	charSet := self requestContext charSet.	charSet isNil		ifTrue: [ self acceptCharset: self defaultUrlCharset ]		ifFalse: [ self acceptCharset: charSet ]!

method: aString 	"This attribute specifies which HTTP method will be used to submit the form data set. Possible (case-insensitive) values are 'get' (the default) and 'post'."	self attributes 		at: 'method'		put: aString!

multipart	"Sets the content type used to submit the form to the server (when the value of method is 'post') to multipart/form-data instead the default application/x-www-form-urlencoded. This should be used in combination with a WAFileUploadTag."	self attributes 		at: 'enctype'		put: 'multipart/form-data'!

multipart: aBoolean	"Sets the content type used to submit the form to the server.	true: sets the content type to multipart/form-data	false: leaves the content type to default application/x-www-form-urlencoded"	aBoolean ifTrue: [ self multipart ]!

name: aString	"This attribute names the element so that it may be referred to from style sheets or scripts. Note. This attribute has been included for backwards compatibility. Applications should use the id attribute to identify elements."	self attributes at: 'name' put: aString!

noAutocomplete	self attributes 		at: 'autocomplete'		put: 'off'!

post	"tells the user agent to use the HTTP POST method to submit this form"	self method: 'post'!

setParent: aBrush canvas: aCanvas	super setParent: aBrush canvas: aCanvas.	self post; action: aCanvas actionUrl!

tag	^ 'form'! !

!WABasicFormTag categoriesForMethods!
acceptCharset:!attributes!public! !
action:!attributes!public! !
defaultUrlCharset!private! !
get!attributes!public! !
initialize!initialization!public! !
method:!attributes!public! !
multipart!attributes!public! !
multipart:!attributes!public! !
name:!attributes!public! !
noAutocomplete!attributes!public! !
post!attributes!public! !
setParent:canvas:!initialization!public! !
tag!accessing!public! !
!

