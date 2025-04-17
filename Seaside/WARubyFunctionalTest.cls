"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WARubyFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARubyFunctionalTest guid: (GUID fromString: '{497006a5-566a-4297-b160-e6383afa46ca}')!

WARubyFunctionalTest comment: 'Examples taken directly from spec:http://www.w3.org/TR/2001/REC-ruby-20010531/'!

!WARubyFunctionalTest categoriesForClass!Unclassified! !

!WARubyFunctionalTest methodsFor!

renderContentOn: html	self renderSimpleOn: html.	self renderSimpleParenthesesOn: html!

renderSimpleOn: html	html heading level2; with: 'Simple ruby markup'.	html ruby: [		html text: 'WWW'.		html rubyText: 'World Wide Web' ]!

renderSimpleParenthesesOn: html	html heading level2; with: 'Simple ruby markup with parentheses'.	html ruby: [		html text: 'WWW'.		html rubyParentheses: '('.		html rubyText: 'World Wide Web'.		html rubyParentheses: ')' ]! !

!WARubyFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderSimpleOn:!public!rendering! !
renderSimpleParenthesesOn:!public!rendering! !
!

