"Filed out from Dolphin Smalltalk 7"!

WAQualifiedValue subclass: #WAAcceptLanguage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAcceptLanguage guid: (GUID fromString: '{657e40f9-9335-49a2-b288-0d785ebc92dd}')!
WAAcceptLanguage comment: 'A WAAcceptLanguage is a WAQualifiedValue with a value that is an instance of WALocale. It represents how much a user agent prefers a certain locale.'!
!WAAcceptLanguage categoriesForClass!Seaside-Core-HTTP! !
!WAAcceptLanguage class methodsFor!

valueClass	^ WALocale! !
!WAAcceptLanguage class categoriesFor: #valueClass!private! !

