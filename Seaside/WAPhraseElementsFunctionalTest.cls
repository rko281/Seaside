"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAPhraseElementsFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPhraseElementsFunctionalTest guid: (GUID fromString: '{fccd4546-9fbd-4f5b-88b3-1bb09b60ed2e}')!
WAPhraseElementsFunctionalTest comment: ''!
!WAPhraseElementsFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAPhraseElementsFunctionalTest methodsFor!

renderAbbreviatedOn: html	html heading level2; with: '<abbr>'.	html paragraph: [		html abbreviated			title: 'World Wide Web';			with: 'WWW' ]!

renderAcronymOn: html	html heading level2; with: '<acronym>'.	html paragraph: [		html acronym			title: 'Federal Bureau of Investigation';			with: 'F.B.I.' ]!

renderAddressOn: html	html heading level2; with: '<address>'.	html address: [		#(			'Newsletter editor'			'J.R. Brown'			'JimquickPost News, Jimquick, CT 01234'			'Tel (123) 456 7890')			do: [ :each | html text: each ]			separatedBy: [ html break ] ]!

renderCodeOn: html	html heading level2; with: '<code>'.	html paragraph: [		html text: 'Expressions like '.		html code: 'a[i++] + b[i++]'.		html text: ' should not be used, since they cause undefined behavior' ]!

renderContentOn: html	self renderHarryOn: html.	self renderAbbreviatedOn: html.	self renderAcronymOn: html.	self renderKeyboardInputOn: html.	self renderVariableOn: html.	self renderCodeOn: html.	self renderDefinitionOn: html.	self renderSampleOn: html.	self renderAddressOn: html.	self renderModificationOn: html!

renderDefinitionOn: html	html heading level2; with: '<dfn>'.	html paragraph: [		html definition: 'Ichthyology'.		html text: ' is the branch of natural science which studies fish.' ]!

renderHarryOn: html	html heading level2; with: '<cite>, <q>, <strong>'.	html paragraph: [		html text: 'As '.		html citation: 'Harry S. Truman'.		html text: ' said, '.		html quote: 'The buck stops here.'.		html break.		html text: 'More information can be found in '.		html citation: '[ISO-0000]'.		html text: '.'.		html break.		html text: 'Please refer to the following reference number in future correspondence: '.		html strong: '1-234-55' ]!

renderKeyboardInputOn: html	html heading level2; with: '<kbd>'.	html paragraph: [		html text: 'Finally, type '.		html keyboard: 'logout'.		html text: ' and press the return key.' ]!

renderModificationOn: html	html heading level2; with: '<ins>, <del>'.	html paragraph: [		html text: 'A Sheriff can employ '.		html deleted			title: 'Changed as a result of the SECURE bill.';			cite: 'http://www.w3.org/TR/html401/struct/text.html#edef-del';			datetime: '1994-11-05T08:15:30-05:00';			with: 3.		html inserted			title: 'Changed as a result of the SECURE bill.';			cite: 'http://www.w3.org/TR/html401/struct/text.html#edef-del';			datetime: '1994-11-05T08:15:30-05:00';			with: 5.		html text: ' deputies.' ]!

renderSampleOn: html	html heading level2; with: '<samp>'.	html paragraph: [		html text: 'If you select the ''champion'' option, you will receive the message '.		html sample: 'The monkey is not a caterpillar'.		html text: '.' ]!

renderVariableOn: html	html heading level2; with: '<var>'.	html paragraph: [		html text: 'In the simplest case, the command for deleting a file in Unix is'.		html break.		html keyboard: 'rm'.		html space.		html variable: 'filename' ]! !
!WAPhraseElementsFunctionalTest categoriesFor: #renderAbbreviatedOn:!public!rendering! !
!WAPhraseElementsFunctionalTest categoriesFor: #renderAcronymOn:!public!rendering! !
!WAPhraseElementsFunctionalTest categoriesFor: #renderAddressOn:!public!rendering! !
!WAPhraseElementsFunctionalTest categoriesFor: #renderCodeOn:!public!rendering! !
!WAPhraseElementsFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAPhraseElementsFunctionalTest categoriesFor: #renderDefinitionOn:!public!rendering! !
!WAPhraseElementsFunctionalTest categoriesFor: #renderHarryOn:!public!rendering! !
!WAPhraseElementsFunctionalTest categoriesFor: #renderKeyboardInputOn:!public!rendering! !
!WAPhraseElementsFunctionalTest categoriesFor: #renderModificationOn:!public!rendering! !
!WAPhraseElementsFunctionalTest categoriesFor: #renderSampleOn:!public!rendering! !
!WAPhraseElementsFunctionalTest categoriesFor: #renderVariableOn:!public!rendering! !

