"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WALabelTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WALabelTag guid: (GUID fromString: '{1fe22f20-212a-4ee7-a5df-98ce57a9cdb1}')!
WALabelTag comment: 'Defines a label to a control. If you click the text within the label element,  it is supposed to toggle the control.'!
!WALabelTag categoriesForClass!Seaside-Canvas-Tags! !
!WALabelTag methodsFor!

for: aString 	self attributes 		at: 'for'		put: aString!

tag	^ 'label'! !
!WALabelTag categoriesFor: #for:!attributes!public! !
!WALabelTag categoriesFor: #tag!accessing!public! !

