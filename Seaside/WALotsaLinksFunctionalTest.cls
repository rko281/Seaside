"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WALotsaLinksFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WALotsaLinksFunctionalTest guid: (GUID fromString: '{540587b4-1055-4f08-92f3-d83b1baf895e}')!
WALotsaLinksFunctionalTest comment: ''!
!WALotsaLinksFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WALotsaLinksFunctionalTest methodsFor!

renderContentOn: html 	self renderExplanationOn: html.	html unorderedList: [		1 to: 5000 do: [ :each | 			html listItem: [				html anchor					name: each;					callback: [						self 							inform: each							onAnswer: [ self session jumpToAnchor: each greaseString ] ];					with: each ] ] ]!

renderExplanationOn: html	html paragraph: [		html text: 'This test serves three purposes:'.		html orderedList: [			html listItem: 'First it is a regression test, earlier versions of Seaside could only handle a limited number of callbacks per page. The oldest links (low numbers) would use their callback. Clicking on any link should display this number with a button.'.			html listItem: 'Second it serves as a raw rendering speed benchmark.'.			html listItem: 'Third it tests WASession >> #jumpToAnchor:. After confirming the number you should return to the page and be automatically at the place where the link is.' ] ]! !
!WALotsaLinksFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WALotsaLinksFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !

