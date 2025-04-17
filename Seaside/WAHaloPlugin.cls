"Filed out from Dolphin Smalltalk"!

WAPlugin subclass: #WAHaloPlugin
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHaloPlugin guid: (GUID fromString: '{3a10113a-354c-4220-bf86-df961a4d06e2}')!

WAHaloPlugin comment: 'Abstract root class for all halo tools. They add functionality to the halo toolbar.'!

!WAHaloPlugin categoriesForClass!Plugins! !

!WAHaloPlugin methodsFor!

initializeRoot: aRootObject requestor: aRequestorObject	self initializeRequestor: aRequestorObject.	root := aRootObject!

open: aComponent onAnswer: aBlock	| component decoration |	component := self session presenter.	decoration := component decorations		detect: [ :each | each isKindOf: WAToolDecoration ]		ifNone: [ nil ].	decoration isNil		ifTrue: [ ^ super open: aComponent onAnswer: aBlock ].	component removeDecoration: decoration.	super open: aComponent onAnswer: [ :value |		component addDecoration: decoration.		aBlock value: value ]!

renderContentOn: html	html div		class: self cssClass;		with: [ super renderContentOn: html ]!

root	^ root! !

!WAHaloPlugin categoriesForMethods!
initializeRoot:requestor:!initialization!public! !
open:onAnswer:!actions!public! !
renderContentOn:!public!rendering! !
root!accessing!public! !
!

!WAHaloPlugin class methodsFor!

allSubclassesOn: aTargetObject for: aRequestorObject	| plugins |	plugins := self allSubclasses		collect: [ :each | each on: aTargetObject for: aRequestorObject ].	^ plugins sorted!

isAbstract 	^ self == WAHaloPlugin!

on: aTargetObject for: aRequestorObject	^ self basicNew initializeRoot: aTargetObject requestor: aRequestorObject! !

!WAHaloPlugin class categoriesForMethods!
allSubclassesOn:for:!instance creation!public! !
isAbstract!public!testing! !
on:for:!instance creation!public! !
!

