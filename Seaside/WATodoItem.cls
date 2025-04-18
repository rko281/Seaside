﻿"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WATodoItem
	instanceVariableNames: 'todos description done'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATodoItem guid: (GUID fromString: '{c49cb0aa-6f80-4a4d-b626-18db4594b654}')!

WATodoItem comment: 'I am the component that represents a single TODO line in the TODO application example'!

!WATodoItem categoriesForClass!Misc! !

!WATodoItem methodsFor!

description	^ description!

description: anObject	description := anObject!

done	^ done!

done: anObject	done := anObject!

initializeWithDescription: aString in: aCollection	self initialize.	self done: false.	self description: aString.	todos := aCollection!

remove	todos remove: self!

renderContentOn: html		html listItem		onDoubleClick: (html javascript callback: [ self call: (WATodoItemEditor on: self) ]);		with:[ 			html form				class: 'view';				with:[					html checkbox						class: 'toggle';						onChange: (JSStream on: 'this.form.requestSubmit()');						callback: [ :value | self done: value ];						value: done.					html label: description.					html button						callback: [ self remove ];						class: 'destroy' ] ]! !

!WATodoItem categoriesForMethods!
description!accessing!public! !
description:!accessing!public! !
done!accessing!public! !
done:!accessing!public! !
initializeWithDescription:in:!initialization!public! !
remove!private! !
renderContentOn:!public!rendering! !
!

!WATodoItem class methodsFor!

newWithDescription: aString in: aCollection	^ self basicNew initializeWithDescription: aString in: aCollection! !

!WATodoItem class categoriesForMethods!
newWithDescription:in:!instance creation!public! !
!

