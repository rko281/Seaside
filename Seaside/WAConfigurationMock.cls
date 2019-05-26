"Filed out from Dolphin Smalltalk 7"!

WASystemConfiguration subclass: #WAConfigurationMock
	instanceVariableNames: 'describeBlock parentsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfigurationMock guid: (GUID fromString: '{c9d98fab-02c7-4028-907a-e328bbc4929a}')!
WAConfigurationMock comment: ''!
!WAConfigurationMock categoriesForClass!Seaside-Tests-Core-Configuration! !
!WAConfigurationMock methodsFor!

describeOn: config	describeBlock isNil ifFalse: [ describeBlock value: config ]!

description: aBlock	describeBlock := aBlock!

parents	^ parentsBlock isNil 		ifFalse: [ parentsBlock value ]		ifTrue: 			[ #() ]!

parents: aBlock 	parentsBlock := aBlock! !
!WAConfigurationMock categoriesFor: #describeOn:!description!public! !
!WAConfigurationMock categoriesFor: #description:!accessing!public! !
!WAConfigurationMock categoriesFor: #parents!ancestry!public! !
!WAConfigurationMock categoriesFor: #parents:!accessing!public! !

!WAConfigurationMock class methodsFor!

new	"For testing, we'd rather create new instances than use singletons."	^ self basicNew initialize! !
!WAConfigurationMock class categoriesFor: #new!instance creation!public! !

