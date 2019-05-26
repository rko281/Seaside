"Filed out from Dolphin Smalltalk 7"!

WAWelcomeExample subclass: #WAWelcomeExampleMultiCounter
	instanceVariableNames: 'multicounter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeExampleMultiCounter guid: (GUID fromString: '{6cbbf68c-55e5-4797-8232-03189902c384}')!
WAWelcomeExampleMultiCounter comment: ''!
!WAWelcomeExampleMultiCounter categoriesForClass!Seaside-Welcome! !
!WAWelcomeExampleMultiCounter methodsFor!

children	^ Array with: self multicounter!

multicounter	^ multicounter ifNil: [ multicounter := multicounter := WAMultiCounter new ]!

renderChildrenCodeOn: html	html preformatted class: #codeSample; with: [		html span class: #patternUnary; with: 'children'. html break.		html text: '    ^ '. html span class: #instanceVar; with: 'counters' ]!

renderExampleOn: html	html paragraph: [		html text: 'Multicounter is a simple extension to the '.		html anchor callback: [ self show: WAWelcomeExampleCounter new ]; with: 'Counter'.		html text: ' application. It displays several instances of the same '.		html anchor callback: [ self show: WAWelcomeExampleCounter new ]; with: 'Counter'.		html text: ' component:'		].		html div class: #seasideExample; with: multicounter.		html paragraph: [		html text: 'This component is implemented in a few lines of code. The code is contained in the class '; code: 'WAMultiCounter'; text: ', a subclass of '; code: 'WAComponent. ' ].	html paragraph: 'The first method is used to initialize the component, in this case we instantiate 5 counters:'.	 	self renderInitializeCodeOn: html.		html paragraph: 'We then tell Seaside which child components we intend to display. In our case this is just the collection of counter instances:'.		self renderChildrenCodeOn: html.		html paragraph: 'Finally we display each of the components separated by a horizontal rule:'.		self renderRenderContentsOnCodeOn: html	!

renderInitializeCodeOn: html	html preformatted class: #codeSample; with: [		html span class: #patternUnary; with: 'initialize'. html break.		html span class: #super; with:'    super'. html text:' initialize.'. html break.    		html span class: #instanceVar; with:'    counters'. html text: ' := ('. html span class: #number; with: '1'. html text:' to: '. html span class: #number; with: '5'. html text: ')'. html break.		html text: '         collect: [ '. html span class: #blockArg; with: ':each'. html text: ' | '. html span class: #class; with: 'WACounter'. html text:' new ]' ]!

renderRenderContentsOnCodeOn: html	html preformatted class: #codeSample; with: [		html span class: #patternKeyword; with: 'renderContentOn: '. html span class: #patternArg; with: 'html'. html break.    		html span class: #instanceVar; with: '    counters'. html break.		html text: '        do: [ '. html span class: #blockArg; with: ':each'. html text: ' | '. html span class: #receiver; with: 'html'.  html text: ' render: '. html span class: #patternArg; with:'each'. html text: ' ]'. html break.		html text: '         separatedBy: [ '.  html span class: #receiver; with: 'html'. html text: ' horizontalRule ]' ]!

title	^ 'Multi-Counter'! !
!WAWelcomeExampleMultiCounter categoriesFor: #children!hooks!public! !
!WAWelcomeExampleMultiCounter categoriesFor: #multicounter!accessing!public! !
!WAWelcomeExampleMultiCounter categoriesFor: #renderChildrenCodeOn:!public!rendering! !
!WAWelcomeExampleMultiCounter categoriesFor: #renderExampleOn:!public!rendering! !
!WAWelcomeExampleMultiCounter categoriesFor: #renderInitializeCodeOn:!public!rendering! !
!WAWelcomeExampleMultiCounter categoriesFor: #renderRenderContentsOnCodeOn:!public!rendering! !
!WAWelcomeExampleMultiCounter categoriesFor: #title!private! !

