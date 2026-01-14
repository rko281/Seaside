"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WAConfigurationMock
	instanceVariableNames: 'describeBlock parentsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfigurationMock guid: (GUID fromString: '{f72199ac-7c46-41b8-9cd1-9b13a4fb49de}')!

WAConfigurationMock comment: ''!

!WAConfigurationMock categoriesForClass!Seaside-Tests-Core-Configuration! !

!WAConfigurationMock methodsFor!

describeOn: config	describeBlock isNil ifFalse: [ describeBlock value: config ]!

description: aBlock	describeBlock := aBlock!

parents	^ parentsBlock isNil 		ifFalse: [ parentsBlock value ]		ifTrue: 			[ #() ]!

parents: aBlock 	parentsBlock := aBlock! !

!WAConfigurationMock categoriesForMethods!
describeOn:!description!public! !
description:!accessing!public! !
parents!ancestry!public! !
parents:!accessing!public! !
!

!WAConfigurationMock class methodsFor!

new	"For testing, we'd rather create new instances than use singletons."	^ self basicNew initialize! !

!WAConfigurationMock class categoriesForMethods!
new!instance creation!public! !
!

