"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAEmailMessage
	instanceVariableNames: 'to from cc bcc subject headers body replyTo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEmailMessage guid: (GUID fromString: '{186651d1-703a-4863-89bb-7ffa4a873b03}')!
WAEmailMessage comment: ''!
!WAEmailMessage categoriesForClass!Seaside-Email! !
!WAEmailMessage methodsFor!

addAllTo: aCollectionOfEmailAddress	aCollectionOfEmailAddress do: [ :each |		self addTo: each ]!

addBcc: anEmailAddress	^ self bcc add: anEmailAddress!

addCc: anEmailAddress	^ self cc add: anEmailAddress!

addTo: anEmailAddress	^ self to add: anEmailAddress!

bcc	^ bcc!

body	^ body!

body: anObject	body := anObject!

cc	^ cc!

from	^ from!

from: anObject	from := anObject!

headerAt: aKeyString put: aValueString	^ self headers at: aKeyString put: aValueString!

headers	^ headers!

initialize	super initialize.	to := OrderedCollection new.	cc := OrderedCollection new.	bcc := OrderedCollection new.	headers := Dictionary new.	self 		headerAt: 'Date'		put: (GRPrinter rfc822 print: DateAndTime now)!

isMultipart	^ false!

plainMessage	^ String		streamContents: [ :stream | 			self renderAddress: self from withHeader: 'From: ' on: stream.			self to do: [ :each |				self renderAddress: each withHeader: 'To: ' on: stream ].			self cc do: [ :each |				self renderAddress: each withHeader: 'Cc: ' on: stream ].			self bcc do: [ :each |				self renderAddress: each withHeader: 'Bcc: ' on: stream ].			stream				nextPutAll: 'Subject: ';				nextPutAll: self subject;				nextPut: Character cr.			self replyTo isNil ifFalse: [				self renderAddress: self replyTo withHeader: 'Reply-To: ' on: stream ].			self headers keysAndValuesDo: [ :key :value | 				stream					nextPutAll: key greaseString;					nextPut: $:;					nextPut: Character space;					nextPutAll: value greaseString;					nextPut: Character cr ].			stream nextPut: Character cr.	"let body start"			self writeBodyOn: stream ]!

recipients	^ self to , self cc , self bcc collect: [ :each | each greaseString ]!

recipientsAddresses	^ Array streamContents: [ :stream |		self to do: [ :each |			stream nextPut: each address ].		self cc do: [ :each |			stream nextPut: each address ].		self bcc do: [ :each |			stream nextPut: each address ] ]!

renderAddress: anEmailAddress withHeader: aString on: aStream 	aStream		nextPutAll: aString;		nextPutAll: anEmailAddress greaseString;		nextPut: Character cr!

replyTo	^ replyTo!

replyTo: anEmailAddress	replyTo := anEmailAddress!

send	GRPlatform current seasideDeliverEmailMessage: self!

setStringBody: aString	self setStringBody: aString wrap: false!

setStringBody: aString wrap: aBoolean	self body: (aBoolean		ifTrue: [ WAStringEmailBody string: aString lineLength: 80 ]		ifFalse: [ WAStringEmailBody contentString: aString ])!

subject	^ subject!

subject: anObject	subject := anObject!

to	^ to!

writeBodyOn: stream	self body isNil		ifFalse: [ stream nextPutAll: self body greaseString ]! !
!WAEmailMessage categoriesFor: #addAllTo:!adding!public! !
!WAEmailMessage categoriesFor: #addBcc:!adding!public! !
!WAEmailMessage categoriesFor: #addCc:!adding!public! !
!WAEmailMessage categoriesFor: #addTo:!adding!public! !
!WAEmailMessage categoriesFor: #bcc!accessing!public! !
!WAEmailMessage categoriesFor: #body!accessing!public! !
!WAEmailMessage categoriesFor: #body:!accessing!public! !
!WAEmailMessage categoriesFor: #cc!accessing!public! !
!WAEmailMessage categoriesFor: #from!accessing!public! !
!WAEmailMessage categoriesFor: #from:!accessing!public! !
!WAEmailMessage categoriesFor: #headerAt:put:!adding!public! !
!WAEmailMessage categoriesFor: #headers!accessing!public! !
!WAEmailMessage categoriesFor: #initialize!initialization!public! !
!WAEmailMessage categoriesFor: #isMultipart!public!testing! !
!WAEmailMessage categoriesFor: #plainMessage!private! !
!WAEmailMessage categoriesFor: #recipients!private! !
!WAEmailMessage categoriesFor: #recipientsAddresses!private! !
!WAEmailMessage categoriesFor: #renderAddress:withHeader:on:!private! !
!WAEmailMessage categoriesFor: #replyTo!adding!public! !
!WAEmailMessage categoriesFor: #replyTo:!adding!public! !
!WAEmailMessage categoriesFor: #send!actions!public! !
!WAEmailMessage categoriesFor: #setStringBody:!convenience!public! !
!WAEmailMessage categoriesFor: #setStringBody:wrap:!convenience!public! !
!WAEmailMessage categoriesFor: #subject!accessing!public! !
!WAEmailMessage categoriesFor: #subject:!accessing!public! !
!WAEmailMessage categoriesFor: #to!accessing!public! !
!WAEmailMessage categoriesFor: #writeBodyOn:!private! !

!WAEmailMessage class methodsFor!

from: aFromEmailAddress to: aToEmailAddress subject: aString	^ self new		from: aFromEmailAddress;		addTo: aToEmailAddress;		subject: aString;		yourself!

from: aFromEmailAddress toAll: aCollectionOfEmailAddress subject: aString	^ self new		from: aFromEmailAddress;		addAllTo: aCollectionOfEmailAddress;		subject: aString;		yourself! !
!WAEmailMessage class categoriesFor: #from:to:subject:!instance creation!public! !
!WAEmailMessage class categoriesFor: #from:toAll:subject:!instance creation!public! !

