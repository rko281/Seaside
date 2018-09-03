"Filed out from Dolphin Smalltalk 7"!

GUID variableByteSubclass: #UUID
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UUID guid: (GUID fromString: '{1e2dd543-5380-4cf2-8498-e0af966aae43}')!
UUID comment: ''!
!UUID categoriesForClass!External-Data-Structured-COM! !
!UUID methodsFor!

asString

	^self idlString!

asString36
	"Return a String encoding the receiver as a base 36 number using 0-9 and lowercase a-z.
	This is the shortest representation still being able to work as
	filenames etc since it does not depend on case nor characters
	that might cause problems, and it is reasonably short."

	| num |
	num := 0.
	1 to: self size do: [ :i | num := num + ((256 raisedTo: i - 1) * (self at: i)) ].
	^ (num printStringBase: 36) asLowercase! !
!UUID categoriesFor: #asString!public! !
!UUID categoriesFor: #asString36!public! !

!UUID class methodsFor!

new

	| answer |
	answer := super new.
	RPCLibrary default uuidCreate: answer.
	^answer! !
!UUID class categoriesFor: #new!public! !

