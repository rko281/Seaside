"Filed out from Dolphin Smalltalk"!

WAWalkback subclass: #WADolphinWalkback
	instanceVariableNames: 'frames'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADolphinWalkback guid: (GUID fromString: '{81c29edd-082f-4104-8099-5ae2fb92d3d2}')!

WADolphinWalkback comment: 'Previous implementation of WASqueakWalkback
probably has things to fix'!

!WADolphinWalkback categoriesForClass!Unclassified! !

!WADolphinWalkback methodsFor!

frameCount
	^ frames size!

frames
	^ frames first: (self limit min: frames size)!

initializeWithException: anException
	| context processCopy copyContext |
	super initializeWithException: anException.
	context := anException raisingFrame.

	"If the exception is being processed via a call we need to copy the stack to preserve it"
	(Processor activeProcess topFrame sender sender method selector = #openUsingCall:) ifTrue: 
		[processCopy := Processor activeProcess copy.
		copyContext := processCopy topFrame.
		[copyContext index = context index] whileFalse: [copyContext := copyContext sender].
		context := copyContext].

	frames := OrderedCollection new.
	[ context isNil ] whileFalse: [
		frames add: context.
		context := context sender ]!

renderObject: anObject labelled: aString on: html
	html definitionTerm: [
		html anchor
			callback: [ (WADolphinInspector on: anObject for: self) execute ];
			with: aString ].
	html definitionData: (self safePrintString: anObject)!

renderStackFrame: aContext on: html
	html definitionList: [
		self 
			renderObject: aContext
			labelled: 'thisContext'
			on: html.
		self 
			renderObject: aContext receiver
			labelled: 'self'
			on: html.
		self 
			tempNamesAndValuesIn: aContext 
			do: [ :name :value |
				self 
					renderObject: name
					labelled: value
					on: html ] ]!

renderStackOn: html
	html heading level: 3; with: 'Stack Trace'.
	html orderedList: [
		self frames do: [ :each |
			html listItem: [
				self renderStackFrame: each on: html ] ] ]!

safePrintString: anObject
	^ [ anObject printStringLimitedTo: 100 ]
		on: Error
		do: [ :err | 'unprintable ' , anObject class name ]!

tempNamesAndValuesIn: aContext do: aTwoArgumentBlock
	"Evaluate aTwoArgumentBlock for every temp in aContext with the name of the temp and the current value. The code is supposed to work on Squeak and Pharo closure and non-closure images."

	| tempNames |
	tempNames := aContext tempNames.
	(aContext respondsTo: #namedTempAt:)
		ifTrue: [
			tempNames keysAndValuesDo: [ :index :each |
				aTwoArgumentBlock
					value: each
					value: (aContext namedTempAt: index) ] ]
		ifFalse: [
			tempNames do: [ :each |
				aTwoArgumentBlock
					value: each
					value: (aContext tempAt: (tempNames indexOf: each)) ] ]! !

!WADolphinWalkback categoriesForMethods!
frameCount!accessing!public! !
frames!accessing!public! !
initializeWithException:!initialization!public! !
renderObject:labelled:on:!public!rendering-stack! !
renderStackFrame:on:!public!rendering-stack! !
renderStackOn:!public!rendering! !
safePrintString:!private! !
tempNamesAndValuesIn:do:!private! !
!

!WADolphinWalkback class methodsFor!

initialize
	self select!

unload
	self unselect! !

!WADolphinWalkback class categoriesForMethods!
initialize!class initialization!public! !
unload!class initialization!public! !
!

