"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WATodoItem
	instanceVariableNames: 'todos description done'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATodoItem guid: (GUID fromString: '{34bdef53-f2e9-4296-8311-2aa285b283e6}')!
WATodoItem comment: ''!
!WATodoItem categoriesForClass!Seaside-Examples-Misc! !
!WATodoItem methodsFor!

description	^ description!

description: anObject	description := anObject!

done	^ done!

done: anObject	done := anObject!

initializeWithDescription: aString in: aCollection	self initialize.	self done: false.	self description: aString.	todos := aCollection	!

remove	todos remove: self!

renderContentOn: html	html listItem		passenger: self;		with: [ 			html div				class: 'view';				with:[					html checkbox						class: 'toggle';						callback: [ :value | self done: value ];						value: done.					html label: description.					html button						class: 'destroy' ].		html textInput			class: 'edit';			style: 'display:none';			callback: [ :value | self description: value ];			value: description ]! !
!WATodoItem categoriesFor: #description!accessing!public! !
!WATodoItem categoriesFor: #description:!accessing!public! !
!WATodoItem categoriesFor: #done!accessing!public! !
!WATodoItem categoriesFor: #done:!accessing!public! !
!WATodoItem categoriesFor: #initializeWithDescription:in:!initialization!public! !
!WATodoItem categoriesFor: #remove!private! !
!WATodoItem categoriesFor: #renderContentOn:!public!rendering! !

!WATodoItem class methodsFor!

newWithDescription: aString in: aCollection	^ self new initializeWithDescription: aString in: aCollection! !
!WATodoItem class categoriesFor: #newWithDescription:in:!instance creation!public! !

