"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAHtml5MultipleTextInputTest
	instanceVariableNames: 'emails'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtml5MultipleTextInputTest guid: (GUID fromString: '{51766960-24c3-496a-b74b-a8a35ec0912a}')!

WAHtml5MultipleTextInputTest comment: ''!

!WAHtml5MultipleTextInputTest categoriesForClass!Seaside-Tests-Functional! !

!WAHtml5MultipleTextInputTest methodsFor!

renderContentOn: html	self renderEmailsOn: html.	self renderFormOn: html!

renderEmailsOn: html	emails isNil ifTrue: [ ^ self ].	html unorderedList		list: emails!

renderFormOn: html	html form: [		html label: [			html text: 'CC: '.			html emailInput				listId: 'contacts';				multipleValuesCallback: [ :values |					emails := values ] ].		html datalist id: 'contacts'; with:  [			html option: 'hedral@damowmow.com'.			html option: 'pillar@example.com'.			html option: 'astrophy@cute.example'.			html option: 'astronomy@science.example.org' ].		html submitButton ]! !

!WAHtml5MultipleTextInputTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderEmailsOn:!public!rendering! !
renderFormOn:!public!rendering! !
!

