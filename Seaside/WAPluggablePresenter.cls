"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAPluggablePresenter
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPluggablePresenter guid: (GUID fromString: '{c86ac7e9-a94d-45a5-aa13-261cfb2e9436}')!

WAPluggablePresenter comment: ''!

!WAPluggablePresenter categoriesForClass!Seaside-Component-Base! !

!WAPluggablePresenter methodsFor!

block: aBlock	block := aBlock!

renderContentOn: html	block value: html! !

!WAPluggablePresenter categoriesForMethods!
block:!accessing!public! !
renderContentOn:!public!rendering! !
!

