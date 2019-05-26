"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WALabelTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WALabelTag guid: (GUID fromString: '{2e98e73d-12c9-4450-b782-4131fed1db70}')!
WALabelTag comment: 'Defines a label to a control. If you click the text within the label element,  it is supposed to toggle the control.'!
!WALabelTag categoriesForClass!Seaside-Canvas-Tags! !
!WALabelTag methodsFor!

for: aString 	self attributes 		at: 'for'		put: aString!

tag	^ 'label'! !
!WALabelTag categoriesFor: #for:!attributes!public! !
!WALabelTag categoriesFor: #tag!accessing!public! !

