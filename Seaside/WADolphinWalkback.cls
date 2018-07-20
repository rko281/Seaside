"Filed out from Dolphin Smalltalk 7"!

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
	| context |
	super initializeWithException: anException.
	context := anException raisingFrame.
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
!WADolphinWalkback categoriesFor: #frameCount!accessing!public! !
!WADolphinWalkback categoriesFor: #frames!accessing!public! !
!WADolphinWalkback categoriesFor: #initializeWithException:!initialization!public! !
!WADolphinWalkback categoriesFor: #renderObject:labelled:on:!public!rendering-stack! !
!WADolphinWalkback categoriesFor: #renderStackFrame:on:!public!rendering-stack! !
!WADolphinWalkback categoriesFor: #renderStackOn:!public!rendering! !
!WADolphinWalkback categoriesFor: #safePrintString:!private! !
!WADolphinWalkback categoriesFor: #tempNamesAndValuesIn:do:!private! !

!WADolphinWalkback class methodsFor!

initialize
	self select!

unload
	self unselect! !
!WADolphinWalkback class categoriesFor: #initialize!class initialization!public! !
!WADolphinWalkback class categoriesFor: #unload!class initialization!public! !

