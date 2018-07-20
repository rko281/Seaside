"Filed out from Dolphin Smalltalk 7"!

WASystemConfiguration subclass: #WAConfigurationMock
	instanceVariableNames: 'describeBlock parentsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfigurationMock guid: (GUID fromString: '{6559322d-74e3-47ef-8a83-003847f3bf44}')!
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

