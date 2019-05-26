"Filed out from Dolphin Smalltalk 7"!

WAWidgetDecoration subclass: #WAMessageDecoration
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMessageDecoration guid: (GUID fromString: '{26188a34-a30c-438d-b99a-67f86333f0ea}')!
WAMessageDecoration comment: 'I add a string message on top of the WAComponent I decorate. For example if change WACounter>>initialize as below the text "Counter Example" will appear on above the counter when rendered.WACounter>>initialize	super initialize.	self count: 0.	self addMessage: ''Counter Example''	"added line"'!
!WAMessageDecoration categoriesForClass!Seaside-Widgets-Decorations! !
!WAMessageDecoration methodsFor!

message: aString	message := aString!

renderContentOn: html	html heading level3; with: message.	self renderNextOn: html! !
!WAMessageDecoration categoriesFor: #message:!accessing!public! !
!WAMessageDecoration categoriesFor: #renderContentOn:!public!rendering! !

