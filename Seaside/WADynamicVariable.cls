"Filed out from Dolphin Smalltalk 7"!

WANotification subclass: #WADynamicVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADynamicVariable guid: (GUID fromString: '{6be40304-e13b-4259-8524-f45ff4cf4d10}')!
WADynamicVariable comment: 'A WADynamicVariable is a variable that is visible only in the stackframes outgoing from this one.Example:WADynamicVariable	use: ''Seaside''	during: [ self compilcatedCalculation ]	WheneverWADynamicVariable valuegets evaluated somewhere inside [ self compilcatedCalculation ] or a method invoked directly or indirectly by it, its value will be ''Seaside''. If no #use:during: handler is around the current stack frame, then the value will be the return value of #defaultValue.Do not use WADynamicVariable directly, instead create a subclass for each variable you want to use.'!
!WADynamicVariable categoriesForClass!Seaside-Core-Utilities! !
!WADynamicVariable methodsFor!

defaultAction	^ self class defaultValue! !
!WADynamicVariable categoriesFor: #defaultAction!defaults!public! !

!WADynamicVariable class methodsFor!

defaultValue	^ nil!

use: anObject during: aBlock	"Set the dynamic value of the receiver to anObject during the evaluation of aBlock."		^ aBlock on: self do: [ :notification | notification resume: anObject ]!

value	"Answer the dynamic value of the receiver."		^ self signal! !
!WADynamicVariable class categoriesFor: #defaultValue!defaults!public! !
!WADynamicVariable class categoriesFor: #use:during:!evaluating!public! !
!WADynamicVariable class categoriesFor: #value!evaluating!public! !

