"Filed out from Dolphin Smalltalk 7"!

WAFormDialog subclass: #WAYesOrNoDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAYesOrNoDialog guid: (GUID fromString: '{5d507c88-a360-4394-b8b0-273623d6e6e6}')!
WAYesOrNoDialog comment: 'WAYesOrNoDialog displays a yes/no dialog. Returns boolean indicating user selection. See WAComponent>>confirm: for sample usage and easy way to use WAYesOrNoDialog.'!
!WAYesOrNoDialog categoriesForClass!Seaside-Widgets-Components! !
!WAYesOrNoDialog methodsFor!

buttons	^ #(yes no)!

no	self answer: false!

yes	self answer: true! !
!WAYesOrNoDialog categoriesFor: #buttons!accessing!public! !
!WAYesOrNoDialog categoriesFor: #no!accessing!public! !
!WAYesOrNoDialog categoriesFor: #yes!accessing!public! !

!WAYesOrNoDialog class methodsFor!

exampleComponent	^ self new! !
!WAYesOrNoDialog class categoriesFor: #exampleComponent!examples!public! !

