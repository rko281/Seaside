"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WADelayFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADelayFunctionalTest guid: (GUID fromString: '{d6d58ab1-fd57-41ca-883c-f23d37424948}')!

WADelayFunctionalTest comment: ''!

!WADelayFunctionalTest categoriesForClass!Unclassified! !

!WADelayFunctionalTest methodsFor!

go	self show: (WAComponent new		addMessage: '3 seconds';		addDecoration: (WADelayedAnswerDecoration new delay: 3);		yourself)!

renderContentOn: html	html paragraph: 'Clicking the following anchor should replace it with the message "3 seconds" for 3 seconds and then restore it.'.	html paragraph: [		html anchor			callback: [ self go ];			with: 'Start' ]! !

!WADelayFunctionalTest categoriesForMethods!
go!actions!public! !
renderContentOn:!public!rendering! !
!

