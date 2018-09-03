"Filed out from Dolphin Smalltalk 7"!

Object subclass: #FileReference
	instanceVariableNames: 'pathname'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FileReference guid: (GUID fromString: '{4fe3a8de-683a-49bd-818c-348872a75889}')!
FileReference comment: ''!
!FileReference categoriesForClass!Kernel-Objects! !
!FileReference methodsFor!

/ aString

	^(File composePath: self pathname subPath: aString) asFileReference!

asFileReference

	^self!

basename

	^File splitFilenameFrom: self pathname!

displayOn: aStream

	aStream nextPutAll: self pathname!

ensureCreateDirectory

	^File createDirectory: self pathname!

ensureDelete

	File delete: self pathname!

entries

	| entries |

	entries := OrderedCollection new.
	File for: '*' in: self pathname do: [ :each | entries add: each path asFileReference].

	^entries!

fileSystem

	^FileSystem!

fullName

	^self pathname!

moveTo: aFileReference

	File rename: self pathname to: aFileReference pathname!

pathname
	^pathname!

pathname: anObject
	pathname := anObject!

printOn: aStream
	"Answer the name of the receiver as a developer would wish to see it ."

	super printOn: aStream.
	aStream nextPut: $(.
	self displayOn: aStream.
	aStream nextPut: $).! !
!FileReference categoriesFor: #/!operations!public! !
!FileReference categoriesFor: #asFileReference!public! !
!FileReference categoriesFor: #basename!public! !
!FileReference categoriesFor: #displayOn:!printing!public! !
!FileReference categoriesFor: #ensureCreateDirectory!operations!public! !
!FileReference categoriesFor: #ensureDelete!operations!public! !
!FileReference categoriesFor: #entries!public! !
!FileReference categoriesFor: #fileSystem!accessing!public! !
!FileReference categoriesFor: #fullName!accessing!public! !
!FileReference categoriesFor: #moveTo:!operations!public! !
!FileReference categoriesFor: #pathname!accessing!public! !
!FileReference categoriesFor: #pathname:!accessing!public! !
!FileReference categoriesFor: #printOn:!printing!public! !

