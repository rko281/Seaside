"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAComponentStub
	instanceVariableNames: 'initialRequestBlock updateRootBlock updateUrlBlock updateStatesBlock renderBlock childrenBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAComponentStub guid: (GUID fromString: '{3fbf0b7b-0062-44b6-b72a-5685636d5ea3}')!
WAComponentStub comment: ''!
!WAComponentStub categoriesForClass!Seaside-Tests-Component-Stubs! !
!WAComponentStub methodsFor!

children	^ childrenBlock isNil		ifTrue: [ super children ]		ifFalse: [ childrenBlock value ]!

initialRequest: aRequest	super initialRequest: aRequest.	initialRequestBlock isNil		ifFalse: [ initialRequestBlock value: aRequest ]!

onChildren: aBlock	childrenBlock := aBlock!

onInitialRequest: aBlock	initialRequestBlock := aBlock!

onRender: aBlock	renderBlock := aBlock!

onUpdateRoot: aBlock	updateRootBlock := aBlock!

onUpdateStates: aBlock	updateStatesBlock := aBlock!

onUpdateUrl: aBlock	updateUrlBlock := aBlock!

renderContentOn: html	renderBlock isNil 		ifTrue: [ super renderContentOn: html ]		ifFalse: [ renderBlock value: html ]!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	updateRootBlock isNil		ifFalse: [ updateRootBlock value: anHtmlRoot ]!

updateStates: aSnapshot	super updateStates: aSnapshot.	updateStatesBlock isNil		ifFalse: [ updateStatesBlock value: aSnapshot ]!

updateUrl: aUrl	super updateUrl: aUrl.	updateUrlBlock isNil		ifFalse: [ updateUrlBlock value: aUrl ]! !
!WAComponentStub categoriesFor: #children!hooks!public! !
!WAComponentStub categoriesFor: #initialRequest:!hooks!public! !
!WAComponentStub categoriesFor: #onChildren:!events!public! !
!WAComponentStub categoriesFor: #onInitialRequest:!events!public! !
!WAComponentStub categoriesFor: #onRender:!events!public! !
!WAComponentStub categoriesFor: #onUpdateRoot:!events!public! !
!WAComponentStub categoriesFor: #onUpdateStates:!events!public! !
!WAComponentStub categoriesFor: #onUpdateUrl:!events!public! !
!WAComponentStub categoriesFor: #renderContentOn:!public!rendering! !
!WAComponentStub categoriesFor: #updateRoot:!public!updating! !
!WAComponentStub categoriesFor: #updateStates:!public!updating! !
!WAComponentStub categoriesFor: #updateUrl:!public!updating! !

