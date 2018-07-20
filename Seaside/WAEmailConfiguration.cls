"Filed out from Dolphin Smalltalk 7"!

WASystemConfiguration subclass: #WAEmailConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEmailConfiguration guid: (GUID fromString: '{4b2d5be2-2cf2-4f04-99a0-a710548883d0}')!
WAEmailConfiguration comment: ''!
!WAEmailConfiguration categoriesForClass!Seaside-Email-Configuration! !
!WAEmailConfiguration methodsFor!

describeOn: config	(config string: #smtpServer)		group: #email;		label: 'SMTP Server';		comment: 'The hostname of the SMTP Server to use for sending Emails'.	(config integer: #smtpPort)		beAdvanced;		group: #email;		label: 'SMTP Port';		comment: 'The port of the SMTP Server to use for sending Emails.';		default: 25.	(config string: #smtpUsername)		beAdvanced;		group: #email;		label: 'SMTP Server user name';		comment: 'The user name used to log into the SMTP Server to use for sending Emails'.	(config string: #smtpPassword)		beAdvanced;		group: #email;		label: 'SMTP Server password';		comment: 'The password used to log into the SMTP Server to use for sending Emails'! !
!WAEmailConfiguration categoriesFor: #describeOn:!description!public! !

