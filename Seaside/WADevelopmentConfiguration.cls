"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WADevelopmentConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADevelopmentConfiguration guid: (GUID fromString: '{4d02696c-1d1e-49da-a0b8-9f45aee1a464}')!

WADevelopmentConfiguration comment: ''!

!WADevelopmentConfiguration categoriesForClass!Core! !

!WADevelopmentConfiguration methodsFor!

describeOn: config	config at: #rootDecorationClasses addAll: (Array with: (GRPlatform current bindingOf: WAToolDecoration))!

parents	^ Array with: WARenderLoopConfiguration instance! !

!WADevelopmentConfiguration categoriesForMethods!
describeOn:!description!public! !
parents!ancestry!public! !
!

!WADevelopmentConfiguration class methodsFor!

initialize	WAAdmin applicationDefaults addParent: self instance! !

!WADevelopmentConfiguration class categoriesForMethods!
initialize!initialization!public! !
!

