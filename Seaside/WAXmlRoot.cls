"Filed out from Dolphin Smalltalk"!

WARoot subclass: #WAXmlRoot
	instanceVariableNames: 'charSet'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAXmlRoot guid: (GUID fromString: '{f8d3b6cb-d264-47bc-93e9-d857f657f427}')!

WAXmlRoot comment: ''!

!WAXmlRoot categoriesForClass!Seaside-Core-Document! !

!WAXmlRoot methodsFor!

charSet	^ charSet ifNil: [ charSet := self class defaultCharSet ]!

charSet: aString	charSet := aString!

openOn: aDocument	super openOn: aDocument.	self writePreambleOn: aDocument!

writePreambleOn: aDocument	aDocument nextPutAll: '<?xml version="1.0" encoding="'; nextPutAll: self charSet; nextPutAll: '"?>'! !

!WAXmlRoot categoriesForMethods!
charSet!accessing!public! !
charSet:!accessing!public! !
openOn:!public!writing! !
writePreambleOn:!public!writing! !
!

!WAXmlRoot class methodsFor!

defaultCharSet	^ 'UTF-8'! !

!WAXmlRoot class categoriesForMethods!
defaultCharSet!accessing!public! !
!

