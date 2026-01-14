"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WADelayFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADelayFunctionalTest guid: (GUID fromString: '{c25c3f27-d744-454c-b0d4-51b10dce3dca}')!

WADelayFunctionalTest comment: ''!

!WADelayFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WADelayFunctionalTest methodsFor!

go	self show: (WAComponent new		addMessage: '3 seconds';		addDecoration: (WADelayedAnswerDecoration new delay: 3);		yourself)!

renderContentOn: html	html paragraph: 'Clicking the following anchor should replace it with the message "3 seconds" for 3 seconds and then restore it.'.	html paragraph: [		html anchor			callback: [ self go ];			with: 'Start' ]! !

!WADelayFunctionalTest categoriesForMethods!
go!actions!public! !
renderContentOn:!public!rendering! !
!

