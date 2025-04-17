"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WAEmailConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEmailConfiguration guid: (GUID fromString: '{9b3c2b46-eb6f-49dc-a123-4d8e1b48ee1b}')!

WAEmailConfiguration comment: 'A configuration for email'!

!WAEmailConfiguration categoriesForClass!Configuration! !

!WAEmailConfiguration methodsFor!

describeOn: config	(config string: #smtpServer)		group: #email;		label: 'SMTP Server';		comment: 'The hostname of the SMTP Server to use for sending Emails'.	(config integer: #smtpPort)		beAdvanced;		group: #email;		label: 'SMTP Port';		comment: 'The port of the SMTP Server to use for sending Emails.';		default: 25.	(config string: #smtpUsername)		beAdvanced;		group: #email;		label: 'SMTP Server user name';		comment: 'The user name used to log into the SMTP Server to use for sending Emails'.	(config string: #smtpPassword)		beAdvanced;		group: #email;		label: 'SMTP Server password';		comment: 'The password used to log into the SMTP Server to use for sending Emails'! !

!WAEmailConfiguration categoriesForMethods!
describeOn:!description!public! !
!

