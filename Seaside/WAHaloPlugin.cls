"Filed out from Dolphin Smalltalk 7"!

WAPlugin subclass: #WAHaloPlugin
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHaloPlugin guid: (GUID fromString: '{0df9d2d7-6dcd-4255-b36a-2c1dcebcf664}')!
WAHaloPlugin comment: 'Abstract root class for all halo tools. They add functionality to the halo toolbar.'!
!WAHaloPlugin categoriesForClass!Seaside-Development-Plugins! !
!WAHaloPlugin methodsFor!

initializeRoot: aRootObject requestor: aRequestorObject	self initializeRequestor: aRequestorObject.	root := aRootObject!

open: aComponent onAnswer: aBlock	| component decoration |	component := self session presenter.	decoration := component decorations		detect: [ :each | each isKindOf: WAToolDecoration ]		ifNone: [ nil ].	decoration isNil		ifTrue: [ ^ super open: aComponent onAnswer: aBlock ].	component removeDecoration: decoration.	super open: aComponent onAnswer: [ :value |		component addDecoration: decoration.		aBlock value: value ]!

renderContentOn: html	html div		class: self cssClass;		with: [ super renderContentOn: html ]!

root	^ root! !
!WAHaloPlugin categoriesFor: #initializeRoot:requestor:!initialization!public! !
!WAHaloPlugin categoriesFor: #open:onAnswer:!actions!public! !
!WAHaloPlugin categoriesFor: #renderContentOn:!public!rendering! !
!WAHaloPlugin categoriesFor: #root!accessing!public! !

!WAHaloPlugin class methodsFor!

allSubclassesOn: aTargetObject for: aRequestorObject	| plugins |	plugins := self allSubclasses		collect: [ :each | each on: aTargetObject for: aRequestorObject ].	^ plugins sorted!

on: aTargetObject for: aRequestorObject	^ self basicNew initializeRoot: aTargetObject requestor: aRequestorObject! !
!WAHaloPlugin class categoriesFor: #allSubclassesOn:for:!instance creation!public! !
!WAHaloPlugin class categoriesFor: #on:for:!instance creation!public! !

