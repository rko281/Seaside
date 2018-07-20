"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAWelcomeAuthorNamePrompter
	instanceVariableNames: 'authorName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeAuthorNamePrompter guid: (GUID fromString: '{09af0bed-10c7-46f5-83a4-b011190d3e40}')!
WAWelcomeAuthorNamePrompter comment: ''!
!WAWelcomeAuthorNamePrompter categoriesForClass!Seaside-Welcome! !
!WAWelcomeAuthorNamePrompter methodsFor!

authorName	^ authorName ifNil: [ authorName := 'FirstnameLastname' ]!

authorName: anAuthorName	authorName := anAuthorName !

handleAuthorNameSubmission	"AuthorName appears to prefer no accented characters so a simple select block with 'char isLetter' is not sufficent"	self authorName: (self authorName select: [ :char |		'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' includes: char ]).		self authorName ifEmpty: [ self authorName: nil. ^ self ].		GRPlatform current seasideSetAuthorName: self authorName.	self answer!

renderContentOn: html	html form: [		html text: 'You are about to create your first component in this Smalltalk image, please enter your name to associate it with your code:'.		html textInput			on: #authorName of: self.		html submitButton			text: 'OK';			callback: [ self handleAuthorNameSubmission ] ]! !
!WAWelcomeAuthorNamePrompter categoriesFor: #authorName!accessing!public! !
!WAWelcomeAuthorNamePrompter categoriesFor: #authorName:!accessing!public! !
!WAWelcomeAuthorNamePrompter categoriesFor: #handleAuthorNameSubmission!private! !
!WAWelcomeAuthorNamePrompter categoriesFor: #renderContentOn:!public!rendering! !

