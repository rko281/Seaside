﻿"Filed out from Dolphin Smalltalk 7"!

WAUrl subclass: #WADolphinUrl
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADolphinUrl guid: (GUID fromString: '{a9287f10-82bc-4717-b56a-1152248d1835}')!
WADolphinUrl comment: 'Subclass exists to allow decodePercent:... methods to be reimplemented.
This is to take into account Dolphin''s implementation of Utf8String construction.'!
!WADolphinUrl categoriesForClass!Seaside-Core-HTTP! !
!WADolphinUrl class methodsFor!

decodePercent: aString

decodePercent: aString from: start to: end

decodePercentAndPlus: aString from: start to: end
!WADolphinUrl class categoriesFor: #decodePercent:!decoding!public! !
!WADolphinUrl class categoriesFor: #decodePercent:from:to:!decoding!public! !
!WADolphinUrl class categoriesFor: #decodePercentAndPlus:from:to:!decoding!public! !
