"Filed out from Dolphin Smalltalk"!

WAFormDialog subclass: #WAChoiceDialog
	instanceVariableNames: 'options selection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAChoiceDialog guid: (GUID fromString: '{1e264cb0-39bf-45b5-a1d9-b75b0b414360}')!

WAChoiceDialog comment: 'WAChoiceDialog produces a form with select tag (dropdown menu) on a collection of options and "Ok" and "Cancel" buttons. Options can be any object. Returns actual object selected or nil if user select "Cancel". WAChoiceDialog is used to implement the chooseFrom:caption: convenience method in WAComponent.	| selection |	selection := WAChoiceDialog options: #(''Smalltalk'' ''Perl'' ''Python'' ''Ruby'' 9).	result := self call: selection.	self inform: result printStringInstance Variables:	options	<Collection of Objects> objects in list	selection	<Object>	object selected by user or nil if user cancels'!

!WAChoiceDialog categoriesForClass!Components! !

!WAChoiceDialog methodsFor!

buttons	^ #(ok cancel)!

cancel	self answer: nil!

ok	self answer: self selection!

options	^ options!

options: aCollection	options := aCollection!

renderContentOn: html	html select		list: self options;		selected: self selection;		callback: [ :value | self selection: value ]!

selection	^ selection!

selection: anObject	selection := anObject! !

!WAChoiceDialog categoriesForMethods!
buttons!accessing!public! !
cancel!actions!public! !
ok!actions!public! !
options!accessing!public! !
options:!accessing!public! !
renderContentOn:!public!rendering! !
selection!accessing!public! !
selection:!accessing!public! !
!

!WAChoiceDialog class methodsFor!

exampleComponent	^ self options: #('Perl' 'Python' 'Ruby' 'Smalltalk') selection: 'Smalltalk'!

options: aCollection	^ self options: aCollection selection: nil!

options: aCollection selection: anObject	^ self new		options: aCollection;		selection: anObject;		yourself! !

!WAChoiceDialog class categoriesForMethods!
exampleComponent!examples!public! !
options:!instance creation!public! !
options:selection:!instance creation!public! !
!

