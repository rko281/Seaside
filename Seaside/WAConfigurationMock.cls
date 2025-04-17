"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WAConfigurationMock
	instanceVariableNames: 'describeBlock parentsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAConfigurationMock guid: (GUID fromString: '{945df3d8-c461-4992-b923-a9597f9b28b3}')!

WAConfigurationMock comment: ''!

!WAConfigurationMock categoriesForClass!Configuration! !

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

