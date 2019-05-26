"Filed out from Dolphin Smalltalk 7"!

WACompound subclass: #WATimeInput
	instanceVariableNames: 'withSeconds hours minutes seconds'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATimeInput guid: (GUID fromString: '{ebe51111-6a45-42b9-bec7-29f02291cad0}')!
WATimeInput comment: 'I am a composition of three input fields that allows the user to select hour, minute and optionally second.#withSeconds and #withoutSeconds can be used to toggle seconds.The argument for my callback blocks is an instance of Time.See WADateTimeTest >> #renderDateTimeOn:'!
!WATimeInput categoriesForClass!Seaside-Canvas-Tags! !
!WATimeInput methodsFor!

addCallback	self hasCallback ifFalse: [		canvas flush.		^ self ].	canvas hiddenInput		callback: [ callbackBlock value: self setValueWithNewTime ];		 with: nil!

addHoursCallbackToBrush: aBrush	self hasCallback		ifFalse: [ ^ self ].	aBrush callback: [ :v | self hours: v ]!

addMinutesCallbackToBrush: aBrush	self hasCallback		ifFalse: [ ^ self ].	aBrush callback: [ :v | self minutes: v ]!

addSecondsCallbackToBrush: aBrush	self hasCallback		ifFalse: [ ^ self ].	aBrush callback: [ :v | self seconds: v ]!

hours	^ hours!

hours: anIntegerOrString 	hours := anIntegerOrString greaseInteger ifNil: [ 0 ]!

initialize	super initialize.	self withoutSeconds!

minutes	^ minutes!

minutes: anIntegerOrString 	minutes := anIntegerOrString greaseInteger ifNil: [ 0 ]!

renderHours	| brush |	brush := canvas textInput		id: self id;		value: (GRNumberPrinter new				padding: $0;				digits: 2;				print: hours).	self addHoursCallbackToBrush: brush.	brush		attributeAt: 'size'			put: 2;		attributeAt: 'maxlength'			put: 2!

renderMinutes	| brush |	brush := canvas textInput		id: (self id isNil ifFalse: [ self id , '-mins' ]);		value: (GRNumberPrinter new				padding: $0;				digits: 2;				print: minutes);		yourself.	self addMinutesCallbackToBrush: brush.	brush		attributeAt: 'size'			put: 2;		attributeAt: 'maxlength'			put: 2!

renderSeconds	| brush |	brush := canvas textInput		id: (self id isNil ifFalse: [ self id , '-secs' ]);		value: (GRNumberPrinter new				padding: $0;				digits: 2;				print: seconds);		yourself.	self addSecondsCallbackToBrush: brush.	brush		attributeAt: 'size'			put: 2;		attributeAt: 'maxlength'			put: 2!

seconds	^ seconds!

seconds: anIntegerOrString	seconds := [ anIntegerOrString asNumber ] on: Error do: [ :e | 0 ]!

setValueWithNewTime	^ value := Time hour: hours minute: (minutes min: 59) second: (seconds min: 59)!

with: anObject	super with: anObject.	value isNil		ifTrue: [ value := Time now ].	hours := value hour.	minutes := value minute.	seconds := value second.	self renderHours.	canvas		space;		text: ':';		space.	self renderMinutes.	withSeconds		ifTrue: [ 			canvas				space;				text: ':';				space.			self renderSeconds ]		ifFalse: [ seconds := 0 ].	self addCallback!

withoutSeconds	withSeconds := false!

withSeconds	withSeconds := true! !
!WATimeInput categoriesFor: #addCallback!private! !
!WATimeInput categoriesFor: #addHoursCallbackToBrush:!private callbacks!public! !
!WATimeInput categoriesFor: #addMinutesCallbackToBrush:!private callbacks!public! !
!WATimeInput categoriesFor: #addSecondsCallbackToBrush:!private callbacks!public! !
!WATimeInput categoriesFor: #hours!private callbacks!public! !
!WATimeInput categoriesFor: #hours:!private callbacks!public! !
!WATimeInput categoriesFor: #initialize!initialization!public! !
!WATimeInput categoriesFor: #minutes!private callbacks!public! !
!WATimeInput categoriesFor: #minutes:!private callbacks!public! !
!WATimeInput categoriesFor: #renderHours!private/rendering!public! !
!WATimeInput categoriesFor: #renderMinutes!private/rendering!public! !
!WATimeInput categoriesFor: #renderSeconds!private/rendering!public! !
!WATimeInput categoriesFor: #seconds!private callbacks!public! !
!WATimeInput categoriesFor: #seconds:!private callbacks!public! !
!WATimeInput categoriesFor: #setValueWithNewTime!private callbacks!public! !
!WATimeInput categoriesFor: #with:!public! !
!WATimeInput categoriesFor: #withoutSeconds!accessing!public! !
!WATimeInput categoriesFor: #withSeconds!accessing!public! !

