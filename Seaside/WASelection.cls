﻿"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WASelection
	instanceVariableNames: 'items labelBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASelection guid: (GUID fromString: '{09edc2bd-178b-4435-89be-8bba5df19af7}')!
WASelection comment: 'WASelection creates a selectable list. Items can be any object. If optional labelBlock is not given the string versions of the items are displayed to user, otherwise labelBlock is used to generate the text to display for each item. Returns the item selected by user, (not the index nor the text shown the user). 
!WASelection categoriesForClass!Seaside-Widgets-Components! !
!WASelection methodsFor!

initialize

items

items: aCollection

labelBlock

labelBlock: aBlock

renderContentOn: html
!WASelection categoriesFor: #initialize!initialization!public! !
!WASelection categoriesFor: #items!accessing!public! !
!WASelection categoriesFor: #items:!accessing!public! !
!WASelection categoriesFor: #labelBlock!accessing!public! !
!WASelection categoriesFor: #labelBlock:!accessing!public! !
!WASelection categoriesFor: #renderContentOn:!public!rendering! !
