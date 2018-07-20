"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WARubyFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARubyFunctionalTest guid: (GUID fromString: '{705c7aee-0f16-4853-b17c-fae59438486c}')!
WARubyFunctionalTest comment: 'Examples taken directly from spec:http://www.w3.org/TR/2001/REC-ruby-20010531/'!
!WARubyFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WARubyFunctionalTest methodsFor!

renderContentOn: html	self renderSimpleOn: html.	self renderSimpleParenthesesOn: html!

renderSimpleOn: html	html heading level2; with: 'Simple ruby markup'.	html ruby: [		html text: 'WWW'.		html rubyText: 'World Wide Web' ]!

renderSimpleParenthesesOn: html	html heading level2; with: 'Simple ruby markup with parentheses'.	html ruby: [		html text: 'WWW'.		html rubyParentheses: '('.		html rubyText: 'World Wide Web'.		html rubyParentheses: ')' ]! !
!WARubyFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WARubyFunctionalTest categoriesFor: #renderSimpleOn:!public!rendering! !
!WARubyFunctionalTest categoriesFor: #renderSimpleParenthesesOn:!public!rendering! !

