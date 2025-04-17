"Filed out from Dolphin Smalltalk"!

WATool subclass: #WAInspector
	instanceVariableNames: 'path selected input'
	classVariableNames: 'Current'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInspector guid: (GUID fromString: '{1790737c-e467-4437-af53-d96b4525d7dd}')!

WAInspector comment: 'This is an abstract implementation of a web-based object inspector. Platforms should implement their own subclasses, specifying behaviour for all unimplemented methods.Note that #openNativeInspectorOn: on the class-side also needs to be implemented.Also subclasses probably want to implement #initialize and #unload on the class-side to call ''self select'' and ''self unselect'' respectively. This will ensure they are registered as the current implementation when they are loaded.'!

!WAInspector categoriesForClass!Core! !

!WAInspector methodsFor!

actions	"A list of action selectors used to render buttons in the Inspector."	^ #(doIt inspectIt)!

children	^ Array with: path!

chooseObject: anObject named: aString	"Choose a new object to be inspected, adding aString to the navigation path."	path pushSegment: anObject name: aString.	selected := nil!

doIt	"Execute the code in the textarea. We return the result so subclasses can do something	with it if desired."		^ self evaluate!

evaluate	"Evaluate the code in the textarea and return the result."		self subclassResponsibility!

fieldsFor: anObject	"Return a sequenceable collection of Associations representing labels and values	of instance variables, etc. which should be displayed when inspecting anObject."	self subclassResponsibility!

initialize	super initialize.	path := WAPath new!

inspectIt	"Evaluate the code in the textarea and then inspect the result."	| result |	result := self evaluate.	self 		chooseObject: result		named: result greaseString!

isPrimitiveType: anObject	"Return a boolean indicating whether anObject is a primitive type in the system.	Primitive types will not be rendered with a link allowing them to be inspected."	^ anObject isNumber or: [ #(nil true false) includes: anObject ]!

object	^ path currentSegment!

object: anObject 	self 		chooseObject: anObject		named: anObject greaseString!

renderContentOn: html	html heading		level: 1;		with: (self object printStringLimitedTo: 50).	html render: path.	html form: [		self renderMembersOn: html.		self renderEditAreaOn: html ]!

renderEditAreaOn: html	html textArea		value: input;		callback: [ :value | input := value ].	html break.	self actions do: [ :each |		html submitButton			callback: [ self perform: each ];			text: each ]!

renderMembersOn: html	| members radioGroup |	selected := nil.	members := self fieldsFor: self object.	members isEmpty ifTrue: [ ^ self ].	radioGroup := html radioGroup.	radioGroup		callback: [ :value | selected := value ];		selected: selected.	html table: [		members do: [ :association |			self				renderRow: association value				named: association key				group: radioGroup				on: html ] ]!

renderRow: anObject named: aString group: aRadioGroup on: html	| radioButton |	html tableRow: [		html tableHeading: [			radioButton := aRadioGroup radioButton				ensureId;				value: aString;				yourself.			html label for: radioButton id; with: [				(self isPrimitiveType: anObject)					ifTrue: [ html text: aString ]					ifFalse: [						html anchor							callback: [ self chooseObject: anObject named: aString ];							with: aString ] ] ].		html tableData: (anObject printStringLimitedTo: 100) ]!

style	^ 'form {	padding: 2px;	margin: 0;}form th {	text-align: left;	padding-right: 2em;}form textarea {	width: 100%;	height: 100px;	border: 1px solid #aaa;}'! !

!WAInspector categoriesForMethods!
actions!actions!public! !
children!hooks!public! !
chooseObject:named:!actions!public! !
doIt!actions!public! !
evaluate!actions!public! !
fieldsFor:!private! !
initialize!initialization!public! !
inspectIt!actions!public! !
isPrimitiveType:!public!testing! !
object!accessing!public! !
object:!accessing!public! !
renderContentOn:!public!rendering! !
renderEditAreaOn:!public!rendering! !
renderMembersOn:!public!rendering! !
renderRow:named:group:on:!public!rendering! !
style!hooks!public! !
!

!WAInspector class methodsFor!

current	^ Current!

current: anInspectorClass	Current := anInspectorClass!

on: anObject	^ self new object: anObject; yourself!

select	self current: self!

unselect	(self current = self) ifTrue: [ self current: nil ]! !

!WAInspector class categoriesForMethods!
current!public!registration! !
current:!public!registration! !
on:!instance creation!public! !
select!public!registration! !
unselect!public!registration! !
!

