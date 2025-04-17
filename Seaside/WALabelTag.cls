"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WALabelTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WALabelTag guid: (GUID fromString: '{1838364e-8dba-49ba-a299-9b1ff8891e8c}')!

WALabelTag comment: 'Defines a label to a control. If you click the text within the label element,  it is supposed to toggle the control.'!

!WALabelTag categoriesForClass!Tags! !

!WALabelTag methodsFor!

for: aString 	self attributes 		at: 'for'		put: aString!

tag	^ 'label'! !

!WALabelTag categoriesForMethods!
for:!attributes!public! !
tag!accessing!public! !
!

