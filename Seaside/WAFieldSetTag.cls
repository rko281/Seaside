"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAFieldSetTag
	instanceVariableNames: 'legend'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFieldSetTag guid: (GUID fromString: '{c06846cc-feea-4613-975c-d7e180f63805}')!

WAFieldSetTag comment: 'The FIELDSET element allows authors to group thematically related controls and labels. Grouping controls makes it easier for users to understand their purpose while simultaneously facilitating tabbing navigation for visual user agents and speech navigation for speech-oriented user agents. The proper use of this element makes documents more accessible.The LEGEND element allows authors to assign a caption to a FIELDSET. The legend improves accessibility when the FIELDSET is rendered non-visually.'!

!WAFieldSetTag categoriesForClass!Seaside-Canvas-Tags! !

!WAFieldSetTag methodsFor!

before	super before.	legend isNil		ifFalse: [ canvas legend: legend ]!

legend: aString	legend := aString!

tag	^ 'fieldset'! !

!WAFieldSetTag categoriesForMethods!
before!private! !
legend:!accessing!public! !
tag!accessing!public! !
!

