"Filed out from Dolphin Smalltalk 7"!

WACollectionAttributeEditor subclass: #WAClassBindingCollectionAttributeEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClassBindingCollectionAttributeEditor guid: (GUID fromString: '{4752068d-2fa8-4fd6-98d4-33b2deb2caa9}')!
WAClassBindingCollectionAttributeEditor comment: ''!
!WAClassBindingCollectionAttributeEditor categoriesForClass!Seaside-Tools-Web! !
!WAClassBindingCollectionAttributeEditor methodsFor!

optionForValue: anObject	^ anObject value!

valueForOption: anObject	^ GRPlatform current bindingOf: anObject! !
!WAClassBindingCollectionAttributeEditor categoriesFor: #optionForValue:!private! !
!WAClassBindingCollectionAttributeEditor categoriesFor: #valueForOption:!private! !

