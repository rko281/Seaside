"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAPopupFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPopupFunctionalTest guid: (GUID fromString: '{2c64dbdf-4225-4e43-b5a4-2afaa3d250c1}')!
WAPopupFunctionalTest comment: ''!
!WAPopupFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAPopupFunctionalTest methodsFor!

batchFunctionalTestLoop	self session presenter		show: WABatchFunctionalTest new!

popupCloseTest	self session presenter show: WAPopupCloseTestComponent new!

renderContentOn: html	html paragraph: [ 		html popupAnchor			callback: [ self batchFunctionalTestLoop ];			with: 'popup'.		html break.		html popupAnchor			extent: 300 @ 300;			callback: [ self batchFunctionalTestLoop ];			with: 'popup with extent'.		html break.		html popupAnchor			position: 100 @ 100;			callback: [ self batchFunctionalTestLoop ];			with: 'popup with position'.		html break.		html popupAnchor			location: true;			callback: [ self batchFunctionalTestLoop ];			with: 'popup with location'.		html break.		html popupAnchor			resizable: false;			callback: [ self batchFunctionalTestLoop ];			with: 'popup not resizable'.		html break.		html popupAnchor			resizable: false;			extent: 300 @ 300;			position: 50 @ 50;			callback: [ self popupCloseTest ];			with: 'popup with close button' ]! !
!WAPopupFunctionalTest categoriesFor: #batchFunctionalTestLoop!actions!public! !
!WAPopupFunctionalTest categoriesFor: #popupCloseTest!actions!public! !
!WAPopupFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !

