"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAEmailMessageTest
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEmailMessageTest guid: (GUID fromString: '{93b01cdf-57fc-4c27-bf15-3db11b9377e6}')!

WAEmailMessageTest comment: ''!

!WAEmailMessageTest categoriesForClass!Seaside-Tests-Email! !

!WAEmailMessageTest methodsFor!

messageClass	^ WAEmailMessage!

philippeMarschall	^ WAEmailAddress		address: 'philippe.marschall@gmail.com'		username: 'Philippe Marschall'!

seasideDev	^ WAEmailAddress		address: 'seaside-dev@lists.squeakfoundation.org'		username: 'Seaside Developers Mailinglist'!

setUp	super setUp.	message := self messageClass from: self philippeMarschall to: self seasideDev subject: 'new email package'.	message setStringBody: 'Hello' wrap: false!

testFromToSubjectBody	| cr |	cr := String with: Character cr.	message := WAEmailMessage		from: self philippeMarschall		to: self seasideDev		subject: 'new email package'.	message setStringBody: 'Hello' wrap: false.	"we don't test them here: "	message headers removeKey: 'Date'.			self assert:'From: "Philippe Marschall" <philippe.marschall@gmail.com>', cr,'To: "Seaside Developers Mailinglist" <seaside-dev@lists.squeakfoundation.org>',cr ,'Subject: new email package', cr, cr,'Hello' = message plainMessage!

testHeaders	| cr now |	cr := String with: Character cr.	now := GRPrinter rfc822 print: DateAndTime now.	message replyTo: self philippeMarschall.	message headerAt: 'Date' put: now.	" We have to take into account, that the header order is not implied."	self		assert:			(('From: "Philippe Marschall" <philippe.marschall@gmail.com>' , cr				, 'To: "Seaside Developers Mailinglist" <seaside-dev@lists.squeakfoundation.org>' , cr				, 'Subject: new email package' , cr , 'Date: ' , now , cr				, 'Reply-To: "Philippe Marschall" <philippe.marschall@gmail.com>' , cr , cr , 'Hello') = message plainMessage				or: [ 					('From: "Philippe Marschall" <philippe.marschall@gmail.com>' , cr						, 'To: "Seaside Developers Mailinglist" <seaside-dev@lists.squeakfoundation.org>' , cr						, 'Subject: new email package' , cr , 'Reply-To: "Philippe Marschall" <philippe.marschall@gmail.com>' , cr						, 'Date: ' , now , cr , cr , 'Hello') = message plainMessage ])! !

!WAEmailMessageTest categoriesForMethods!
messageClass!configuration!public! !
philippeMarschall!private! !
seasideDev!private! !
setUp!public!running! !
testFromToSubjectBody!public!tests! !
testHeaders!public!tests! !
!

