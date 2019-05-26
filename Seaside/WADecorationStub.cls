"Filed out from Dolphin Smalltalk 7"!

WADecoration subclass: #WADecorationStub
	instanceVariableNames: 'initialRequestBlock updateRootBlock updateUrlBlock updateStatesBlock renderBlock childrenBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADecorationStub guid: (GUID fromString: '{04cc50e0-6541-4981-9712-3c2ba629febf}')!
WADecorationStub comment: ''!
!WADecorationStub categoriesForClass!Seaside-Tests-Component-Stubs! !
!WADecorationStub methodsFor!

children	^ childrenBlock isNil		ifTrue: [ super children ]		ifFalse: [ super children , childrenBlock value ]!

initialRequest: aRequest	super initialRequest: aRequest.	initialRequestBlock isNil		ifFalse: [ initialRequestBlock value: aRequest ]!

onChildren: aBlock	childrenBlock := aBlock!

onInitialRequest: aBlock	initialRequestBlock := aBlock!

onRender: aBlock	renderBlock := aBlock!

onUpdateRoot: aBlock	updateRootBlock := aBlock!

onUpdateStates: aBlock	updateStatesBlock := aBlock!

onUpdateUrl: aBlock	updateUrlBlock := aBlock!

renderContentOn: html	renderBlock isNil 		ifTrue: [ super renderContentOn: html ]		ifFalse: [ renderBlock value: html value: [ super renderContentOn: html ] ]!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	updateRootBlock isNil		ifFalse: [ updateRootBlock value: anHtmlRoot ]!

updateStates: aSnapshot	super updateStates: aSnapshot.	updateStatesBlock isNil		ifFalse: [ updateStatesBlock value: aSnapshot ]!

updateUrl: aUrl	super updateUrl: aUrl.	updateUrlBlock isNil		ifFalse: [ updateUrlBlock value: aUrl ]! !
!WADecorationStub categoriesFor: #children!hooks!public! !
!WADecorationStub categoriesFor: #initialRequest:!hooks!public! !
!WADecorationStub categoriesFor: #onChildren:!events!public! !
!WADecorationStub categoriesFor: #onInitialRequest:!events!public! !
!WADecorationStub categoriesFor: #onRender:!events!public! !
!WADecorationStub categoriesFor: #onUpdateRoot:!events!public! !
!WADecorationStub categoriesFor: #onUpdateStates:!events!public! !
!WADecorationStub categoriesFor: #onUpdateUrl:!events!public! !
!WADecorationStub categoriesFor: #renderContentOn:!public!rendering! !
!WADecorationStub categoriesFor: #updateRoot:!public!updating! !
!WADecorationStub categoriesFor: #updateStates:!public!updating! !
!WADecorationStub categoriesFor: #updateUrl:!public!updating! !

