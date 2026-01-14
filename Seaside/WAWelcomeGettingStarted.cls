"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAWelcomeGettingStarted
	instanceVariableNames: 'componentCreator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWelcomeGettingStarted guid: (GUID fromString: '{c2c099ea-d311-4bbf-aea7-378a7b85ba4f}')!

WAWelcomeGettingStarted comment: ''!

!WAWelcomeGettingStarted categoriesForClass!Seaside-Welcome-Base! !

!WAWelcomeGettingStarted methodsFor!

children 	^ Array with: self componentCreator!

componentCreator	^ componentCreator ifNil: [ componentCreator := WAWelcomeComponentCreator new ]!

renderContentOn: html	html heading		level1;		with: 'Getting started'.				html heading		level2		with: 'Test the water with the steps below:'.					html orderedList: [		html listItem: [ self renderExamplesStepOn: html ].		html listItem: [ self renderFirstComponentStepOn: html ].		html listItem: [ self renderDocumentationStepOn: html ] ]!

renderDocumentationStepOn: html	html heading		level3;		with: 'Browse the documentation'.			html unorderedList: [ 		html listItem: [			html text: 'The  '.			html anchor				url: 'http://book.seaside.st/';				with: 'Seaside Book'.			html text: ' will teach you all you need to know about Seaside and how to build killer web applications.' ].		html listItem: [			html text: 'The '.			html anchor				url: 'https://github.com/SeasideSt/Seaside/wiki';				with: 'Seaside Github wiki'.			html text: ' is where we keep our most up-to-date reference documentation.' ].		html listItem: [ 			html text: 'The '.			html anchor				url: 'http://www.hpi.uni-potsdam.de/hirschfeld/seaside/tutorial/';				with: 'Seaside Tutorial'.			html text: ' has 12 chapters and introduces a sample application to explain the main features of Seaside.' ] ]!

renderExamplesStepOn: html	html heading		level3;		with: 'Try out some examples'.			html		unorderedList: [ 			html listItem: [ 				html anchor					callback: [ self show: WAWelcomeExampleCounter new ];					with: 'Counter'.				html text: ', a simple Seaside component.' ].			html listItem: [				html anchor					callback: [ self show: WAWelcomeExampleMultiCounter new ];					with: 'Multi-Counter'.				html text: ', showing how Seaside components can be re-used.' ].			html listItem: [ 				html anchor					callback: [ self show: WAWelcomeExampleFlow new ];					with: 'Task'.				html text: ', illustrating Seaside''s innovative approach to application control flow.' ].			html listItem: [ 				html anchor					callback: [ self show: WATodo new ];					with: 'Todo'.				html text: ', the Seaside implementation of the example on '.				html anchor 					url: 'https://todomvc.com/';					target: '_blank';					with: 'https://todomvc.com/' ] ]!

renderFirstComponentStepOn: html	html heading		level3;		with: 'Create your first component'.			html render: self componentCreator! !

!WAWelcomeGettingStarted categoriesForMethods!
children!hooks!public! !
componentCreator!accessing!public! !
renderContentOn:!public!rendering! !
renderDocumentationStepOn:!public!rendering/steps! !
renderExamplesStepOn:!public!rendering/steps! !
renderFirstComponentStepOn:!public!rendering/steps! !
!

