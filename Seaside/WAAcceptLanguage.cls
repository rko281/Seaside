"Filed out from Dolphin Smalltalk"!

WAQualifiedValue subclass: #WAAcceptLanguage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAcceptLanguage guid: (GUID fromString: '{7eb0d081-a088-47c6-837f-91cc4081302b}')!

WAAcceptLanguage comment: 'A WAAcceptLanguage is a WAQualifiedValue with a value that is an instance of WALocale. It represents how much a user agent prefers a certain locale.'!

!WAAcceptLanguage categoriesForClass!HTTP! !

!WAAcceptLanguage class methodsFor!

valueClass	^ WALocale! !

!WAAcceptLanguage class categoriesForMethods!
valueClass!private! !
!

