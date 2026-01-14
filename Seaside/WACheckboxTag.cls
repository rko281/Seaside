"Filed out from Dolphin Smalltalk"!

WAFormInputTag subclass: #WACheckboxTag
	instanceVariableNames: 'value callback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACheckboxTag guid: (GUID fromString: '{89afaa24-d4b2-49fa-97d0-85a719a366de}')!

WACheckboxTag comment: 'The checkbox element is used with an associated property of typ boolean. It renders a HTML <input> element of type checkbox.If this input element is disabled then the callback will still be evaluated but with an argument that is false. See method comment of #callback: for more information.'!

!WACheckboxTag categoriesForClass!Seaside-Canvas-Tags! !

!WACheckboxTag methodsFor!

after	super after.	callback isNil ifTrue: [ ^ self ].	canvas hiddenInput 		callback: [			callback value: value.			value := false ]!

callback: aBlock	"Compared to other form elements this input element is disabled then the callback will still be evaluted but with an argument that is false. So either don't assign a callback to disabled checkboxes or make the callback code aware that he might be invoked in a disabled state.		However if you enable a disabled checkbox with JavaScript then the callback is invoked with the correct argument.		http://code.google.com/p/seaside/issues/detail?id=18"	value := false.	callback := aBlock.	super callback: [ value := true ]!

onTrue: trueBlock onFalse: falseBlock	self callback: [ :v | v ifTrue: [ trueBlock value ] ifFalse: [ falseBlock value ] ]!

type	^ 'checkbox'!

value: aBoolean 	self attributes 		at: 'checked'		put: aBoolean! !

!WACheckboxTag categoriesForMethods!
after!private! !
callback:!callbacks!public! !
onTrue:onFalse:!attributes!public! !
type!accessing!public! !
value:!attributes!public! !
!

