"Filed out from Dolphin Smalltalk 7"!

WARoot subclass: #WAXmlRoot
	instanceVariableNames: 'charSet'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAXmlRoot guid: (GUID fromString: '{0dc5b7fe-3f22-4e32-b8dd-0542ab783fcc}')!
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

