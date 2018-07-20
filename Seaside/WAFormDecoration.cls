﻿"Filed out from Dolphin Smalltalk 7"!

WAWidgetDecoration subclass: #WAFormDecoration
	instanceVariableNames: 'buttons'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFormDecoration guid: (GUID fromString: '{72d8edab-174b-4971-bed5-0809750f8206}')!
WAFormDecoration comment: 'A WAFormDecoration places its component inside an html form tag. The buttons inst var must be set. The component that a WAFormDecoration decorates must implement the method "defaultButton", which returns the string/symbol of the default button (one selected by default) of the form. Don''t place any decorators between WAFormDecoration and its component otherwise "defaultButton" method fails. For each string/symbol in the buttons inst var the decorated component must implement a method of the same name, which is called when the button is selected.
!WAFormDecoration categoriesForClass!Seaside-Widgets-Decorations! !
!WAFormDecoration methodsFor!

buttons

buttons: selectorArray

defaultAction

renderButtonForSelector: aSymbol on: html

renderButtonsOn: html

renderContentOn: html
!WAFormDecoration categoriesFor: #buttons!accessing!public! !
!WAFormDecoration categoriesFor: #buttons:!accessing!public! !
!WAFormDecoration categoriesFor: #defaultAction!actions!public! !
!WAFormDecoration categoriesFor: #renderButtonForSelector:on:!public!rendering! !
!WAFormDecoration categoriesFor: #renderButtonsOn:!public!rendering! !
!WAFormDecoration categoriesFor: #renderContentOn:!public!rendering! !
