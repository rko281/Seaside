"Filed out from Dolphin Smalltalk"!

WAErrorHandler subclass: #WAEmailErrorHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEmailErrorHandler guid: (GUID fromString: '{2ce7c281-3aee-4d73-be83-fef494a6d2ca}')!

WAEmailErrorHandler comment: '
A WAEmailErrorHandler is an error handler that sends out email messages with the stack strace. This is an abstract class that has to be subclassed. Subclasses must override #to and #from that return an instance of WAEmailAddress. It''s also recommened to override #handleDefault: to generate a custom HTML response.
'!

!WAEmailErrorHandler categoriesForClass!Unclassified! !

!WAEmailErrorHandler methodsFor!

bodyFor: anError
	^WAStringEmailBody string: (String streamContents: [ :stream |
		anError signalerContext errorReportOn: stream ])!

from
	"ansers the WAEmailAddress instance used as a sender addresst"
	self subclassResponsibility!

handleError: anException
	self sendFailFor: anException.
	^super handleError: anException!

sendFailFor: anError
	| message |
	message := WAEmailMessage
		from: self from
		to: self to
		subject: (self subjectFor: anError).
	message body: (self bodyFor: anError).
	message send!

subjectFor: anError
	^anError signalerContext printString!

to
	"ansers the WAEmailAddress instance to which the error mail should be sent"
	self subclassResponsibility! !

!WAEmailErrorHandler categoriesForMethods!
bodyFor:!private! !
from!private! !
handleError:!actions!public! !
sendFailFor:!private! !
subjectFor:!private! !
to!private! !
!

