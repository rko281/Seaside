"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAEmailAddressTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEmailAddressTest guid: (GUID fromString: '{db8cee0b-0369-456c-a6e2-5fa78dcc12b9}')!
WAEmailAddressTest comment: ''!
!WAEmailAddressTest categoriesForClass!Seaside-Tests-Canvas! !
!WAEmailAddressTest methodsFor!

render: anObject	^ WARenderer builder		documentClass: WAHtmlDocument;		render: anObject!

testAddress	| address |	address := WAEmailAddress address: 'philippe.marschall@gmail.com'.	self assert: address address = 'philippe.marschall@gmail.com'.	self assert: address username isNil.	self assert: address greaseString = 'philippe.marschall@gmail.com'!

testAddressUsername	| address |	address := WAEmailAddress 		address: 'philippe.marschall@gmail.com'		username: 'Philippe Marschall'.	self assert: address address = 'philippe.marschall@gmail.com'.	self assert: address username = 'Philippe Marschall'.	self assert: address greaseString = '"Philippe Marschall" <philippe.marschall@gmail.com>'!

testEmpty	| address |	address := WAEmailAddress address: (String 			with: Character cr			with: Character lf) , 'philippe.marschall@gmail.com'.	self assert: address address = ''.	self assert: address username isNil.	self assert: address greaseString = ''!

testGreaseString	| address |	address := WAEmailAddress 		address: 'philippe.marschall@gmail.com'		username: 'Philippe Marschall'.	self assert: address greaseString = '"Philippe Marschall" <philippe.marschall@gmail.com>'!

testInjection	| address |	address := WAEmailAddress address: 'philippe.marschall@gmail.com' , (String 				with: Character cr				with: Character lf) , 'Evil-Header: evil-value'.	self assert: address address = 'philippe.marschall@gmail.com'.	self assert: address username isNil.	self assert: address greaseString = 'philippe.marschall@gmail.com'!

testRendering	| address |	address := WAEmailAddress		address: 'philippe.marschall@gmail.com'		username: 'Philippe Marschall'.	self assert: address address = 'philippe.marschall@gmail.com'.	self assert: address username = 'Philippe Marschall'.	self assert: (self render: address) = 'Philippe Marschall &lt;philippe.marschall@gmail.com&gt;'! !
!WAEmailAddressTest categoriesFor: #render:!private! !
!WAEmailAddressTest categoriesFor: #testAddress!public!tests! !
!WAEmailAddressTest categoriesFor: #testAddressUsername!public!tests! !
!WAEmailAddressTest categoriesFor: #testEmpty!public!tests! !
!WAEmailAddressTest categoriesFor: #testGreaseString!public!tests! !
!WAEmailAddressTest categoriesFor: #testInjection!public!tests! !
!WAEmailAddressTest categoriesFor: #testRendering!public!tests! !

