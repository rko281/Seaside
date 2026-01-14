"Filed out from Dolphin Smalltalk"!

WAEmailMessage subclass: #WAMultiPartEmailMessage
	instanceVariableNames: 'parts boundary'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMultiPartEmailMessage guid: (GUID fromString: '{15cb5c7f-8b00-4efe-b5e2-48c26d5f4614}')!

WAMultiPartEmailMessage comment: 'I am a  multi part email message.'!

!WAMultiPartEmailMessage categoriesForClass!Seaside-Email-Base! !

!WAMultiPartEmailMessage methodsFor!

addPart: aWAEmailBody	self parts add: aWAEmailBody!

boundary	^ boundary!

initialize	| mimeParameters |	super initialize.	boundary := self class newBoundary.	mimeParameters := Dictionary new.	mimeParameters at: 'boundary' put: boundary.	self headerAt: 'Content-Type' put: (WAMimeType main: 'multipart' sub: 'alternative' parameters: mimeParameters)!

isMultipart	^ true!

parts	^ parts ifNil: [ parts := Set new ]!

setHtmlBody: aBlock	"block should be in the form of a [:h | h render: 'hello world']"	self addPart: (WAHtmlEmailBody renderingBlock: aBlock)!

setStringBody: aString wrap: aBoolean	self		addPart:			(aBoolean				ifTrue: [ WAStringEmailBody string: aString lineLength: 80 ]				ifFalse: [ WAStringEmailBody contentString: aString ])!

writeBodyOn: stream	self parts asArray sort		do: [ :eachPart | 			self writeMiddleBoundaryOn: stream.			eachPart writeOn: stream ].	self writeEndBoundaryOn: stream!

writeEndBoundaryOn: stream	stream		nextPut: Character cr;		nextPutAll: '--';		nextPutAll: self boundary;		nextPutAll: '--';		nextPut: Character cr!

writeMiddleBoundaryOn: stream	stream		nextPut: Character cr;		nextPutAll: '--';		nextPutAll: self boundary;		nextPut: Character cr! !

!WAMultiPartEmailMessage categoriesForMethods!
addPart:!public! !
boundary!accessing!public! !
initialize!initialization!public! !
isMultipart!public!testing! !
parts!accessing!public! !
setHtmlBody:!accessing!public! !
setStringBody:wrap:!accessing!public! !
writeBodyOn:!public!writing! !
writeEndBoundaryOn:!public!writing! !
writeMiddleBoundaryOn:!public!writing! !
!

!WAMultiPartEmailMessage class methodsFor!

newBoundary	^ String		streamContents: [ :s | 			s nextPutAll: 'SeasideEmail'.			s nextPutAll: (10000 to: 999999) atRandom greaseString ]! !

!WAMultiPartEmailMessage class categoriesForMethods!
newBoundary!private! !
!

