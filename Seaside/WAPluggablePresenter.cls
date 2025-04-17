"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAPluggablePresenter
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPluggablePresenter guid: (GUID fromString: '{d857c7fd-9d0d-47be-924a-29c17681c358}')!

WAPluggablePresenter comment: ''!

!WAPluggablePresenter categoriesForClass!Base! !

!WAPluggablePresenter methodsFor!

block: aBlock	block := aBlock!

renderContentOn: html	block value: html! !

!WAPluggablePresenter categoriesForMethods!
block:!accessing!public! !
renderContentOn:!public!rendering! !
!

