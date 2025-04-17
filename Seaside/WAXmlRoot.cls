"Filed out from Dolphin Smalltalk"!

WARoot subclass: #WAXmlRoot
	instanceVariableNames: 'charSet'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAXmlRoot guid: (GUID fromString: '{040108c3-d8e9-4690-89fb-58ccf30ef52d}')!

WAXmlRoot comment: ''!

!WAXmlRoot categoriesForClass!Document! !

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

