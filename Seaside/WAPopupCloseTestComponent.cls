"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAPopupCloseTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPopupCloseTestComponent guid: (GUID fromString: '{e00b7808-09e6-4926-a49e-340af198965f}')!
WAPopupCloseTestComponent comment: ''!
!WAPopupCloseTestComponent categoriesForClass!Seaside-Tests-Functional! !
!WAPopupCloseTestComponent methodsFor!

renderContentOn: html	html anchor		callback: [ self requestContext closeThisPopup ];		with: 'Close me'.	html break.	html anchor		callback: [ self requestContext closeThisPopupAndReloadOpener ];		with: 'Close me and reload opener'! !
!WAPopupCloseTestComponent categoriesFor: #renderContentOn:!public!rendering! !

