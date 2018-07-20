﻿"Filed out from Dolphin Smalltalk 7"!

WAEmailMessage subclass: #WAMultiPartEmailMessage
	instanceVariableNames: 'parts boundary'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMultiPartEmailMessage guid: (GUID fromString: '{4c1ac7b4-3f87-4ead-9af2-11b191f5c93c}')!
WAMultiPartEmailMessage comment: ''!
!WAMultiPartEmailMessage categoriesForClass!Seaside-Email! !
!WAMultiPartEmailMessage methodsFor!

addPart: aWAEmailBody

boundary

initialize

isMultipart

parts

setHtmlBody: aBlock

setStringBody: aString wrap: aBoolean

writeBodyOn: stream

writeEndBoundaryOn: stream

writeMiddleBoundaryOn: stream
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

newBoundary
!WAMultiPartEmailMessage class categoriesFor: #newBoundary!private! !
