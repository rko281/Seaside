"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WANavigation
	instanceVariableNames: 'selection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANavigation guid: (GUID fromString: '{ec665fda-8914-4d76-a8ee-f4cb61d9a2a7}')!
WANavigation comment: ''!
!WANavigation categoriesForClass!Seaside-Widgets-Components! !
!WANavigation methodsFor!

initialize	super initialize.	selection := WAValueHolder new!

labelForOption: anObject 	^ anObject greaseString!

options	^ #()!

renderContentOn: html	html div class: 'kalsey'; with: [		html div			class: 'navigation-options';			with: [ self renderOptionsOn: html ].		html div			class: 'navigation-content';			with: [ self renderSelectionOn: html ] ]!

renderOptionsOn: html	html unorderedList		list: self options;		selected: self selection;		callback: [ :value | self select: value ];		labels: [ :each | self labelForOption: each ]!

renderSelectionOn: html!

select: anObject	selection contents: anObject.	self selectionChanged!

selection	^ selection contents!

selectionChanged!

states	^ Array with: selection! !
!WANavigation categoriesFor: #initialize!initialization!public! !
!WANavigation categoriesFor: #labelForOption:!public!query! !
!WANavigation categoriesFor: #options!accessing!public! !
!WANavigation categoriesFor: #renderContentOn:!public!rendering! !
!WANavigation categoriesFor: #renderOptionsOn:!public!rendering! !
!WANavigation categoriesFor: #renderSelectionOn:!public!rendering! !
!WANavigation categoriesFor: #select:!public!selection! !
!WANavigation categoriesFor: #selection!public!selection! !
!WANavigation categoriesFor: #selectionChanged!public!selection! !
!WANavigation categoriesFor: #states!hooks!public! !

