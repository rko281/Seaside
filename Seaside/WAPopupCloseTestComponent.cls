"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAPopupCloseTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPopupCloseTestComponent guid: (GUID fromString: '{dd034dc1-7cf4-40e8-942a-3028ff603ff5}')!
WAPopupCloseTestComponent comment: ''!
!WAPopupCloseTestComponent categoriesForClass!Seaside-Tests-Functional! !
!WAPopupCloseTestComponent methodsFor!

renderContentOn: html	html anchor		callback: [ self requestContext closeThisPopup ];		with: 'Close me'.	html break.	html anchor		callback: [ self requestContext closeThisPopupAndReloadOpener ];		with: 'Close me and reload opener'! !
!WAPopupCloseTestComponent categoriesFor: #renderContentOn:!public!rendering! !

