﻿"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAWalkback
	instanceVariableNames: 'exception limit'
	classVariableNames: 'Current'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWalkback guid: (GUID fromString: '{223446c7-607e-49c7-8151-99cb3e9aaf98}')!

WAWalkback comment: 'An abstract component that renders an exception stack with temporary variables. Platforms should implement a concrete subclass and register that subclass when it is loaded.By default this class renders only the top few stack frames, but offers the option to render all. It also offers the option to open a debugger in the image or to proceed with the execution and answers true and false, respectively.'!

!WAWalkback categoriesForClass!Core! !

!WAWalkback methodsFor!

canAnswer	^ self decorations anySatisfy: [ :each |		each isKindOf: WAAnswerHandler ]!

debug	 self answer: true!

debugActionField	^ '_debugAction'!

debugUrl	^ self urlForDebugAction: '_debug'!

defaultLimit	"The default number of frames to display in the walkback."		^ 5!

exception	^ exception!

exceptionDescription	"Return a short string describing the exception."	^ String streamContents: [ :stream |		| e |		e := self exception.		stream nextPutAll: e class name.		e messageText isNil ifFalse: [			stream nextPutAll: ': '; nextPutAll: e messageText ] ]!

frameCount	"Return the number of frames or contexts in the walkback."		self subclassResponsibility!

fullStackUrl	^ self urlForDebugAction: '_fullStack'!

initializeWithException: anException	self initialize.	exception := anException!

limit	"The maximum number of frames to display."	^ limit ifNil: [ limit := self defaultLimit min: self frameCount ]!

limit: anInteger	limit := anInteger!

proceed	 self answer: false!

proceedUrl	^ self urlForDebugAction: '_proceed'!

renderAnsweringToolsOn: html	html anchor		callback: [ self debug ];		title: 'Open a debugger in your IDE and block until you hit "Proceed"';		with: 'Debug'.	self exception isResumable ifTrue: [		html space.		html anchor			callback: [ self proceed ];			with: 'Proceed' ].	self limit < self frameCount ifTrue: [		html space.		html anchor			callback: [ self showFullStack ];			with: 'Full Stack' ]!

renderContentOn: html	self renderHeadingOn: html.	self renderToolsOn: html.	self renderExceptionOn: html.	self renderStackOn: html!

renderExceptionOn: html	| problems |	problems := self exception seasidePossibleCauses.	problems isEmpty ifTrue: [ ^ self ].	html heading level: 3; with: 'Possible Causes'.	html unorderedList list: problems!

renderHeadingOn: html	html heading level: 1; with: 'Seaside Walkback'.	html heading level: 2; with: self exceptionDescription!

renderNotAnsweringToolsOn: html	html anchor		url: self debugUrl;		title: 'Open a debugger in your IDE and block until you hit "Proceed"';		with: 'Debug'.	self exception isResumable ifTrue: [		html space.		html anchor			url: self proceedUrl;			with: 'Proceed' ].	self limit < self frameCount ifTrue: [		html space.		html anchor			url: self fullStackUrl;			with: 'Full Stack' ]!

renderStackOn: html	"Render the walkback itself"		self subclassResponsibility!

renderToolsOn: html	html paragraph: [		"Ok, this is hack. This component can either be #call:ed or #render:ed directly (in which case it isn't really a component).		This it to be used in cases where you can't #call: (eg in the render phase). In that case we just render links without #callback:s.		However this doesn't work always either (eg. in a POST) so in these cases we #call:."		self canAnswer			ifTrue: [ self renderAnsweringToolsOn: html ]			ifFalse: [ self renderNotAnsweringToolsOn: html ] ]!

showFullStack	self limit: self frameCount!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	anHtmlRoot title: self exceptionDescription.	anHtmlRoot bodyAttributes addClass: 'walkback'.	WAToolFiles default updateRoot: anHtmlRoot!

urlForDebugAction: aString	| copy |	copy := self requestContext request url copy.	"We don't use #withField:value: or #addField:value: because we want to replace existing fields, not add to them.	For example _fullStack may already be present and we want to set _debug."	copy queryFields at: self debugActionField put: aString.	^ copy! !

!WAWalkback categoriesForMethods!
canAnswer!private! !
debug!actions!public! !
debugActionField!private! !
debugUrl!accessing/url!public! !
defaultLimit!accessing!public! !
exception!accessing!public! !
exceptionDescription!accessing!public! !
frameCount!accessing!public! !
fullStackUrl!accessing/url!public! !
initializeWithException:!initialization!public! !
limit!accessing!public! !
limit:!accessing!public! !
proceed!actions!public! !
proceedUrl!accessing/url!public! !
renderAnsweringToolsOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderExceptionOn:!public!rendering! !
renderHeadingOn:!public!rendering! !
renderNotAnsweringToolsOn:!public!rendering! !
renderStackOn:!public!rendering! !
renderToolsOn:!public!rendering! !
showFullStack!actions!public! !
updateRoot:!public!updating! !
urlForDebugAction:!private! !
!

!WAWalkback class methodsFor!

current	^ Current!

current: aWalkbackClass	Current := aWalkbackClass!

exception: anException	^ self basicNew initializeWithException: anException; yourself!

select	self current: self!

unselect	(self current = self) ifTrue: [ self current: nil ]! !

!WAWalkback class categoriesForMethods!
current!public!registration! !
current:!public!registration! !
exception:!instance creation!public! !
select!public!registration! !
unselect!public!registration! !
!

