"Filed out from Dolphin Smalltalk 7"!

WAFormDialog subclass: #WAChoiceDialog
	instanceVariableNames: 'options selection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAChoiceDialog guid: (GUID fromString: '{5d5aba8c-7017-46ca-8b83-a0859e7447bc}')!
WAChoiceDialog comment: 'WAChoiceDialog produces a form with select tag (dropdown menu) on a collection of options and "Ok" and "Cancel" buttons. Options can be any object. Returns actual object selected or nil if user select "Cancel". WAChoiceDialog is used to implement the chooseFrom:caption: convenience method in WAComponent.	| selection |	selection := WAChoiceDialog options: #(''Smalltalk'' ''Perl'' ''Python'' ''Ruby'' 9).	result := self call: selection.	self inform: result printStringInstance Variables:	options	<Collection of Objects> objects in list	selection	<Object>	object selected by user or nil if user cancels'!
!WAChoiceDialog categoriesForClass!Seaside-Widgets-Components! !
!WAChoiceDialog methodsFor!

buttons	^ #(ok cancel)!

cancel	self answer: nil!

ok	self answer: self selection!

options	^ options!

options: aCollection	options := aCollection!

renderContentOn: html	html select		list: self options;		selected: self selection;		callback: [ :value | self selection: value ]!

selection	^ selection!

selection: anObject	selection := anObject! !
!WAChoiceDialog categoriesFor: #buttons!accessing!public! !
!WAChoiceDialog categoriesFor: #cancel!actions!public! !
!WAChoiceDialog categoriesFor: #ok!actions!public! !
!WAChoiceDialog categoriesFor: #options!accessing!public! !
!WAChoiceDialog categoriesFor: #options:!accessing!public! !
!WAChoiceDialog categoriesFor: #renderContentOn:!public!rendering! !
!WAChoiceDialog categoriesFor: #selection!accessing!public! !
!WAChoiceDialog categoriesFor: #selection:!accessing!public! !

!WAChoiceDialog class methodsFor!

exampleComponent	^ self options: #('Perl' 'Python' 'Ruby' 'Smalltalk') selection: 'Smalltalk'!

options: aCollection	^ self options: aCollection selection: nil!

options: aCollection selection: anObject	^ self new		options: aCollection;		selection: anObject;		yourself		! !
!WAChoiceDialog class categoriesFor: #exampleComponent!examples!public! !
!WAChoiceDialog class categoriesFor: #options:!instance creation!public! !
!WAChoiceDialog class categoriesFor: #options:selection:!instance creation!public! !

