"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAWelcomeAuthorNamePrompter
	instanceVariableNames: 'authorName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWelcomeAuthorNamePrompter guid: (GUID fromString: '{c4afa65a-90a1-49a6-89dc-2f722764a867}')!

WAWelcomeAuthorNamePrompter comment: ''!

!WAWelcomeAuthorNamePrompter categoriesForClass!Base! !

!WAWelcomeAuthorNamePrompter methodsFor!

authorName	^ authorName ifNil: [ authorName := 'FirstnameLastname' ]!

authorName: anAuthorName	authorName := anAuthorName!

handleAuthorNameSubmission	"AuthorName appears to prefer no accented characters so a simple select block with 'char isLetter' is not sufficent"	self authorName: (self authorName select: [ :char |		'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' includes: char ]).		self authorName ifEmpty: [ self authorName: nil. ^ self ].		GRPlatform current seasideSetAuthorName: self authorName.	self answer!

renderContentOn: html	html form: [		html text: 'You are about to create your first component in this Smalltalk image, please enter your name to associate it with your code:'.		html textInput			on: #authorName of: self.		html submitButton			text: 'OK';			callback: [ self handleAuthorNameSubmission ] ]! !

!WAWelcomeAuthorNamePrompter categoriesForMethods!
authorName!accessing!public! !
authorName:!accessing!public! !
handleAuthorNameSubmission!private! !
renderContentOn:!public!rendering! !
!

