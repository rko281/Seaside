"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #GRPrinter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRPrinter guid: (GUID fromString: '{78774525-3544-42fc-8cc7-b8eb223cf663}')!
GRPrinter comment: ''!
!GRPrinter categoriesForClass!Grease-Core-Text! !
!GRPrinter methodsFor!

, aPrinter 	^ GRSequentialPrinter new , self , aPrinter!

pad: aString center: aCharacter to: anInteger	"Pad to the center of aString with aCharacter to at least anInteger characters."	| result index |	anInteger <= aString size		ifTrue: [ ^ aString ].	index := (anInteger - aString size) // 2.	result := (String new: anInteger) atAllPut: aCharacter.	result		replaceFrom: index + 1		to: index + aString size		with: aString		startingAt: 1.	^ result!

pad: aString left: aCharacter to: anInteger	"Pad to the left side of aString with aCharacter to at least anInteger characters."	| result |	anInteger <= aString size		ifTrue: [ ^ aString ].	result := (String new: anInteger) atAllPut: aCharacter.	result		replaceFrom: anInteger - aString size + 1		to: anInteger		with: aString		startingAt: 1.	^ result!

pad: aString right: aCharacter to: anInteger	"Pad to the right side of aString with aCharacter to at least anInteger characters."	| result |	anInteger <= aString size		ifTrue: [ ^ aString ].	result := (String new: anInteger) atAllPut: aCharacter.	result		replaceFrom: 1		to: aString size		with: aString		startingAt: 1.	^ result!

print: anObject	^ String streamContents: [ :stream | self print: anObject on: stream ]!

print: anObject on: aStream	"Subclasses override this method to produce some output."! !
!GRPrinter categoriesFor: #,!operators!public! !
!GRPrinter categoriesFor: #pad:center:to:!public!utilities! !
!GRPrinter categoriesFor: #pad:left:to:!public!utilities! !
!GRPrinter categoriesFor: #pad:right:to:!public!utilities! !
!GRPrinter categoriesFor: #print:!printing!public! !
!GRPrinter categoriesFor: #print:on:!printing!public! !

!GRPrinter class methodsFor!

abbreviatedMonthName	^ self monthName: #('Jan' 'Feb' 'Mar' 'Apr' 'May' 'Jun' 'Jul' 'Aug' 'Sep' 'Oct' 'Nov' 'Dec')!

abbreviatedWeekName	^ self weekName: #('Sun' 'Mon' 'Tue' 'Wed' 'Thu' 'Fri' 'Sat')!

absOffsetHoursPadded	^ GRMappedPrinter 		block: [ :date | date offset hours abs ]		next: (self numberWithAtLeastDigits: 2)!

absOffsetMinutesPadded	^ GRMappedPrinter 		block: [ :date | date offset minutes abs ]		next: (self numberWithAtLeastDigits: 2)!

binaryFileSize	^ GRUnitPrinter base: 1024 units: #('byte' 'bytes' 'KiB' 'MiB' 'GiB' 'TiB' 'PiB' 'EiB' 'ZiB' 'YiB')!

cookieTimestamp	"Netscape's original proposal defined an Expires header that took a date value in a fixed-length variant format in place of Max-Age: Wdy, DD-Mon-YY HH:MM:SS GMT"	^ GRMappedPrinter		block: [ :timestamp | timestamp asUTC ]		next: self abbreviatedWeekName , ', ' , self paddedDay , '-' , self abbreviatedMonthName , '-' , self paddedYear , ' ' , self isoTime , ' GMT'!

decimalFileSize	^ GRUnitPrinter base: 1000 units: #('byte' 'bytes' 'kB' 'MB' 'GB' 'TB' 'PB' 'EB' 'ZB' 'YB')!

fullMonthName	^ self monthName: #('January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December')!

fullWeekName	^ self weekName: #('Sunday' 'Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday')!

httpDate	"Answers a printer that formats dates for HTTP1.1 (RFC 2616)"	^ self rfc1123!

isoDate	"Ansers a printer that formats dates according to ISO(YYYY-MM-DD) E.g. 2003-12-24"	^ self paddedYear , $- , self paddedMonth , $- , self paddedDay!

isoTime	"Ansers a printer that formats time according to ISO(HH:MM:SS) E.g. 12:23:34"		^ self paddedHour24 , $: , self paddedMinute , $: , self paddedSecond!

monthName: anArray 	^ GRPluggablePrinter on: [ :date | anArray at: date monthIndex ]!

numberWithAtLeastDigits: anInteger	^ GRNumberPrinter new		padding: $0;		digits: anInteger;		yourself!

offsetSign	^ GRMappedPrinter 		block: [ :date | date offset ]		next: (GRSignPrinter new				positivePrinter: $+;				negativePrinter: $-;				yourself)!

paddedCentury	^ GRMappedPrinter 		block: [ :date | date year \\ 100 ]		next: (self numberWithAtLeastDigits: 2)!

paddedDay	^ GRMappedPrinter 		block: [ :date | date dayOfMonth ]		next: (self numberWithAtLeastDigits: 2)!

paddedHour12	^ GRMappedPrinter 		block: [ :time | (time hour - 1) \\ 12 + 1 ]		next: (self numberWithAtLeastDigits: 2)!

paddedHour24	^ GRMappedPrinter 		block: [ :time | time hour ]		next: (self numberWithAtLeastDigits: 2)!

paddedMinute	^ GRMappedPrinter 		block: [ :time | time minute ]		next: (self numberWithAtLeastDigits: 2)!

paddedMonth	^ GRMappedPrinter 		block: [ :date | date monthIndex ]		next: (self numberWithAtLeastDigits: 2)!

paddedSecond	^ GRMappedPrinter 		block: [ :time | time second ]		next: (GRNumberPrinter new				padding: $0;				digits: 2)!

paddedYear	^ GRMappedPrinter 		block: [ :date | date year ]		next: (self numberWithAtLeastDigits: 4)!

rfc1123	"Answers a printer that formats dates for HTTP1.1 (RFC 1123). Eg.	Sun, 06 Nov 1994 08:49:37 GMT "		^ GRMappedPrinter 		block: [ :date | 			"For the purposes of HTTP, GMT is exactly equal to UTC (Coordinated Universal Time)"			date asUTC ]		next: GRSequentialPrinter new , self abbreviatedWeekName , ', ' , self paddedDay , Character space , self abbreviatedMonthName , Character space , self paddedYear , Character space , self isoTime , ' GMT'!

rfc822	"Answers a printer that formats dates according to RFC 822 (email). Eg.	Sun, 31 Aug 2008 19:41:46 +0200"	^ self abbreviatedWeekName , ', ' , self paddedDay , Character space , self abbreviatedMonthName , Character space , self paddedYear , Character space , self isoTime , Character space , self offsetSign , self absOffsetHoursPadded , self absOffsetMinutesPadded!

rfc822WithTimeZone: aString	"Answers a privter that formats dates according to RFC 822 (email) with the given time zone String. Eg.	Sun, 31 Aug 2008 19:41:46 <aString>"	^ self abbreviatedWeekName , ', ' , self paddedDay , Character space , self abbreviatedMonthName , Character space , self paddedYear , Character space , self isoTime , Character space , aString!

swissCurrency	^ GRSequentialPrinter new , 'CHF ' , GRSignPrinter new , (GRNumberPrinter new			separator: $';			precision: 2;			accuracy: 0.05;			yourself)!

unpaddedCentury	^ GRMappedPrinter 		block: [ :date | date year \\ 100 ]		next: GRNumberPrinter new!

unpaddedDay	^ GRMappedPrinter 		block: [ :date | date dayOfMonth ]		next: GRNumberPrinter new!

unpaddedHour12	^ GRMappedPrinter 		block: [ :time | (time hour - 1) \\ 12 + 1 ]		next: GRNumberPrinter new!

unpaddedHour24	^ GRMappedPrinter 		block: [ :time | time hour ]		next: GRNumberPrinter new!

unpaddedMinute	^ GRMappedPrinter 		block: [ :time | time minute ]		next: GRNumberPrinter new!

unpaddedMonth	^ GRMappedPrinter 		block: [ :date | date monthIndex ]		next: GRNumberPrinter new!

unpaddedSecond	^ GRMappedPrinter 		block: [ :time | time second ]		next: GRNumberPrinter new!

unpaddedYear	^ GRMappedPrinter 		block: [ :date | date year ]		next: GRNumberPrinter new!

usCurrency	^ GRSignPrinter new , $$ , (GRNumberPrinter new			separator: $,;			precision: 2;			yourself)!

weekName: anArray 	^ GRPluggablePrinter on: [ :date | anArray at: date dayOfWeek ]! !
!GRPrinter class categoriesFor: #abbreviatedMonthName!parts/date!public! !
!GRPrinter class categoriesFor: #abbreviatedWeekName!parts/date!public! !
!GRPrinter class categoriesFor: #absOffsetHoursPadded!parts/date!public! !
!GRPrinter class categoriesFor: #absOffsetMinutesPadded!parts/date!public! !
!GRPrinter class categoriesFor: #binaryFileSize!parts/units!public! !
!GRPrinter class categoriesFor: #cookieTimestamp!factory/http!public! !
!GRPrinter class categoriesFor: #decimalFileSize!parts/units!public! !
!GRPrinter class categoriesFor: #fullMonthName!parts/date!public! !
!GRPrinter class categoriesFor: #fullWeekName!parts/date!public! !
!GRPrinter class categoriesFor: #httpDate!factory/http!public! !
!GRPrinter class categoriesFor: #isoDate!factory/http!public! !
!GRPrinter class categoriesFor: #isoTime!factory/http!public! !
!GRPrinter class categoriesFor: #monthName:!parts/date!public! !
!GRPrinter class categoriesFor: #numberWithAtLeastDigits:!parts/units!public! !
!GRPrinter class categoriesFor: #offsetSign!parts/date!public! !
!GRPrinter class categoriesFor: #paddedCentury!parts/date!public! !
!GRPrinter class categoriesFor: #paddedDay!parts/date!public! !
!GRPrinter class categoriesFor: #paddedHour12!parts/time!public! !
!GRPrinter class categoriesFor: #paddedHour24!parts/time!public! !
!GRPrinter class categoriesFor: #paddedMinute!parts/time!public! !
!GRPrinter class categoriesFor: #paddedMonth!parts/date!public! !
!GRPrinter class categoriesFor: #paddedSecond!parts/time!public! !
!GRPrinter class categoriesFor: #paddedYear!parts/date!public! !
!GRPrinter class categoriesFor: #rfc1123!factory/http!public! !
!GRPrinter class categoriesFor: #rfc822!factory/http!public! !
!GRPrinter class categoriesFor: #rfc822WithTimeZone:!factory/http!public! !
!GRPrinter class categoriesFor: #swissCurrency!factory/currency!public! !
!GRPrinter class categoriesFor: #unpaddedCentury!parts/date!public! !
!GRPrinter class categoriesFor: #unpaddedDay!parts/date!public! !
!GRPrinter class categoriesFor: #unpaddedHour12!parts/time!public! !
!GRPrinter class categoriesFor: #unpaddedHour24!parts/time!public! !
!GRPrinter class categoriesFor: #unpaddedMinute!parts/time!public! !
!GRPrinter class categoriesFor: #unpaddedMonth!parts/date!public! !
!GRPrinter class categoriesFor: #unpaddedSecond!parts/time!public! !
!GRPrinter class categoriesFor: #unpaddedYear!parts/date!public! !
!GRPrinter class categoriesFor: #usCurrency!factory/currency!public! !
!GRPrinter class categoriesFor: #weekName:!parts/date!public! !

