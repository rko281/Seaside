"Filed out from Dolphin Smalltalk"!

WAWidgetDecoration subclass: #WADelayedAnswerDecoration
	instanceVariableNames: 'delay'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADelayedAnswerDecoration guid: (GUID fromString: '{859a5e85-f35a-4b7e-95a4-15bbda7bcad9}')!

WADelayedAnswerDecoration comment: 'WADelayedAnswerDecoration adds a delay in displaying a component. See WADelayFunctionalTest for sample usage.Select ''Delay" tab of the Functional Seaside Test Suite to run an example  (http://127.0.0.1:xxxx/tests/functional/WADelayFunctionalTest)Instance Variables:	delay	<Integer>	delay length in seconds '!

!WADelayedAnswerDecoration categoriesForClass!Seaside-Widgets-Decorations! !

!WADelayedAnswerDecoration methodsFor!

delay	^ delay ifNil: [ 1 ]!

delay: aNumber	delay := aNumber!

updateRoot: anHtmlRoot 	| url |	super updateRoot: anHtmlRoot.	url := anHtmlRoot context actionUrl withField:				(anHtmlRoot context callbacks store:					(WAActionCallback on: [ self decoratedComponent answer ])).	anHtmlRoot meta 		redirectAfter: self delay		to: url greaseString! !

!WADelayedAnswerDecoration categoriesForMethods!
delay!accessing!public! !
delay:!accessing!public! !
updateRoot:!public!updating! !
!

