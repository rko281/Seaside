"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAComponentStub
	instanceVariableNames: 'initialRequestBlock updateRootBlock updateUrlBlock updateStatesBlock renderBlock childrenBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAComponentStub guid: (GUID fromString: '{d46ad05b-5905-4c54-a4a7-6a6f510f1fc9}')!

WAComponentStub comment: ''!

!WAComponentStub categoriesForClass!Stubs! !

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

!WAComponentStub categoriesForMethods!
children!hooks!public! !
initialRequest:!hooks!public! !
onChildren:!events!public! !
onInitialRequest:!events!public! !
onRender:!events!public! !
onUpdateRoot:!events!public! !
onUpdateStates:!events!public! !
onUpdateUrl:!events!public! !
renderContentOn:!public!rendering! !
updateRoot:!public!updating! !
updateStates:!public!updating! !
updateUrl:!public!updating! !
!

