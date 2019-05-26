"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #JSLoggingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSLoggingTest guid: (GUID fromString: '{28bb7bcb-8bf1-4b7b-bbdd-7e6259e6f968}')!
JSLoggingTest comment: ''!
!JSLoggingTest categoriesForClass!Javascript-Tests-Core! !
!JSLoggingTest methodsFor!

logger	^ JSLogger context: self renderContext!

testAssert	self 		assert: (self logger assert: true)		equals: 'console.assert(true)'.	self		assert: (self logger assertTrue: true)		equals: 'console.assertTrue(true)'.	self 		assert: (self logger assertFalse: false)		equals: 'console.assertFalse(false)'.	self		assert: (self logger assertNull: nil)		equals: 'console.assertNull(null)'.	self		assert: (self logger assertNotNull: 1)		equals: 'console.assertNotNull(1)'.	self		assert: (self logger assertUndefined: nil)		equals: 'console.assertUndefined(null)'.	self		assert: (self logger assertNotUndefined: 1)		equals: 'console.assertNotUndefined(1)'!

testComparison	self		assert: (self logger assert: 1 equals: 1)		equals: 'console.assertEquals(1,1)'.	self		assert: (self logger assert: 1 notEquals: 2)		equals: 'console.assertNotEquals(1,2)'.	self		assert: (self logger assert: 1 greater: 2)		equals: 'console.assertGreater(1,2)'.	self		assert: (self logger assert: 2 notGreater: 1)		equals: 'console.assertNotGreater(2,1)'.	self		assert: (self logger assert: 2 less: 1)		equals: 'console.assertLess(2,1)'.	self		assert: (self logger assert: 1 notLess: 2)		equals: 'console.assertNotLess(1,2)'!

testLogging	self		assert: (self logger log: 'done')		equals: 'console.log("done")'.	self		assert: (self logger log: 'done %s and %s' format: #( 'this' 'that' ))		equals: 'console.log("done %s and %s","this","that")'!

testMessages	self		assert: (self logger debug: 3)		equals: 'console.debug(3)'.	self		assert: (self logger info: 'eye m here 2')		equals: 'console.info("eye m here 2")'.	self		assert: (self logger warn: 'don"t 4get ur grlfrnd')		equals: 'console.warn("don\"t 4get ur grlfrnd")'.	self		assert: (self logger error: 'gone gone gone')		equals: 'console.error("gone gone gone")'! !
!JSLoggingTest categoriesFor: #logger!accessing!public! !
!JSLoggingTest categoriesFor: #testAssert!public!tests! !
!JSLoggingTest categoriesFor: #testComparison!public!tests! !
!JSLoggingTest categoriesFor: #testLogging!public!tests! !
!JSLoggingTest categoriesFor: #testMessages!public!tests! !

