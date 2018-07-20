﻿"Filed out from Dolphin Smalltalk 7"!

WASystemConfiguration subclass: #WAAuthConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAuthConfiguration guid: (GUID fromString: '{f0b713f9-2a76-40cc-9707-f6de924ca417}')!
WAAuthConfiguration comment: 'WAAuthConfiguration defines attributes to store a username and password for an application. It is used by WAApplication to provide a basic single-account authentication mechanism for applications like the Seaside Configuration application. It changes to mainClass for the session to WAAuthMain, which adds a Decoration to check for authentication before displaying the root component.
!WAAuthConfiguration categoriesForClass!Seaside-Core-Filter! !
!WAAuthConfiguration methodsFor!

describeOn: config
!WAAuthConfiguration categoriesFor: #describeOn:!description!public! !
