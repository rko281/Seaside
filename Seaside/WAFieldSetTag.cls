"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAFieldSetTag
	instanceVariableNames: 'legend'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFieldSetTag guid: (GUID fromString: '{d595eab0-cfcd-44d7-a22c-dc2eb99d5000}')!
WAFieldSetTag comment: 'The FIELDSET element allows authors to group thematically related controls and labels. Grouping controls makes it easier for users to understand their purpose while simultaneously facilitating tabbing navigation for visual user agents and speech navigation for speech-oriented user agents. The proper use of this element makes documents more accessible.The LEGEND element allows authors to assign a caption to a FIELDSET. The legend improves accessibility when the FIELDSET is rendered non-visually.'!
!WAFieldSetTag categoriesForClass!Seaside-Canvas-Tags! !
!WAFieldSetTag methodsFor!

before	super before.	legend isNil		ifFalse: [ canvas legend: legend ]!

legend: aString	legend := aString!

tag	^ 'fieldset'! !
!WAFieldSetTag categoriesFor: #before!private! !
!WAFieldSetTag categoriesFor: #legend:!accessing!public! !
!WAFieldSetTag categoriesFor: #tag!accessing!public! !

