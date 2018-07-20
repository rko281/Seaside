﻿"Filed out from Dolphin Smalltalk 7"!

WAConfiguration subclass: #WAUserConfiguration
	instanceVariableNames: 'expressions parents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUserConfiguration guid: (GUID fromString: '{b740843c-08d2-433c-9fe7-0145b64b9c4f}')!
WAUserConfiguration comment: 'WAUserConfiguration is a composite of configurations.  This composite of configurations is stored in the field "parents". WAUserConfiguration provides methods to dynamically provide non-default values for attributes. WAUserConfiguration inherits attributes and values defined in its ancestors. If WAUserConfiguration does not have a value for an attribute it will search its ancestors for a value, stopping when it finds a value.
!WAUserConfiguration categoriesForClass!Seaside-Core-Configuration! !
!WAUserConfiguration methodsFor!

addParent: aConfiguration

at: aSymbol addAll: aCollection

at: aSymbol addAll: additions removeAll: removals

at: aSymbol put: anObject

at: aSymbol putClass: aClass

canAddParent: aConfiguration 

expressionAt: aSymbol ifAbsent: errorBlock

initialize

localAttributeAt: aSymbol ifAbsent: absentBlock

localAttributesDo: aBlock

moveParentDown: aConfiguration 

moveParentUp: aConfiguration 

parents

postCopy

removeExpressionAt: aSymbol

removeExpressionAt: aSymbol ifAbsent: aBlock

removeParent: aConfiguration 

storeExpression: anAttributeExpression forAttribute: anAttribute

takeValue: anObject forAttribute: anAttribute

takeValueFromString: aString forAttribute: anAttribute
!WAUserConfiguration categoriesFor: #addParent:!ancestry!public! !
!WAUserConfiguration categoriesFor: #at:addAll:!public!values! !
!WAUserConfiguration categoriesFor: #at:addAll:removeAll:!public!values! !
!WAUserConfiguration categoriesFor: #at:put:!public!values! !
!WAUserConfiguration categoriesFor: #at:putClass:!public!values! !
!WAUserConfiguration categoriesFor: #canAddParent:!ancestry!public! !
!WAUserConfiguration categoriesFor: #expressionAt:ifAbsent:!public!values! !
!WAUserConfiguration categoriesFor: #initialize!initialization!public! !
!WAUserConfiguration categoriesFor: #localAttributeAt:ifAbsent:!attributes!public! !
!WAUserConfiguration categoriesFor: #localAttributesDo:!attributes!public! !
!WAUserConfiguration categoriesFor: #moveParentDown:!ancestry!public! !
!WAUserConfiguration categoriesFor: #moveParentUp:!ancestry!public! !
!WAUserConfiguration categoriesFor: #parents!ancestry!public! !
!WAUserConfiguration categoriesFor: #postCopy!copying!public! !
!WAUserConfiguration categoriesFor: #removeExpressionAt:!public!values! !
!WAUserConfiguration categoriesFor: #removeExpressionAt:ifAbsent:!public!values! !
!WAUserConfiguration categoriesFor: #removeParent:!ancestry!public! !
!WAUserConfiguration categoriesFor: #storeExpression:forAttribute:!public!values! !
!WAUserConfiguration categoriesFor: #takeValue:forAttribute:!public!values! !
!WAUserConfiguration categoriesFor: #takeValueFromString:forAttribute:!public!values! !
