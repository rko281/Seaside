﻿"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WATrail
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATrail guid: (GUID fromString: '{06ad3132-1f9c-4db9-bd3a-ac2ebd74cde9}')!
WATrail comment: 'WATrail implements breadcrumbs for pages generated using a sequence of WAComponent>>call: methods. Each component in the call sequence that is to appear in the breadcrumb must implement the method "trailName", which returns the text displayed in the breadcrumb. 
!WATrail categoriesForClass!Seaside-Widgets-Components! !
!WATrail methodsFor!

renderContentOn: html

root: anObject

separator
!WATrail categoriesFor: #renderContentOn:!public!rendering! !
!WATrail categoriesFor: #root:!accessing!public! !
!WATrail categoriesFor: #separator!accessing!public! !

!WATrail class methodsFor!

on: anObject
!WATrail class categoriesFor: #on:!instance creation!public! !
