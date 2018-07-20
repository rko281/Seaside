"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAHtml5MultipleTextInputTest
	instanceVariableNames: 'emails'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtml5MultipleTextInputTest guid: (GUID fromString: '{1b0eee4e-5793-42eb-826f-a7a664d4255f}')!
WAHtml5MultipleTextInputTest comment: ''!
!WAHtml5MultipleTextInputTest categoriesForClass!Seaside-Tests-Functional! !
!WAHtml5MultipleTextInputTest methodsFor!

renderContentOn: html	self renderEmailsOn: html.	self renderFormOn: html!

renderEmailsOn: html	emails isNil ifTrue: [ ^ self ].	html unorderedList		list: emails!

renderFormOn: html	html form: [		html label: [			html text: 'CC: '.			html emailInput				listId: 'contacts';				multipleValuesCallback: [ :values |					emails := values ] ].		html datalist id: 'contacts'; with:  [			html option: 'hedral@damowmow.com'.			html option: 'pillar@example.com'.			html option: 'astrophy@cute.example'.			html option: 'astronomy@science.example.org' ].		html submitButton ]! !
!WAHtml5MultipleTextInputTest categoriesFor: #renderContentOn:!public!rendering! !
!WAHtml5MultipleTextInputTest categoriesFor: #renderEmailsOn:!public!rendering! !
!WAHtml5MultipleTextInputTest categoriesFor: #renderFormOn:!public!rendering! !

