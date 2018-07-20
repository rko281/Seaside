﻿"Filed out from Dolphin Smalltalk 7"!

WABrush subclass: #WATagBrush
	instanceVariableNames: 'attributes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATagBrush guid: (GUID fromString: '{8e673816-77b9-4e7e-9f87-8f0917d901ae}')!
WATagBrush comment: 'This is the superclass for all XML element classes. Its main additions are
!WATagBrush categoriesForClass!Seaside-Canvas! !
!WATagBrush methodsFor!

accessKey: aString

after

attributeAt: aKey

attributeAt: aKey ifAbsent: aBlock

attributeAt: aKey ifAbsentPut: aBlock

attributeAt: aKey ifPresent: aBlock

attributeAt: aKey put: aValue

attributes

attributes: anHtmlAttributes

autofocus

before

class: aString

class: aString if: aBoolean

closeTag

direction: aString

disabled

disabled: aBoolean

document

ensureId

id

id: aString

irrelevant

isClosed

isDisabled

language: aString

onAbort: anObject

onBlur: anObject

onChange: anObject

onClick: anObject

onDoubleClick: anObject

onError: anObject

onFocus: anObject

onInput: anObject

onKeyDown: anObject

onKeyPress: anObject

onKeyUp: anObject

onLoad: anObject

onMouseDown: anObject

onMouseMove: anObject

onMouseOut: anObject

onMouseOver: anObject

onMouseUp: anObject

onReset: anObject

onResize: anObject

onScroll: anObject

onSelect: anObject

onSubmit: anObject

onUnload: anObject

openTag

required

storeCallback: aCallback

style: aString

tabIndex: aString

tag

title: aString

with: anObject

withLineBreaks: aString
!WATagBrush categoriesFor: #accessKey:!attributes/keyboard!public! !
!WATagBrush categoriesFor: #after!private! !
!WATagBrush categoriesFor: #attributeAt:!accessing/attributes!public! !
!WATagBrush categoriesFor: #attributeAt:ifAbsent:!accessing/attributes!public! !
!WATagBrush categoriesFor: #attributeAt:ifAbsentPut:!accessing/attributes!public! !
!WATagBrush categoriesFor: #attributeAt:ifPresent:!accessing/attributes!public! !
!WATagBrush categoriesFor: #attributeAt:put:!accessing/attributes!public! !
!WATagBrush categoriesFor: #attributes!accessing!public! !
!WATagBrush categoriesFor: #attributes:!accessing!public! !
!WATagBrush categoriesFor: #autofocus!attributes!public! !
!WATagBrush categoriesFor: #before!private! !
!WATagBrush categoriesFor: #class:!attributes/core!public! !
!WATagBrush categoriesFor: #class:if:!convenience!public! !
!WATagBrush categoriesFor: #closeTag!private! !
!WATagBrush categoriesFor: #direction:!attributes/language!public! !
!WATagBrush categoriesFor: #disabled!attributes!public! !
!WATagBrush categoriesFor: #disabled:!attributes!public! !
!WATagBrush categoriesFor: #document!accessing!public! !
!WATagBrush categoriesFor: #ensureId!public! !
!WATagBrush categoriesFor: #id!accessing!public! !
!WATagBrush categoriesFor: #id:!attributes/core!public! !
!WATagBrush categoriesFor: #irrelevant!attributes!public! !
!WATagBrush categoriesFor: #isClosed!public!testing! !
!WATagBrush categoriesFor: #isDisabled!attributes!public! !
!WATagBrush categoriesFor: #language:!attributes/language!public! !
!WATagBrush categoriesFor: #onAbort:!attributes/events!public! !
!WATagBrush categoriesFor: #onBlur:!attributes/events!public! !
!WATagBrush categoriesFor: #onChange:!attributes/events!public! !
!WATagBrush categoriesFor: #onClick:!attributes/events!public! !
!WATagBrush categoriesFor: #onDoubleClick:!attributes/events!public! !
!WATagBrush categoriesFor: #onError:!convenience!public! !
!WATagBrush categoriesFor: #onFocus:!attributes/events!public! !
!WATagBrush categoriesFor: #onInput:!convenience!public! !
!WATagBrush categoriesFor: #onKeyDown:!attributes/events!public! !
!WATagBrush categoriesFor: #onKeyPress:!attributes/events!public! !
!WATagBrush categoriesFor: #onKeyUp:!attributes/events!public! !
!WATagBrush categoriesFor: #onLoad:!attributes/events!public! !
!WATagBrush categoriesFor: #onMouseDown:!attributes/events!public! !
!WATagBrush categoriesFor: #onMouseMove:!attributes/events!public! !
!WATagBrush categoriesFor: #onMouseOut:!attributes/events!public! !
!WATagBrush categoriesFor: #onMouseOver:!attributes/events!public! !
!WATagBrush categoriesFor: #onMouseUp:!attributes/events!public! !
!WATagBrush categoriesFor: #onReset:!attributes/events!public! !
!WATagBrush categoriesFor: #onResize:!convenience!public! !
!WATagBrush categoriesFor: #onScroll:!convenience!public! !
!WATagBrush categoriesFor: #onSelect:!attributes/events!public! !
!WATagBrush categoriesFor: #onSubmit:!attributes/events!public! !
!WATagBrush categoriesFor: #onUnload:!attributes/events!public! !
!WATagBrush categoriesFor: #openTag!private! !
!WATagBrush categoriesFor: #required!attributes!public! !
!WATagBrush categoriesFor: #storeCallback:!private! !
!WATagBrush categoriesFor: #style:!attributes/core!public! !
!WATagBrush categoriesFor: #tabIndex:!attributes/keyboard!public! !
!WATagBrush categoriesFor: #tag!accessing!public! !
!WATagBrush categoriesFor: #title:!attributes/core!public! !
!WATagBrush categoriesFor: #with:!public! !
!WATagBrush categoriesFor: #withLineBreaks:!convenience!public! !

!WATagBrush class methodsFor!

tag
!WATagBrush class categoriesFor: #tag!code generation!public! !
