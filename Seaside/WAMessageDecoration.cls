"Filed out from Dolphin Smalltalk 7"!

WAWidgetDecoration subclass: #WAMessageDecoration
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMessageDecoration guid: (GUID fromString: '{2034b3f5-5e76-4ea8-b5d9-a8fb5df25959}')!
WAMessageDecoration comment: 'I add a string message on top of the WAComponent I decorate. For example if change WACounter>>initialize as below the text "Counter Example" will appear on above the counter when rendered.WACounter>>initialize	super initialize.	self count: 0.	self addMessage: ''Counter Example''	"added line"'!
!WAMessageDecoration categoriesForClass!Seaside-Widgets-Decorations! !
!WAMessageDecoration methodsFor!

message: aString	message := aString!

renderContentOn: html	html heading level3; with: message.	self renderNextOn: html! !
!WAMessageDecoration categoriesFor: #message:!accessing!public! !
!WAMessageDecoration categoriesFor: #renderContentOn:!public!rendering! !

