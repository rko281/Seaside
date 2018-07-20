﻿"Filed out from Dolphin Smalltalk 7"!

WAWidgetDecoration subclass: #WAWindowDecoration
	instanceVariableNames: 'title cssClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWindowDecoration guid: (GUID fromString: '{102635b0-c5d8-494c-877c-afb19636aa4d}')!
WAWindowDecoration comment: 'WAWindowDecoration adds a simple title and close button in a bordered area at the top of the page. When closed button is selected nil is "answer"ed. Useful for a quick & dirty dialog window. Used by WAPlugin and SCTestRunner.
!WAWindowDecoration categoriesForClass!Seaside-Widgets-Decorations! !
!WAWindowDecoration methodsFor!

cssClass: aString

isGlobal

renderCloseButtonOn: html

renderContentOn: html

title: aString
!WAWindowDecoration categoriesFor: #cssClass:!accessing!public! !
!WAWindowDecoration categoriesFor: #isGlobal!public!testing! !
!WAWindowDecoration categoriesFor: #renderCloseButtonOn:!public!rendering! !
!WAWindowDecoration categoriesFor: #renderContentOn:!public!rendering! !
!WAWindowDecoration categoriesFor: #title:!accessing!public! !

!WAWindowDecoration class methodsFor!

title: aTitle
!WAWindowDecoration class categoriesFor: #title:!instance creation!public! !
