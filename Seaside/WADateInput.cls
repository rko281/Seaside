"Filed out from Dolphin Smalltalk 7"!

WACompound subclass: #WADateInput
	instanceVariableNames: 'options month day year'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADateInput guid: (GUID fromString: '{5eb502d9-489f-4c11-b8ec-714f33359133}')!
WADateInput comment: 'I am a composition of three input fields that allow the user to select year, month and day. #options: can be used to toggle them individually.The argument for my callback blocks is an instance of Date.See WADateTimeTest >> #renderDateTimeOn:'!
!WADateInput categoriesForClass!Seaside-Canvas-Tags! !
!WADateInput methodsFor!

addCallback	self hasCallback ifFalse: [		canvas flush.		^ self ].	canvas hiddenInput		callback: [ callbackBlock value: self setValueWithNewDate ];		 with: nil!

addDayCallbackToBrush: aBrush	self hasCallback		ifFalse: [ ^ self ].	aBrush callback: [ :v | self day: v ]!

addMonthCallbackToBrush: aBrush	self hasCallback		ifFalse: [ ^ self ].	aBrush callback: [ :v | self month: v ]!

addYearCallbackToBrush: aBrush	self hasCallback		ifFalse: [ ^ self ].	aBrush callback: [ :v | self year: v ]!

day	^ day!

day: anIntegerOrString 	day := anIntegerOrString greaseInteger ifNil: [ 1 ]!

defaultOptions	^ #(month day year)!

month	^ month!

month: anIntegerOrString 	month := anIntegerOrString greaseInteger ifNil: [ 1 ]!

options	^ options ifNil: [ self defaultOptions ]!

options: anArray	"Valid values in the array : #year #month #day	Can be used to control what is shown and in what order	Default #(month day year)"	options := anArray!

renderDay	| brush |	brush := canvas textInput		id: (self id isNil ifFalse: [ self id , '-day' ]);		value: (GRNumberPrinter new				padding: $0;				digits: 2;				print: day);		yourself.	self addDayCallbackToBrush: brush.	brush		attributeAt: 'size'			put: 2;		attributeAt: 'maxlength'			put: 2!

renderMonth	| brush |	brush := canvas select		id: self id;		list: (1 to: 12);		selected: month;		yourself.	self addMonthCallbackToBrush: brush.	brush labels: [ :ea | Date nameOfMonth: ea ]!

renderYear	| brush |	brush := canvas textInput		id: (self id isNil ifFalse: [ self id , '-year' ]);		value: (GRNumberPrinter new				padding: $0;				digits: 4;				print: year);		yourself.	self addYearCallbackToBrush: brush.	brush		attributeAt: 'size'			put: 4;		attributeAt: 'maxlength'			put: 4!

setValueWithNewDate	^ value := Date		newDay: ((day min: (Date daysInMonth: (Date nameOfMonth: month) forYear: year)) max: 1)		month: (Date nameOfMonth: month)		year: year!

with: anObject	super with: anObject.	value isNil ifTrue: [ value := Date today ].	day := value dayOfMonth.	month := value monthIndex.	year := value year.	self options		do: [ :each | self perform: ('render', each asLowercase capitalized) asSymbol ]		separatedBy: [ canvas space ].	self addCallback !

year	^ year!

year: anIntegerOrString 	year := anIntegerOrString greaseInteger ifNil: [ 1900 ]! !
!WADateInput categoriesFor: #addCallback!private! !
!WADateInput categoriesFor: #addDayCallbackToBrush:!private callbacks!public! !
!WADateInput categoriesFor: #addMonthCallbackToBrush:!private callbacks!public! !
!WADateInput categoriesFor: #addYearCallbackToBrush:!private callbacks!public! !
!WADateInput categoriesFor: #day!private callbacks!public! !
!WADateInput categoriesFor: #day:!private callbacks!public! !
!WADateInput categoriesFor: #defaultOptions!private! !
!WADateInput categoriesFor: #month!private callbacks!public! !
!WADateInput categoriesFor: #month:!private callbacks!public! !
!WADateInput categoriesFor: #options!accessing!public! !
!WADateInput categoriesFor: #options:!accessing!public! !
!WADateInput categoriesFor: #renderDay!private/rendering!public! !
!WADateInput categoriesFor: #renderMonth!private/rendering!public! !
!WADateInput categoriesFor: #renderYear!private/rendering!public! !
!WADateInput categoriesFor: #setValueWithNewDate!private callbacks!public! !
!WADateInput categoriesFor: #with:!public! !
!WADateInput categoriesFor: #year!private callbacks!public! !
!WADateInput categoriesFor: #year:!private callbacks!public! !

