"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WALabelTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WALabelTag guid: (GUID fromString: '{eee3cfcc-f2f9-42ee-9796-e009441cc4d0}')!

WALabelTag comment: 'Defines a label to a control. If you click the text within the label element,  it is supposed to toggle the control.'!

!WALabelTag categoriesForClass!Seaside-Canvas-Tags! !

!WALabelTag methodsFor!

for: aString 	self attributes 		at: 'for'		put: aString!

tag	^ 'label'! !

!WALabelTag categoriesForMethods!
for:!attributes!public! !
tag!accessing!public! !
!

