"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAHtml5OrderedListTest
	instanceVariableNames: 'reversed start type'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtml5OrderedListTest guid: (GUID fromString: '{254d53c6-5a48-4bb0-8cf3-14c5024edaa2}')!
WAHtml5OrderedListTest comment: ''!
!WAHtml5OrderedListTest categoriesForClass!Seaside-Tests-Functional! !
!WAHtml5OrderedListTest methodsFor!

initialize	super initialize.	reversed := true.	start := 2.	type := $I!

items	^ #(		'If Request-URI is an absoluteURI, the host is part of the Request-URI. Any Host header field value in the request MUST be ignored.'		'If the Request-URI is not an absoluteURI, and the request includes a Host header field, the host is determined by the Host header field value.'		'If the host as determined by rule 1 or 2 is not a valid host on the server, the response MUST be a 400 (Bad Request) error message.'	)!

renderConfigurationOn: html	html form: [ 		html paragraph: [						self renderTypeOn: html.			html space.			self renderStartOn: html.			html space.			self renderReversedOn: html.			html space.			html submitButton ] ]!

renderContentOn: html	self renderConfigurationOn: html.	self renderListOn: html!

renderListOn: html	html orderedList		reversed: reversed;		start: start;		type: type;		with: [			self items do: [ :each |				html listItem: each ] ]!

renderReversedOn: html				html checkbox		id: html nextId;		value: reversed;		callback: [ :value | reversed := value ].	html space.	html label		for: html lastId;		with: 'reversed'!

renderStartOn: html	html label		for: html nextId;		with: 'start:'.	html space.	html numberInput		value: start;		callback: [ :value |  [ start := value greaseInteger ] on: Error do: [ :e | "ignore" nil ] ]!

renderTypeOn: html	html label		for: html nextId;		with: 'type:'.	html space.	html select		id: html lastId;		list: self types;		selected: type;		labels: [ :s | self typesDictionary at: s ];		callback: [ :value | type:= value ]!

types	^ '1aAiI'!

typesDictionary	^ Dictionary new		add: $1 -> 'decimal';		add: $a -> 'lower-alpha';		add: $A -> 'upper-alpha';		add: $i -> 'lower-roman';		add: $I -> 'upper-roman';		yourself! !
!WAHtml5OrderedListTest categoriesFor: #initialize!initialization!public! !
!WAHtml5OrderedListTest categoriesFor: #items!accessing!public! !
!WAHtml5OrderedListTest categoriesFor: #renderConfigurationOn:!public!rendering! !
!WAHtml5OrderedListTest categoriesFor: #renderContentOn:!public!rendering! !
!WAHtml5OrderedListTest categoriesFor: #renderListOn:!public!rendering! !
!WAHtml5OrderedListTest categoriesFor: #renderReversedOn:!public!rendering! !
!WAHtml5OrderedListTest categoriesFor: #renderStartOn:!public!rendering! !
!WAHtml5OrderedListTest categoriesFor: #renderTypeOn:!public!rendering! !
!WAHtml5OrderedListTest categoriesFor: #types!accessing!public! !
!WAHtml5OrderedListTest categoriesFor: #typesDictionary!accessing!public! !

