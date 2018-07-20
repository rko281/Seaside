"Filed out from Dolphin Smalltalk 7"!

WASystemConfiguration subclass: #WADevelopmentConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADevelopmentConfiguration guid: (GUID fromString: '{a772a6e0-0651-4b62-8bee-368c92fa2252}')!
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

