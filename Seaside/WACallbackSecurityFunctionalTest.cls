"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WACallbackSecurityFunctionalTest
	instanceVariableNames: 'letter number'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACallbackSecurityFunctionalTest guid: (GUID fromString: '{ec64cba6-c2b5-414f-8d2d-a060a6b2a0d5}')!

WACallbackSecurityFunctionalTest comment: ''!

!WACallbackSecurityFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WACallbackSecurityFunctionalTest methodsFor!

initialize	super initialize.	number := 1.	letter := $A!

renderContentOn: html 	self renderInstructionsOn: html.	html form: [		html div: [			self renderNumberListOn: html.			self renderLetterListOn: html.			html submitButton ] ].	html paragraph: 'This should always be a NUMBER: ' , number greaseString.	html paragraph: 'This should always be a LETTER: ' , letter greaseString.	html paragraph: [		| url |		url := html actionUrl greaseString.		html anchor			url: '#';			onClick: 'swapCallbacks("' , url , '","letter-list", "number-list")';			with: 'Try to break it' ]!

renderInstructionsOn: html	html paragraph: 'This test requires JavaScript. The list boxes should behave normally when used with the submit button. The link will try to submit the value C to the number listbox and the value 3 to the letter list box.'.	html paragraph: 'Current behaviour results in C and 3 being selected in the appropriate lists. What is essential, however, is only that the values are not selected in the wrong list because this might allow an attacker to trick seaside into running methods on the wrong objects.'!

renderLetterListOn: html	html select		id: 'letter-list';		size: 3;		selected: letter;		list: (Array with: $A with: $B with: $C);		callback: [ :value | letter := value ]!

renderNumberListOn: html	html select		id: 'number-list';		size: 3;		selected: number;		list: (Array with: 1 with: 2 with: 3);		callback: [ :value | number := value ]!

script^ 'function swapCallbacks(url, list1id, list2id) {	list1 = document.getElementById(list1id);	list2 = document.getElementById(list2id);		document.location = url		+ "&" + list1.name + "=" + list2.options[2].value		+ "&" + list2.name + "=" + list1.options[2].value;}		'!

states	^ Array with: self! !

!WACallbackSecurityFunctionalTest categoriesForMethods!
initialize!initialization!public! !
renderContentOn:!public!rendering! !
renderInstructionsOn:!public!rendering! !
renderLetterListOn:!public!rendering! !
renderNumberListOn:!public!rendering! !
script!hooks!public! !
states!hooks!public! !
!

