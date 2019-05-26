"Filed out from Dolphin Smalltalk 7"!

WAEmailMessage subclass: #WAMultiPartEmailMessage
	instanceVariableNames: 'parts boundary'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMultiPartEmailMessage guid: (GUID fromString: '{28553805-3737-4bef-83f0-3f12e7ff5ccc}')!
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
!WAMultiPartEmailMessage categoriesFor: #addPart:!public! !
!WAMultiPartEmailMessage categoriesFor: #boundary!accessing!public! !
!WAMultiPartEmailMessage categoriesFor: #initialize!initialization!public! !
!WAMultiPartEmailMessage categoriesFor: #isMultipart!public!testing! !
!WAMultiPartEmailMessage categoriesFor: #parts!accessing!public! !
!WAMultiPartEmailMessage categoriesFor: #setHtmlBody:!accessing!public! !
!WAMultiPartEmailMessage categoriesFor: #setStringBody:wrap:!accessing!public! !
!WAMultiPartEmailMessage categoriesFor: #writeBodyOn:!public!writing! !
!WAMultiPartEmailMessage categoriesFor: #writeEndBoundaryOn:!public!writing! !
!WAMultiPartEmailMessage categoriesFor: #writeMiddleBoundaryOn:!public!writing! !

!WAMultiPartEmailMessage class methodsFor!

newBoundary	^ String		streamContents: [ :s | 			s nextPutAll: 'SeasideEmail'.			s nextPutAll: (10000 to: 999999) atRandom greaseString ]! !
!WAMultiPartEmailMessage class categoriesFor: #newBoundary!private! !

