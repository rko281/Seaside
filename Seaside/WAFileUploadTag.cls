"Filed out from Dolphin Smalltalk 7"!

WAFormInputTag subclass: #WAFileUploadTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileUploadTag guid: (GUID fromString: '{7a025776-432f-4744-afe0-58d6051fef4f}')!
WAFileUploadTag comment: 'I represent a file input element (<input type="file"). My callbacks will be evaluated with an instance of WAFile as an argument.'!
!WAFileUploadTag categoriesForClass!Seaside-Canvas-Tags! !
!WAFileUploadTag methodsFor!

accept: aString	"This attribute specifies a comma-separated list of content types that a server processing this form will handle correctly. User agents may use this information to filter out non-conforming files when prompting a user to select files to be sent to the server"	self attributes at: 'accept' put: aString!

beMultiple	"The multiple attribute is a boolean attribute that indicates whether the user is to be allowed to specify more than one value."	self attributeAt: 'multiple' put: true!

callback: aBlock	"Only called if a file was selected."	self name: (self storeCallback: (WAUploadCallback on: aBlock))!

multipleValuesCallback: aBlock	self beMultiple.	self name: (self storeCallback: (WAAllUploadsCallback on: aBlock))!

on: aSelector of: anObject 	self callback: (GRDelayedSend 			receiver: anObject			selector: aSelector asMutator)!

type	^ 'file'! !
!WAFileUploadTag categoriesFor: #accept:!attributes!public! !
!WAFileUploadTag categoriesFor: #beMultiple!attributes!public! !
!WAFileUploadTag categoriesFor: #callback:!callbacks!public! !
!WAFileUploadTag categoriesFor: #multipleValuesCallback:!callbacks!public! !
!WAFileUploadTag categoriesFor: #on:of:!callbacks!public! !
!WAFileUploadTag categoriesFor: #type!accessing!public! !

