"Filed out from Dolphin Smalltalk"!

WAFormInputTag subclass: #WAFileUploadTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFileUploadTag guid: (GUID fromString: '{e5977c67-75eb-4a87-825b-e0d51f4578f7}')!

WAFileUploadTag comment: 'I represent a file input element (<input type="file"). My callbacks will be evaluated with an instance of WAFile as an argument.'!

!WAFileUploadTag categoriesForClass!Seaside-Canvas-Tags! !

!WAFileUploadTag methodsFor!

accept: aString	"This attribute specifies a comma-separated list of content types that a server processing this form will handle correctly. User agents may use this information to filter out non-conforming files when prompting a user to select files to be sent to the server"	self attributes at: 'accept' put: aString!

beMultiple	"The multiple attribute is a boolean attribute that indicates whether the user is to be allowed to specify more than one value."	self attributeAt: 'multiple' put: true!

callback: aBlock	"Only called if a file was selected."	self name: (self storeCallback: (WAUploadCallback on: aBlock))!

multipleValuesCallback: aBlock	self beMultiple.	self name: (self storeCallback: (WAAllUploadsCallback on: aBlock))!

on: aSelector of: anObject 	self callback: (GRDelayedSend 			receiver: anObject			selector: aSelector greaseAsMutator)!

type	^ 'file'! !

!WAFileUploadTag categoriesForMethods!
accept:!attributes!public! !
beMultiple!attributes!public! !
callback:!callbacks!public! !
multipleValuesCallback:!callbacks!public! !
on:of:!callbacks!public! !
type!accessing!public! !
!

