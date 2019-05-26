"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAWelcomeGettingStarted
	instanceVariableNames: 'componentCreator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeGettingStarted guid: (GUID fromString: '{fc4711d6-2d1b-4b3a-b1bd-fbe8a650d2ae}')!
WAWelcomeGettingStarted comment: ''!
!WAWelcomeGettingStarted categoriesForClass!Seaside-Welcome! !
!WAWelcomeGettingStarted methodsFor!

children 	^ Array with: self componentCreator !

componentCreator	^ componentCreator ifNil: [ componentCreator := WAWelcomeComponentCreator new ]!

renderContentOn: html	html heading		level1;		with: 'Getting started'.				html heading		level2		with: 'Test the water with the steps below:'.					html orderedList: [		html listItem: [ self renderExamplesStepOn: html ].		html listItem: [ self renderFirstComponentStepOn: html ].		html listItem: [ self renderDocumentationStepOn: html ] ]!

renderDocumentationStepOn: html	html heading		level3;		with: 'Browse the documentation'.			html unorderedList: [ 		html listItem: [			html text: 'The  '.			html anchor				url: 'http://book.seaside.st/';				with: 'Seaside Book'.			html text: ' will teach you all you need to know about Seaside and how to build killer web applications.' ].		html listItem: [ 			html text: 'The '.			html anchor				url: 'http://www.swa.hpi.uni-potsdam.de/seaside/tutorial';				with: 'Seaside Tutorial'.			html text: ' has 12 chapters and introduces a sample application to explain the main features of Seaside.' ] ]!

renderExamplesStepOn: html	html heading		level3;		with: 'Try out some examples'.			html		unorderedList: [ 			html listItem: [ 				html anchor					callback: [ self show: WAWelcomeExampleCounter new ];					with: 'Counter'.				html text: ', a simple Seaside component.' ].			html listItem: [				html anchor					callback: [ self show: WAWelcomeExampleMultiCounter new ];					with: 'Multi-Counter'.				html text: ', showing how Seaside components can be re-used.' ].			html listItem: [ 				html anchor					callback: [ self show: WAWelcomeExampleFlow new ];					with: 'Task'.				html text: ', illustrating Seaside''s innovative approach to application control flow.' ] ]!

renderFirstComponentStepOn: html	html heading		level3;		with: 'Create your first component'.			html render: self componentCreator! !
!WAWelcomeGettingStarted categoriesFor: #children!hooks!public! !
!WAWelcomeGettingStarted categoriesFor: #componentCreator!accessing!public! !
!WAWelcomeGettingStarted categoriesFor: #renderContentOn:!public!rendering! !
!WAWelcomeGettingStarted categoriesFor: #renderDocumentationStepOn:!public!rendering/steps! !
!WAWelcomeGettingStarted categoriesFor: #renderExamplesStepOn:!public!rendering/steps! !
!WAWelcomeGettingStarted categoriesFor: #renderFirstComponentStepOn:!public!rendering/steps! !

