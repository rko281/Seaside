"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #JSLogger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSLogger guid: (GUID fromString: '{4a3f7f62-73c5-435d-aa64-f3c3a58a1f95}')!
JSLogger comment: 'I am a logger class to be used together with FireBug. I have nothing to do with Scriptaculous directly, but I nicely fit in here as everybody should be using FireBug for Script debugging anyway.'!
!JSLogger categoriesForClass!Javascript-Core-Base! !
!JSLogger methodsFor!

assert: anObject 	self 		call: 'assert'		with: anObject!

assert: anObject equals: anotherObject 	self 		call: 'assertEquals'		with: anObject		with: anotherObject!

assert: anObject greater: anotherObject 	self 		call: 'assertGreater'		with: anObject		with: anotherObject!

assert: anObject less: anotherObject 	self 		call: 'assertLess'		with: anObject		with: anotherObject!

assert: anObject notEquals: anotherObject 	self 		call: 'assertNotEquals'		with: anObject		with: anotherObject!

assert: anObject notGreater: anotherObject 	self 		call: 'assertNotGreater'		with: anObject		with: anotherObject!

assert: anObject notLess: anotherObject 	self 		call: 'assertNotLess'		with: anObject		with: anotherObject!

assertFalse: anObject 	self 		call: 'assertFalse'		with: anObject!

assertNotNull: anObject 	self 		call: 'assertNotNull'		with: anObject!

assertNotUndefined: anObject 	self 		call: 'assertNotUndefined'		with: anObject!

assertNull: anObject 	self 		call: 'assertNull'		with: anObject!

assertTrue: anObject 	self 		call: 'assertTrue'		with: anObject!

assertUndefined: anObject 	self 		call: 'assertUndefined'		with: anObject!

debug: anObject 	self 		call: 'debug'		with: anObject!

error: anObject 	self 		call: 'error'		with: anObject!

info: anObject 	self 		call: 'info'		with: anObject!

javascriptContentOn: aStream	aStream nextPutAll: 'console'!

log: anObject 	self 		call: 'log'		with: anObject!

log: anObject format: anArray 	self 		call: 'log'		withArguments: (Array with: anObject) , anArray!

warn: anObject 	self 		call: 'warn'		with: anObject! !
!JSLogger categoriesFor: #assert:!assertions!public! !
!JSLogger categoriesFor: #assert:equals:!assertions!public! !
!JSLogger categoriesFor: #assert:greater:!assertions!public! !
!JSLogger categoriesFor: #assert:less:!assertions!public! !
!JSLogger categoriesFor: #assert:notEquals:!assertions!public! !
!JSLogger categoriesFor: #assert:notGreater:!assertions!public! !
!JSLogger categoriesFor: #assert:notLess:!assertions!public! !
!JSLogger categoriesFor: #assertFalse:!assertions!public! !
!JSLogger categoriesFor: #assertNotNull:!assertions!public! !
!JSLogger categoriesFor: #assertNotUndefined:!assertions!public! !
!JSLogger categoriesFor: #assertNull:!assertions!public! !
!JSLogger categoriesFor: #assertTrue:!assertions!public! !
!JSLogger categoriesFor: #assertUndefined:!assertions!public! !
!JSLogger categoriesFor: #debug:!messages!public! !
!JSLogger categoriesFor: #error:!messages!public! !
!JSLogger categoriesFor: #info:!messages!public! !
!JSLogger categoriesFor: #javascriptContentOn:!printing!public! !
!JSLogger categoriesFor: #log:!logging!public! !
!JSLogger categoriesFor: #log:format:!logging!public! !
!JSLogger categoriesFor: #warn:!messages!public! !

