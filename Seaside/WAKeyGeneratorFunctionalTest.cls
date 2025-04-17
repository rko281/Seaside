"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAKeyGeneratorFunctionalTest
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAKeyGeneratorFunctionalTest guid: (GUID fromString: '{39ef7464-a2b0-4128-84ef-78489a4faa12}')!

WAKeyGeneratorFunctionalTest comment: ''!

!WAKeyGeneratorFunctionalTest categoriesForClass!Unclassified! !

!WAKeyGeneratorFunctionalTest methodsFor!

renderContentOn: html	self renderExplanationOn: html.	key isNil		ifTrue: [ self renderKeyGeneratorOn: html ]		ifFalse: [ self renderKeyOn: html ]!

renderExplanationOn: html	html paragraph: 'This test should display a dialog for creating a secret key. After submitting the form the public key should be displayed.'.	html paragraph: 'This test does not work on IE'!

renderKeyGeneratorOn: html	html form: [		html keyGenerator			callback: [ :k | key := k ].		html submitButton ]!

renderKeyOn: html	html render: key! !

!WAKeyGeneratorFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
renderKeyGeneratorOn:!public!rendering! !
renderKeyOn:!public!rendering! !
!

