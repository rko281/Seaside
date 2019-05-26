"Filed out from Dolphin Smalltalk 7"!

WARoot subclass: #WAXmlRoot
	instanceVariableNames: 'charSet'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAXmlRoot guid: (GUID fromString: '{990444c3-b6ed-4f7e-b2ba-662ba5ab1213}')!
WAXmlRoot comment: ''!
!WAXmlRoot categoriesForClass!Seaside-Core-Document! !
!WAXmlRoot methodsFor!

charSet	^ charSet ifNil: [ charSet := self class defaultCharSet ]!

charSet: aString	charSet := aString!

openOn: aDocument	super openOn: aDocument.	self writePreambleOn: aDocument!

writePreambleOn: aDocument	aDocument nextPutAll: '<?xml version="1.0" encoding="'; nextPutAll: self charSet; nextPutAll: '"?>'! !
!WAXmlRoot categoriesFor: #charSet!accessing!public! !
!WAXmlRoot categoriesFor: #charSet:!accessing!public! !
!WAXmlRoot categoriesFor: #openOn:!public!writing! !
!WAXmlRoot categoriesFor: #writePreambleOn:!public!writing! !

!WAXmlRoot class methodsFor!

defaultCharSet	^ 'UTF-8'! !
!WAXmlRoot class categoriesFor: #defaultCharSet!accessing!public! !

