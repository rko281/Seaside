"Filed out from Dolphin Smalltalk"!

WACanvasWidget subclass: #WANavigation
	instanceVariableNames: 'selection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WANavigation guid: (GUID fromString: '{bfdf3823-6ac7-4677-8f27-2106ec205715}')!

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

!WANavigation categoriesForMethods!
initialize!initialization!public! !
labelForOption:!public!query! !
options!accessing!public! !
renderContentOn:!public!rendering! !
renderOptionsOn:!public!rendering! !
renderSelectionOn:!public!rendering! !
select:!public!selection! !
selection!public!selection! !
selectionChanged!public!selection! !
states!hooks!public! !
!

