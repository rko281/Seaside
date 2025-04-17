"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAPopupCloseTestComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPopupCloseTestComponent guid: (GUID fromString: '{4357704b-6583-43c1-8530-597a3fa984cf}')!

WAPopupCloseTestComponent comment: ''!

!WAPopupCloseTestComponent categoriesForClass!Unclassified! !

!WAPopupCloseTestComponent methodsFor!

renderContentOn: html	html anchor		callback: [ self requestContext closeThisPopup ];		with: 'Close me'.	html break.	html anchor		callback: [ self requestContext closeThisPopupAndReloadOpener ];		with: 'Close me and reload opener'! !

!WAPopupCloseTestComponent categoriesForMethods!
renderContentOn:!public!rendering! !
!

