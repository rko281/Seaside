"Filed out from Dolphin Smalltalk 7"!

WASystemConfiguration subclass: #WADevelopmentConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADevelopmentConfiguration guid: (GUID fromString: '{a12d9312-4af8-4b37-be38-009d40d550c7}')!
WADevelopmentConfiguration comment: ''!
!WADevelopmentConfiguration categoriesForClass!Seaside-Development-Core! !
!WADevelopmentConfiguration methodsFor!

describeOn: config	config at: #rootDecorationClasses addAll: (Array with: (GRPlatform current bindingOf: WAToolDecoration))!

parents	^ Array with: WARenderLoopConfiguration instance! !
!WADevelopmentConfiguration categoriesFor: #describeOn:!description!public! !
!WADevelopmentConfiguration categoriesFor: #parents!ancestry!public! !

!WADevelopmentConfiguration class methodsFor!

initialize	WAAdmin applicationDefaults addParent: self instance! !
!WADevelopmentConfiguration class categoriesFor: #initialize!initialization!public! !

