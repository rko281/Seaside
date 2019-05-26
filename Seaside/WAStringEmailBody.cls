"Filed out from Dolphin Smalltalk 7"!

WAEmailBody subclass: #WAStringEmailBody
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStringEmailBody guid: (GUID fromString: '{78f32bea-cfa9-4c03-80ad-df95505afdc0}')!
WAStringEmailBody comment: 'I am a plain text email body.'!
!WAStringEmailBody categoriesForClass!Seaside-Email-Base! !
!WAStringEmailBody methodsFor!

contentType	^ WAMimeType textPlain!

isPlainText	^ true!

sortOrder	^ 1! !
!WAStringEmailBody categoriesFor: #contentType!accessing!public! !
!WAStringEmailBody categoriesFor: #isPlainText!accessing!public! !
!WAStringEmailBody categoriesFor: #sortOrder!accessing!public! !

!WAStringEmailBody class methodsFor!

contentString: aString	^ self new		contentString: (self convertCrLfToCrIn: aString);		yourself!

convertCrLfToCrIn: aString	^ aString		copyReplaceAll: (String with: Character cr with: Character lf)		with: (String with: Character cr)!

splitIntoLines: aString	^ Array streamContents: [ :stream |		| cr start |		cr := Character cr.		start := 1.		1 to: aString size do: [ :index |			(aString at: index) = cr ifTrue: [				stream nextPut: (aString copyFrom: start to: index - 1).				start := index + 1 ] ].			start <= (aString size + 1) ifTrue: [ 				stream nextPut: (aString copyFrom: start to: aString size) ] ]!

splitString: aString intoChunksNoLongerThan: anInteger	^ Array streamContents: [ :stream |		self			splitString: aString			intoChunksNoLongerThan: anInteger			into: stream ]!

splitString: aString intoChunksNoLongerThan: anInteger into: aStream	| space lastSpaceIndex toScan |	space := Character space.	toScan := aString size min: anInteger + 1.	lastSpaceIndex := 0.	1 to: toScan do: [ :index |		(aString at: index) = space ifTrue: [			lastSpaceIndex := index ] ].		lastSpaceIndex = 0		ifTrue: [			lastSpaceIndex := aString size min: anInteger.			aStream nextPut: (aString copyFrom: 1 to: lastSpaceIndex) ]		ifFalse: [			aStream nextPut: (aString copyFrom: 1 to: lastSpaceIndex - 1) ].			lastSpaceIndex < aString size ifTrue: [		self			splitString: (aString copyFrom: lastSpaceIndex + 1 to: aString size)			intoChunksNoLongerThan: anInteger			into: aStream ]!

string: aString lineLength: anInteger	| string |	string := String streamContents: [ :stream |		| lines |		lines := self splitIntoLines: (self convertCrLfToCrIn: aString).		lines do: [ :each |			each size <= anInteger				ifTrue: [ stream nextPutAll: each ]				ifFalse: [					(self splitString: each intoChunksNoLongerThan: anInteger)						do: [ :chunk | stream nextPutAll: chunk ]						separatedBy: [ stream nextPut: Character cr ] ] ]			separatedBy: [ stream nextPut: Character cr ] ].	^ self new		contentString: string;		yourself! !
!WAStringEmailBody class categoriesFor: #contentString:!instance creation!public! !
!WAStringEmailBody class categoriesFor: #convertCrLfToCrIn:!private! !
!WAStringEmailBody class categoriesFor: #splitIntoLines:!private! !
!WAStringEmailBody class categoriesFor: #splitString:intoChunksNoLongerThan:!private! !
!WAStringEmailBody class categoriesFor: #splitString:intoChunksNoLongerThan:into:!private! !
!WAStringEmailBody class categoriesFor: #string:lineLength:!instance creation!public! !

