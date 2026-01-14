"Filed out from Dolphin Smalltalk"!

WAExampleComponent subclass: #WASessionProtectedCounter
	instanceVariableNames: 'counter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASessionProtectedCounter guid: (GUID fromString: '{916b89c8-7ff4-484b-9f86-6a807d0c50b7}')!

WASessionProtectedCounter comment: 'A counter that is protected by WASessionCookieProtectionFilter.'!

!WASessionProtectedCounter categoriesForClass!Seaside-Examples-Misc! !

!WASessionProtectedCounter methodsFor!

initialize	super initialize.	counter := WACounter new!

renderContentOn: html	counter renderOn: html.	html paragraph: 'I am the Counter example using WASessionCookieProtectionFilter so you cannot copy/paste the url in another browser to hijack my session. See the class comment of WASessionCookieProtectionFilter for more information.'! !

!WASessionProtectedCounter categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!public!rendering! !
!

!WASessionProtectedCounter class methodsFor!

handlerName	^ 'examples/sessionprotected-counter'!

initialize	| app |	app := WAAdmin register: self asApplicationAt: self handlerName.	app sessionClass: WASessionCookieProtectedSession! !

!WASessionProtectedCounter class categoriesForMethods!
handlerName!accessing!public! !
initialize!initialization!public! !
!

