"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAHtml5MultipleTextInputTest
	instanceVariableNames: 'emails'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtml5MultipleTextInputTest guid: (GUID fromString: '{81a7d85f-ea06-4907-8ca2-682614490fe3}')!

WAHtml5MultipleTextInputTest comment: ''!

!WAHtml5MultipleTextInputTest categoriesForClass!Unclassified! !

!WAHtml5MultipleTextInputTest methodsFor!

renderContentOn: html	self renderEmailsOn: html.	self renderFormOn: html!

renderEmailsOn: html	emails isNil ifTrue: [ ^ self ].	html unorderedList		list: emails!

renderFormOn: html	html form: [		html label: [			html text: 'CC: '.			html emailInput				listId: 'contacts';				multipleValuesCallback: [ :values |					emails := values ] ].		html datalist id: 'contacts'; with:  [			html option: 'hedral@damowmow.com'.			html option: 'pillar@example.com'.			html option: 'astrophy@cute.example'.			html option: 'astronomy@science.example.org' ].		html submitButton ]! !

!WAHtml5MultipleTextInputTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderEmailsOn:!public!rendering! !
renderFormOn:!public!rendering! !
!

