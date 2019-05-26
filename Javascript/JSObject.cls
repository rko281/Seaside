"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #JSObject
	instanceVariableNames: 'decoration renderContext rendererClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSObject guid: (GUID fromString: '{46c2bb58-d29d-4754-9559-7a252c686f7e}')!
JSObject comment: 'I represent the abstract root of all JavaScript objects in the Smalltalk world. My subclasses provide accessors and action methods to configure instances of myself and implement the method #javascriptContentOn: to emit valid JavaScript code for my presentation.Instance Variables	decoration:			<JSObject|JSDecoration>	renderContext:		<WARenderContext>	rendererClass:		<WARenderer>'!
!JSObject categoriesForClass!Javascript-Core-Base! !
!JSObject methodsFor!

& anObject 	"Combine the receiver and anObject with a logical AND."		self addDecoration: (JSBinary new operator: '&&'; statement: anObject)!

, anObject 	"Concatenate the receiver with anObject."	self addDecoration: (JSConcatenation on: anObject)!

| anObject 	"Combine the receiver and anObject with a logical OR."		self addDecoration: (JSBinary new operator: '||'; statement: anObject)!

access: aString 	"Access the member aString."		self addDecoration: (JSAccess named: aString)!

addDecoration: aDecoration	"Add a new decoration to the receiver."	aDecoration setOwner: decoration.	decoration := aDecoration!

alias: aString 	"Uses aString as an alias for the receiver."		self addDecoration: (JSAlias named: aString)!

apply: aCollection 	"Apply aCollection of arguments."		self addDecoration: (JSApply new arguments: aCollection)!

assign: anObject 	"Assign anObject to the receiver."		self addDecoration: (JSAssignment new object: anObject)!

assignLocalTo: aString 	"Assign the receiver to a local variable aString."		self addDecoration: (JSAssignLocal named: aString)!

assignTo: aString 	"Assign the receiver to a global variable aString."		self addDecoration: (JSAssign named: aString)!

call: aString	"Call the method named aString."	self call: aString withArguments: #()!

call: aString with: anObject	"Call the method named aString with anObject as its argument."	self call: aString withArguments: (Array with: anObject)!

call: aString with: anObject1 with: anObject2	"Call the method named aString with anObject1 and anObject2 as its arguments."	self call: aString withArguments: (Array with: anObject1 with: anObject2)!

call: aString with: anObject1 with: anObject2 with: anObject3	"Call the method named aString with anObject1 and anObject2 and anObject3 as its arguments."	self call: aString withArguments: (Array with: anObject1 with: anObject2 with: anObject3)!

call: aString withArguments: anArray	"Call the method named aString with anArray as arguments."	self addDecoration: (JSCall new 		name: aString;		arguments: anArray;		yourself)!

condition: anObject 	"Treat anObject as a condition to the execution of the receiver."		self addDecoration: (JSCondition on: anObject)!

condition: anObject  else: otherObject	"Treat anObject as a condition to the execution of the receiver."		self addDecoration: (JSConditionElse on: anObject else: otherObject)!

confirm: anObject 	"Show a confirmation with the message anObject before evaluating the receiver."		self condition: (JSStream new		nextPutAll: 'confirm';		argument: anObject)!

create	"Instantiate the receiver."		self addDecoration: JSCreate new!

decoration	"Answer the top-level decoration in the receivers decoration stack."	^ decoration!

greaseString	^ String streamContents: [ :stream | stream javascript: self ]!

initialize	super initialize.	decoration := self!

interval: aDuration	"Execute the receiver every aDuration."	self addDecoration: (JSInterval duration: aDuration)!

isJavascript	^ true!

javascriptContentOn: aStream	"Generate the JavaScript string of the receiver. Override this method in subclasses to define custom JavaScript code. Note, if you run into this method, you likely use old Seaside code need to rename #printContentOn: to #javascriptContentOn:."		self subclassResponsibility!

javascriptOn: aStream	"Generate the JavaScript code from the receiver by dispatching to the outermost surrounding decoration. Do not override this method, instead override #javascriptContentOn:."	self decoration javascriptContentOn: aStream!

not	"Negate the receiver logically."		self addDecoration: JSNegation new!

printOn: aStream	super printOn: aStream.	aStream nextPutAll: ' ('; javascript: self; nextPut: $)!

property: aString 	"Treat anObject as a condition to the execution of the receiver."		self addDecoration: (JSProperty named: aString)!

render: aRenderable	"Render aRenderable and answer the resulting string."		^ String streamContents: [ :stream | self render: aRenderable on: stream ]!

render: aRenderable on: aStream	"Render aRenderable on aStream."		| document |	document := (WAHtmlDocument		on: aStream		codec: self requestContext codec)		scriptGenerator: self requestContext handler scriptGeneratorClass new;		yourself.	self renderContext document: document during: [		(self rendererClass context: self renderContext)			render: aRenderable; flush ].	document scriptGenerator closeOn: document!

renderContext	"Answer the current WARenderContext."	^ renderContext!

rendererClass	"Answer the class that should be used when rendering objects."	^ rendererClass ifNil: [ rendererClass := WARenderer default ]!

rendererClass: aRendererClass	"Specify the class that should be used when rendering objects."	rendererClass := aRendererClass!

return: anObject 	"Return anObject after evaluating the receiver."		self , (JSStream new		nextPutAll: 'return ';		javascript: anObject)!

script: aBlock	"Evaluate aBlock and answer the string of the generated script."		^ String streamContents: [ :stream | self script: aBlock on: stream ]!

script: aBlock on: aStream	"Evaluate aBlock and pass in a script object that is subsequently written to aStream."	| script document |	document := (WAHtmlDocument		on: aStream		codec: self requestContext codec)		scriptGenerator: self requestContext handler scriptGeneratorClass new;		yourself.	self renderContext document: document during: [ 		script := (JSScript context: self renderContext)			rendererClass: self rendererClass;			yourself.		aBlock value: script.		script addAll: document loadScripts ].	script javascriptOn: aStream!

setContext: aRenderContext	renderContext := aRenderContext!

setTimeout: aDuration 	"Evaluates the receiver after aDuration."		self addDecoration: (JSTimeout duration: aDuration)!

then: anObject	"Evaluates anObject if the receiver treated as a boolean evaluates to true."	self then: anObject else: nil!

then: anObject else: anotherObject 	"Evaluates anObject if the receiver treated as a boolean evaluates to true, otherwise evaluate anotherObject."		self addDecoration: (JSIfThenElse new		trueStatement: anObject;		falseStatement: anotherObject)!

timeout: aDuration 	"Evaluates the receiver after aDuration."	self greaseDeprecatedApi: 'JSObject>>#timeout:' details: 'Use #setTimeout: instead.'. 	self setTimeout: aDuration! !
!JSObject categoriesFor: #&!decorations!public! !
!JSObject categoriesFor: #,!convenience!public! !
!JSObject categoriesFor: #|!decorations!public! !
!JSObject categoriesFor: #access:!decorations!public! !
!JSObject categoriesFor: #addDecoration:!adding!public! !
!JSObject categoriesFor: #alias:!decorations!public! !
!JSObject categoriesFor: #apply:!decorations!public! !
!JSObject categoriesFor: #assign:!decorations!public! !
!JSObject categoriesFor: #assignLocalTo:!decorations!public! !
!JSObject categoriesFor: #assignTo:!decorations!public! !
!JSObject categoriesFor: #call:!decorations!public! !
!JSObject categoriesFor: #call:with:!decorations!public! !
!JSObject categoriesFor: #call:with:with:!decorations!public! !
!JSObject categoriesFor: #call:with:with:with:!decorations!public! !
!JSObject categoriesFor: #call:withArguments:!decorations!public! !
!JSObject categoriesFor: #condition:!decorations!public! !
!JSObject categoriesFor: #condition:else:!decorations!public! !
!JSObject categoriesFor: #confirm:!convenience!public! !
!JSObject categoriesFor: #create!decorations!public! !
!JSObject categoriesFor: #decoration!accessing!public! !
!JSObject categoriesFor: #greaseString!printing!public! !
!JSObject categoriesFor: #initialize!initialization!public! !
!JSObject categoriesFor: #interval:!decorations!public! !
!JSObject categoriesFor: #isJavascript!public!testing! !
!JSObject categoriesFor: #javascriptContentOn:!printing!public! !
!JSObject categoriesFor: #javascriptOn:!printing!public! !
!JSObject categoriesFor: #not!decorations!public! !
!JSObject categoriesFor: #printOn:!printing!public! !
!JSObject categoriesFor: #property:!decorations!public! !
!JSObject categoriesFor: #render:!public!utilities! !
!JSObject categoriesFor: #render:on:!public!utilities! !
!JSObject categoriesFor: #renderContext!accessing!public! !
!JSObject categoriesFor: #rendererClass!accessing!public! !
!JSObject categoriesFor: #rendererClass:!accessing!public! !
!JSObject categoriesFor: #return:!convenience!public! !
!JSObject categoriesFor: #script:!public!utilities! !
!JSObject categoriesFor: #script:on:!public!utilities! !
!JSObject categoriesFor: #setContext:!initialization!public! !
!JSObject categoriesFor: #setTimeout:!decorations!public! !
!JSObject categoriesFor: #then:!decorations!public! !
!JSObject categoriesFor: #then:else:!decorations!public! !
!JSObject categoriesFor: #timeout:!decorations!public! !

!JSObject class methodsFor!

context: aRenderContext	^ self new setContext: aRenderContext; yourself! !
!JSObject class categoriesFor: #context:!instance creation!public! !

