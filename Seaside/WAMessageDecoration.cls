"Filed out from Dolphin Smalltalk"!

WAWidgetDecoration subclass: #WAMessageDecoration
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMessageDecoration guid: (GUID fromString: '{239a6342-6119-4477-be03-70c41a9899b4}')!

WAMessageDecoration comment: 'I add a string message on top of the WAComponent I decorate. For example if change WACounter>>initialize as below the text "Counter Example" will appear on above the counter when rendered.WACounter>>initialize	super initialize.	self count: 0.	self addMessage: ''Counter Example''	"added line"'!

!WAMessageDecoration categoriesForClass!Seaside-Widgets-Decorations! !

!WAMessageDecoration methodsFor!

message: aString	message := aString!

renderContentOn: html	html heading level3; with: message.	self renderNextOn: html! !

!WAMessageDecoration categoriesForMethods!
message:!accessing!public! !
renderContentOn:!public!rendering! !
!

