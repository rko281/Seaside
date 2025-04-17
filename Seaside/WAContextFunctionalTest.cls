"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAContextFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAContextFunctionalTest guid: (GUID fromString: '{b6c1e212-bf65-47b8-bee6-46d57e56576a}')!

WAContextFunctionalTest comment: ''!

!WAContextFunctionalTest categoriesForClass!Unclassified! !

!WAContextFunctionalTest methodsFor!

renderContentOn: html	self renderExplanationOn: html.	html table: [		self renderLabel: 'Codec:' value:  self requestContext codec on: html.		self renderLabel: 'Session:' value:  self requestContext session on: html.		self renderLabel: 'Application:' value:  self requestContext application on: html.		self renderLabel: 'Request:' value:  self requestContext request on: html.		self renderLabel: 'Response:' value:  self requestContext response on: html.		self renderRequestHandlersOn: html.		self renderPropertiesOn: html ]!

renderExplanationOn: html	html paragraph: 'The purpose of this test is to make sure WAContext and WACurrentContext work correctly. For each label you should see the print string of one or several matching objects. For the ''Request Handlers'' the first object should be a WARenderLoopContinuation or subclass, then a WASession or subclass, the third a WAApplication and then one or several WADispatchers matching the path.'!

renderLabel: aString value: anObject on: html	html tableRow		id: aString;		with: [ 			html tableHeading: aString.			html tableData: anObject ]!

renderPropertiesOn: html	html tableRow: [		html tableHeading: 'Properties:'.		html tableData: [			| properties |			properties := self requestContext properties.			properties isEmpty ifFalse: [				html definitionList: [					properties keysAndValuesDo: [ :key :value |						html definitionTerm: key.						html definitionData: value ] ] ] ] ]!

renderRequestHandlersOn: html	html tableRow: [ 		html tableHeading: 'Request Handlers:'.		html tableData			id: 'handlers';			with: [ html orderedList list: self requestContext handlers ] ]! !

!WAContextFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
renderLabel:value:on:!public!rendering! !
renderPropertiesOn:!public!rendering! !
renderRequestHandlersOn:!public!rendering! !
!

