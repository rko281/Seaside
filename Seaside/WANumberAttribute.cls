"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WANumberAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANumberAttribute guid: (GUID fromString: '{6f754c67-f266-4a2f-b944-977d8f67f82d}')!
WANumberAttribute comment: 'WANumberAttribute represents a number attribute. It converts between text entered on the configuration page and numbers.'!
!WANumberAttribute categoriesForClass!Seaside-Core-Configuration! !
!WANumberAttribute methodsFor!

accept: aVisitor	aVisitor visitNumberAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ Number readFrom: aString readStream ]! !
!WANumberAttribute categoriesFor: #accept:!public!visiting! !
!WANumberAttribute categoriesFor: #valueFromString:!converting!public! !

