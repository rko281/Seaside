"Filed out from Dolphin Smalltalk"!

WATask subclass: #WAWelcomeComponentCreator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWelcomeComponentCreator guid: (GUID fromString: '{cd985d6c-c3a2-4a19-bc5b-3d09a4c0651b}')!

WAWelcomeComponentCreator comment: ''!

!WAWelcomeComponentCreator categoriesForClass!Seaside-Welcome-Base! !

!WAWelcomeComponentCreator methodsFor!

checkAuthorInitials	GRPlatform current seasideIsAuthorNameSet		ifFalse: [ self call: WAWelcomeAuthorNamePrompter new ]!

chooseComponentName	^ self call: WAWelcomeComponentNamePrompter new!

createComponent: componentName	| userComponent |		Smalltalk globals at: componentName ifPresent: [ :class |		self inform: 'Sorry a component named: ''', componentName, ''' already exists, please choose a different name.'. 		^ nil ].	componentName first isLetter ifFalse: [		self inform: '''', componentName, ''' is not a valid name for a component. Component names should begin with a letter. Please choose again.'.		^ nil ].		userComponent := GRPlatform current		subclassOf: WAComponent		named: componentName		categorized: 'Seaside-User-Examples'.			userComponent isNil ifTrue: [		self inform: 'A problem occurred creating ''', componentName, ''' component..'.		^ nil ].		GRPlatform current 		compile: self sampleComponentRenderMethod		into: userComponent		classified: #rendering.		WAAdmin register: userComponent asApplicationAt: componentName.				^ userComponent new!

displayComponent: component named: componentName	self call: (WAWelcomeComponentConfirmation component: component named: componentName)!

go	| componentName component |		[		[			componentName := self chooseComponentName.			self checkAuthorInitials.   			component := self createComponent: componentName.					component isNil		] whileTrue.	    	self displayComponent: component named: componentName	] repeat!

sampleComponentRenderMethod	^ 'renderContentOn: html	html image url: ''http://www.seaside.st/styles/logo-plain.png''.	html paragraph: ''Hello World from Seaside.''.	html paragraph: [ 		html text: ''To learn more about Seaside components follow the link to the book: ''.		html anchor			url: ''http://book.seaside.st/book/fundamentals/rendering-components'';			with: ''Dynamic Web Development with Seaside''.		html text: ''.'' ]'! !

!WAWelcomeComponentCreator categoriesForMethods!
checkAuthorInitials!public!tasks! !
chooseComponentName!public!tasks! !
createComponent:!public!tasks! !
displayComponent:named:!public!tasks! !
go!public!running! !
sampleComponentRenderMethod!private! !
!

