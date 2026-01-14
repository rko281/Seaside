"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAEmailAddressTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEmailAddressTest guid: (GUID fromString: '{1f964e2d-9297-4653-83e3-c0d24bc1892a}')!

WAEmailAddressTest comment: ''!

!WAEmailAddressTest categoriesForClass!Seaside-Tests-Canvas-Base! !

!WAEmailAddressTest methodsFor!

render: anObject	^ WARenderer builder		documentClass: WAHtmlDocument;		render: anObject!

testAddress	| address |	address := WAEmailAddress address: 'philippe.marschall@gmail.com'.	self assert: address address = 'philippe.marschall@gmail.com'.	self assert: address username isNil.	self assert: address greaseString = 'philippe.marschall@gmail.com'!

testAddressUsername	| address |	address := WAEmailAddress 		address: 'philippe.marschall@gmail.com'		username: 'Philippe Marschall'.	self assert: address address = 'philippe.marschall@gmail.com'.	self assert: address username = 'Philippe Marschall'.	self assert: address greaseString = '"Philippe Marschall" <philippe.marschall@gmail.com>'!

testEmpty	| address |	address := WAEmailAddress address: (String 			with: Character cr			with: Character lf) , 'philippe.marschall@gmail.com'.	self assert: address address = ''.	self assert: address username isNil.	self assert: address greaseString = ''!

testGreaseString	| address |	address := WAEmailAddress 		address: 'philippe.marschall@gmail.com'		username: 'Philippe Marschall'.	self assert: address greaseString = '"Philippe Marschall" <philippe.marschall@gmail.com>'!

testInjection	| address |	address := WAEmailAddress address: 'philippe.marschall@gmail.com' , (String 				with: Character cr				with: Character lf) , 'Evil-Header: evil-value'.	self assert: address address = 'philippe.marschall@gmail.com'.	self assert: address username isNil.	self assert: address greaseString = 'philippe.marschall@gmail.com'!

testRendering	| address |	address := WAEmailAddress		address: 'philippe.marschall@gmail.com'		username: 'Philippe Marschall'.	self assert: address address = 'philippe.marschall@gmail.com'.	self assert: address username = 'Philippe Marschall'.	self assert: (self render: address) = 'Philippe Marschall &lt;philippe.marschall@gmail.com&gt;'! !

!WAEmailAddressTest categoriesForMethods!
render:!private! !
testAddress!public!tests! !
testAddressUsername!public!tests! !
testEmpty!public!tests! !
testGreaseString!public!tests! !
testInjection!public!tests! !
testRendering!public!tests! !
!

