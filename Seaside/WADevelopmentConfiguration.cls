"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WADevelopmentConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADevelopmentConfiguration guid: (GUID fromString: '{5cda4a84-a884-48bb-9f91-eed4190656af}')!

WADevelopmentConfiguration comment: ''!

!WADevelopmentConfiguration categoriesForClass!Seaside-Development-Core! !

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

