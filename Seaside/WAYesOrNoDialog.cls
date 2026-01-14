"Filed out from Dolphin Smalltalk"!

WAFormDialog subclass: #WAYesOrNoDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAYesOrNoDialog guid: (GUID fromString: '{88b5a0fb-ae4a-4473-afe3-796e0fc972ff}')!

WAYesOrNoDialog comment: 'WAYesOrNoDialog displays a yes/no dialog. Returns boolean indicating user selection. See WAComponent>>confirm: for sample usage and easy way to use WAYesOrNoDialog.'!

!WAYesOrNoDialog categoriesForClass!Seaside-Widgets-Components! !

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

