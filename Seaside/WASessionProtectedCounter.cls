"Filed out from Dolphin Smalltalk 7"!

WAExampleComponent subclass: #WASessionProtectedCounter
	instanceVariableNames: 'counter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASessionProtectedCounter guid: (GUID fromString: '{8e338a9d-bc3b-450e-8594-8b6d42d17987}')!
WASessionProtectedCounter comment: 'A counter that is protected by WASessionCookieProtectionFilter.'!
!WASessionProtectedCounter categoriesForClass!Seaside-Examples-Misc! !
!WASessionProtectedCounter methodsFor!

initialize	super initialize.	counter := WACounter new!

renderContentOn: html	counter renderOn: html.	html paragraph: 'I am the Counter example using WASessionCookieProtectionFilter so you cannot copy/paste the url in another browser to hijack my session. See the class comment of WASessionCookieProtectionFilter for more information.'! !
!WASessionProtectedCounter categoriesFor: #initialize!initialization!public! !
!WASessionProtectedCounter categoriesFor: #renderContentOn:!public!rendering! !

!WASessionProtectedCounter class methodsFor!

handlerName	^ 'examples/sessionprotected-counter'!

initialize	| app |	app := WAAdmin register: self asApplicationAt: self handlerName.	app sessionClass: WASessionCookieProtectedSession! !
!WASessionProtectedCounter class categoriesFor: #handlerName!accessing!public! !
!WASessionProtectedCounter class categoriesFor: #initialize!initialization!public! !

