"Filed out from Dolphin Smalltalk"!

WAEmailMessageTest subclass: #WAMultiPartEmailMessageTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMultiPartEmailMessageTest guid: (GUID fromString: '{de3d73df-9e43-4345-89ca-d1587c92aec5}')!

WAMultiPartEmailMessageTest comment: ''!

!WAMultiPartEmailMessageTest categoriesForClass!Seaside-Tests-Email! !

!WAMultiPartEmailMessageTest methodsFor!

convertLineEndingsToCr: aString	"converts a string to only use cr line endings"	(aString includes: Character lf) ifFalse: [ ^ aString ].	"No Lf's ; nothing to do"	(aString includes: Character cr) ifFalse: [		^ aString copyReplaceAll: (String with: Character lf) with: (String with: Character cr) ].  "Only Lf's; change them to Cr's"	^ (aString copyReplaceAll: (String with: Character cr with: Character lf) with: (String with: Character cr))		copyReplaceAll: (String with: Character lf) with: (String with: Character cr)!

messageClass	^ WAMultiPartEmailMessage!

testFromToSubjectBody	message headers removeKey: 'Date'.	self		assert:			(self convertLineEndingsToCr: ('From: "Philippe Marschall" <philippe.marschall@gmail.com>To: "Seaside Developers Mailinglist" <seaside-dev@lists.squeakfoundation.org>Subject: new email packageContent-Type: multipart/alternative;boundary=' , message boundary				,					'--' , message boundary				,					'Content-Type: text/plainHello--' , message boundary				,					'--'))		equals: (self convertLineEndingsToCr: message plainMessage)!

testHeaders	| now |	now := GRPrinter rfc822 print: DateAndTime now.	message replyTo: self philippeMarschall.	message headerAt: 'Date' put: now.	" We have to take into account, that the header order is not implied."	self		assert:			((self convertLineEndingsToCr: ('From: "Philippe Marschall" <philippe.marschall@gmail.com>To: "Seaside Developers Mailinglist" <seaside-dev@lists.squeakfoundation.org>Subject: new email packageReply-To: "Philippe Marschall" <philippe.marschall@gmail.com>Date: ' , now				,					'Content-Type: multipart/alternative;boundary=' , message boundary				,					'--' , message boundary				,					'Content-Type: text/plainHello--' , message boundary				,					'--')) = (self convertLineEndingsToCr: message plainMessage)				or: [ 					(self convertLineEndingsToCr: ('From: "Philippe Marschall" <philippe.marschall@gmail.com>To: "Seaside Developers Mailinglist" <seaside-dev@lists.squeakfoundation.org>Subject: new email packageReply-To: "Philippe Marschall" <philippe.marschall@gmail.com>Content-Type: multipart/alternative;boundary=' , message boundary						,							'Date: ' , now						,							'--' , message boundary						,							'Content-Type: text/plainHello--' , message boundary						,							'--')) = (self convertLineEndingsToCr: message plainMessage) ])!

testParts	| parts |	message setHtmlBody: [ :html | html paragraph: 'hello' ].	parts := message parts asArray sort.	self assert: parts size equals: 2.	self assert: parts last isHtml.	self assert: parts first contentString equals: 'Hello'.	self assert: parts last contentString equals:'<html><head><title></title></head><body onload="onLoad()"><p>hello</p><script type="text/javascript">function onLoad(){};</script></body></html>'! !

!WAMultiPartEmailMessageTest categoriesForMethods!
convertLineEndingsToCr:!private! !
messageClass!configuration!public! !
testFromToSubjectBody!public!testing! !
testHeaders!public!testing! !
testParts!public!testing! !
!

