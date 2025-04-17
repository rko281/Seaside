"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WALotsaLinksFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WALotsaLinksFunctionalTest guid: (GUID fromString: '{d4bf66df-fd42-4085-a666-c15401c2d2c6}')!

WALotsaLinksFunctionalTest comment: ''!

!WALotsaLinksFunctionalTest categoriesForClass!Unclassified! !

!WALotsaLinksFunctionalTest methodsFor!

renderContentOn: html 	"Note: we use  ̀(1 to: 5000) do: []̀ instead of (1 to: 500 do: [])	to avoid scoping issues in Integer>>#to:do: in other dialects."	self renderExplanationOn: html.	html unorderedList: [		1 to: 5000 do: [ :each | 			html listItem: [				html anchor					id: 'linkid-', each greaseString;					callback: [						self 							inform: each							onAnswer: [ self session jumpToAnchor: each greaseString ] ];					with: each ] ] ]!

renderExplanationOn: html	html paragraph: [		html text: 'This test serves three purposes:'.		html orderedList: [			html listItem: 'First it is a regression test, earlier versions of Seaside could only handle a limited number of callbacks per page. The oldest links (low numbers) would use their callback. Clicking on any link should display this number with a button.'.			html listItem: 'Second it serves as a raw rendering speed benchmark.'.			html listItem: 'Third it tests WASession >> #jumpToAnchor:. After confirming the number you should return to the page and be automatically at the place where the link is.' ] ]! !

!WALotsaLinksFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
!

