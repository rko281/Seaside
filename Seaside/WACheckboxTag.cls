﻿"Filed out from Dolphin Smalltalk 7"!

WAFormInputTag subclass: #WACheckboxTag
	instanceVariableNames: 'value callback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACheckboxTag guid: (GUID fromString: '{1b4ba8fb-154f-4cbb-9405-0f4df35ca576}')!
WACheckboxTag comment: 'The checkbox element is used with an associated property of typ boolean. It renders a HTML <input> element of type checkbox.
!WACheckboxTag categoriesForClass!Seaside-Canvas-Tags! !
!WACheckboxTag methodsFor!

after

callback: aBlock

onTrue: trueBlock onFalse: falseBlock

type

value: aBoolean 
!WACheckboxTag categoriesFor: #after!private! !
!WACheckboxTag categoriesFor: #callback:!callbacks!public! !
!WACheckboxTag categoriesFor: #onTrue:onFalse:!attributes!public! !
!WACheckboxTag categoriesFor: #type!accessing!public! !
!WACheckboxTag categoriesFor: #value:!attributes!public! !
