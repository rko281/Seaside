"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WADelayFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADelayFunctionalTest guid: (GUID fromString: '{918f728e-3343-4801-975d-5a39cca33aeb}')!
WADelayFunctionalTest comment: ''!
!WADelayFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WADelayFunctionalTest methodsFor!

go	self show: (WAComponent new		addMessage: '3 seconds';		addDecoration: (WADelayedAnswerDecoration new delay: 3);		yourself)!

renderContentOn: html	html paragraph: 'Clicking the following anchor should replace it with the message "3 seconds" for 3 seconds and then restore it.'.	html paragraph: [		html anchor			callback: [ self go ];			with: 'Start' ]! !
!WADelayFunctionalTest categoriesFor: #go!actions!public! !
!WADelayFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !

