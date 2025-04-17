"Filed out from Dolphin Smalltalk"!

JSObject subclass: #JSLogger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSLogger guid: (GUID fromString: '{4c942ccf-7953-43f1-8747-ba59b388deac}')!

JSLogger comment: 'I am a logger class to be used together with FireBug. I have nothing to do with Scriptaculous directly, but I nicely fit in here as everybody should be using FireBug for Script debugging anyway.'!

!JSLogger categoriesForClass!Base! !

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

!JSLogger categoriesForMethods!
assert:!assertions!public! !
assert:equals:!assertions!public! !
assert:greater:!assertions!public! !
assert:less:!assertions!public! !
assert:notEquals:!assertions!public! !
assert:notGreater:!assertions!public! !
assert:notLess:!assertions!public! !
assertFalse:!assertions!public! !
assertNotNull:!assertions!public! !
assertNotUndefined:!assertions!public! !
assertNull:!assertions!public! !
assertTrue:!assertions!public! !
assertUndefined:!assertions!public! !
debug:!messages!public! !
error:!messages!public! !
info:!messages!public! !
javascriptContentOn:!printing!public! !
log:!logging!public! !
log:format:!logging!public! !
warn:!messages!public! !
!

