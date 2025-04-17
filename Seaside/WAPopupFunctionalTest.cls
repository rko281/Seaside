"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAPopupFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPopupFunctionalTest guid: (GUID fromString: '{bbe16cf1-af07-4269-806a-7f41fadbf6e9}')!

WAPopupFunctionalTest comment: ''!

!WAPopupFunctionalTest categoriesForClass!Unclassified! !

!WAPopupFunctionalTest methodsFor!

batchFunctionalTestLoop	self session presenter		show: WABatchFunctionalTest new!

popupCloseTest	self session presenter show: WAPopupCloseTestComponent new!

renderContentOn: html	html paragraph: [ 		html popupAnchor			callback: [ self batchFunctionalTestLoop ];			with: 'popup'.		html break.		html popupAnchor			extent: 300 @ 300;			callback: [ self batchFunctionalTestLoop ];			with: 'popup with extent'.		html break.		html popupAnchor			position: 100 @ 100;			callback: [ self batchFunctionalTestLoop ];			with: 'popup with position'.		html break.		html popupAnchor			location: true;			callback: [ self batchFunctionalTestLoop ];			with: 'popup with location'.		html break.		html popupAnchor			resizable: false;			callback: [ self batchFunctionalTestLoop ];			with: 'popup not resizable'.		html break.		html popupAnchor			resizable: false;			extent: 300 @ 300;			position: 50 @ 50;			callback: [ self popupCloseTest ];			with: 'popup with close button' ]! !

!WAPopupFunctionalTest categoriesForMethods!
batchFunctionalTestLoop!actions!public! !
popupCloseTest!actions!public! !
renderContentOn:!public!rendering! !
!

