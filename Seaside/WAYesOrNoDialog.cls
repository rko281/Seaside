"Filed out from Dolphin Smalltalk"!

WAFormDialog subclass: #WAYesOrNoDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAYesOrNoDialog guid: (GUID fromString: '{0a9673bc-b2f2-496b-b6ce-b4f0800515c4}')!

WAYesOrNoDialog comment: 'WAYesOrNoDialog displays a yes/no dialog. Returns boolean indicating user selection. See WAComponent>>confirm: for sample usage and easy way to use WAYesOrNoDialog.'!

!WAYesOrNoDialog categoriesForClass!Components! !

!WAYesOrNoDialog methodsFor!

buttons	^ #(yes no)!

no	self answer: false!

yes	self answer: true! !

!WAYesOrNoDialog categoriesForMethods!
buttons!accessing!public! !
no!accessing!public! !
yes!accessing!public! !
!

!WAYesOrNoDialog class methodsFor!

exampleComponent	^ self new! !

!WAYesOrNoDialog class categoriesForMethods!
exampleComponent!examples!public! !
!

