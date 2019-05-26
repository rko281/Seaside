"Filed out from Dolphin Smalltalk 7"!

WACollectionAttributeEditor subclass: #WAClassBindingCollectionAttributeEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClassBindingCollectionAttributeEditor guid: (GUID fromString: '{89ecad9e-8201-49af-9f3c-0daf304a636f}')!
WAClassBindingCollectionAttributeEditor comment: ''!
!WAClassBindingCollectionAttributeEditor categoriesForClass!Seaside-Tools-Web! !
!WAClassBindingCollectionAttributeEditor methodsFor!

optionForValue: anObject	^ anObject value!

valueForOption: anObject	^ GRPlatform current bindingOf: anObject! !
!WAClassBindingCollectionAttributeEditor categoriesFor: #optionForValue:!private! !
!WAClassBindingCollectionAttributeEditor categoriesFor: #valueForOption:!private! !

