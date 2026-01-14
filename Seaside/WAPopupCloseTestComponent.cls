"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAPopupCloseTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPopupCloseTestComponent guid: (GUID fromString: '{4b2b57bf-72db-470d-8c43-66993d79dca5}')!

WAPopupCloseTestComponent comment: ''!

!WAPopupCloseTestComponent categoriesForClass!Seaside-Tests-Functional! !

!WAPopupCloseTestComponent methodsFor!

renderContentOn: html	html anchor		callback: [ self requestContext closeThisPopup ];		with: 'Close me'.	html break.	html anchor		callback: [ self requestContext closeThisPopupAndReloadOpener ];		with: 'Close me and reload opener'! !

!WAPopupCloseTestComponent categoriesForMethods!
renderContentOn:!public!rendering! !
!

