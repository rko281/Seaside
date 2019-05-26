"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAFile
	instanceVariableNames: 'contents contentType fileName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFile guid: (GUID fromString: '{b379245d-16df-4e30-9f96-91846238586b}')!
WAFile comment: 'I represent a file that was uploaded by the user via #fileInput.Instance Variables	contents:		<ByteArray>	contentType:	<WAMimeType>	fileName:		<String>contents	- the contents of the file, binarycontentType	- the content type of the file	fileName	- The name of the file the user agent uploaded. This is locale name on the machine of the client. The instance variable might include the full path on the file system, the accessor will never return the path.'!
!WAFile categoriesForClass!Seaside-Core-HTTP! !
!WAFile methodsFor!

contents: aByteArray	contents := aByteArray!

contentsDecoded	"Answer the contents decoded using the character set in the part header. Signal an error if not character set is present in the part header."	| type charSet |	type := self contentType.	charSet := type isNil ifFalse: [ type charSet ].	^ charSet isNil		ifTrue: [ WAIllegalStateException signal: 'no character set of file upload can not be determined' ]		ifFalse: [ self contentsDecodedUsing: charSet ]!

contentsDecodedUsing: aCharSetName	"Answer the contents decoded using the given character set name."	^ (GRCodec forEncoding: aCharSetName) decode: self rawContents!

contentType	^ contentType!

contentType: aMimeTypeOrString	contentType := aMimeTypeOrString isNil		ifFalse: [ aMimeTypeOrString seasideMimeType ]!

fileName	"compensate for windows explorer behavior"	^ self isWindowsPath		ifTrue: [ fileName copyAfterLast: $\ ]		ifFalse: [ fileName ]!

fileName: aString	fileName := aString!

isWindowsPath	"'#:\*' match: fileName is broken on Squeak for WideString arguments"	^ fileName notEmpty		and: [ fileName first isLetter		and: [ fileName size >= 3		and: [ (fileName copyFrom: 2 to: 3) = ':\' ] ] ]!

rawContents	"Answer the raw, undecoded contents as sent by the user agent as a ByteArray.		Use #contentsDecoded or #contentsDecodeUsing: to access the decoded contents."		^ contents!

size	"the file size in bytes"	^ self rawContents size! !
!WAFile categoriesFor: #contents:!accessing!public! !
!WAFile categoriesFor: #contentsDecoded!accessing!public! !
!WAFile categoriesFor: #contentsDecodedUsing:!accessing!public! !
!WAFile categoriesFor: #contentType!accessing!public! !
!WAFile categoriesFor: #contentType:!accessing!public! !
!WAFile categoriesFor: #fileName!accessing!public! !
!WAFile categoriesFor: #fileName:!accessing!public! !
!WAFile categoriesFor: #isWindowsPath!private! !
!WAFile categoriesFor: #rawContents!accessing!public! !
!WAFile categoriesFor: #size!accessing!public! !

