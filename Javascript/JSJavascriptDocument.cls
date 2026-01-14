"Filed out from Dolphin Smalltalk"!

WADocument subclass: #JSJavascriptDocument
	instanceVariableNames: 'urlEncoder javascriptStringEncoder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJavascriptDocument guid: (GUID fromString: '{a28fb38d-09c4-4208-8a69-3318c469d70e}')!

JSJavascriptDocument comment: 'I add the possibility to generate Javascript.'!

!JSJavascriptDocument categoriesForClass!Javascript-Core-Base! !

!JSJavascriptDocument methodsFor!

assignment	stream nextPut: $=!

beginString	stream nextPut: $"!

closeArray	stream nextPut: $]!

closeBlock	stream nextPut: $}!

closeBracket	stream nextPut: $]!

closeObject	stream nextPut: $}!

dotProperty: aString	stream nextPut: $..	self identifier: aString!

encodeURIComponent	stream nextPutAll: 'encodeURIComponent'!

endString	stream nextPut: $"!

identifier: aString	stream nextPutAll: aString!

infinity	stream nextPutAll: 'Infinity'!

initializeWithStream: aStream codec: aCodec	super initializeWithStream: aStream codec: aCodec.	javascriptStringEncoder := GRPlatform current javascriptStringEncoderOn: aStream.	urlEncoder := GRPlatform current urlEncoderOn: aStream codec: aCodec.!

jscode: aCodeString	"write given Javascript code verbatim"	stream nextPutAll: aCodeString!

keyword: aString	stream nextPutAll: aString.	stream nextPut: Character space!

nan	stream nextPutAll: 'NaN'!

negation	stream nextPut: $!!!

negativeInfinity	stream nextPutAll: '-Infinity'!

null	stream nextPutAll: 'null'!

openArray	stream nextPut: $[!

openBlock	stream nextPut: ${!

openBracket	stream nextPut: $[!

openObject	stream nextPut: ${!

operator: aString	stream nextPutAll: aString!

separator	stream nextPut: $;!

string: aString	stream nextPut: $".	javascriptStringEncoder nextPutAll: aString; flushBuffer.	stream nextPut: $"!

urlEncode: aString	urlEncoder nextPutAll: aString! !

!JSJavascriptDocument categoriesForMethods!
assignment!public!writing! !
beginString!public!writing! !
closeArray!public!writing! !
closeBlock!public!writing! !
closeBracket!public!writing! !
closeObject!public!writing! !
dotProperty:!public!writing! !
encodeURIComponent!public!writing! !
endString!public!writing! !
identifier:!public!writing! !
infinity!public!writing! !
initializeWithStream:codec:!initialization!public! !
jscode:!public!writing! !
keyword:!public!writing! !
nan!public!writing! !
negation!public!writing! !
negativeInfinity!public!writing! !
null!public!writing! !
openArray!public!writing! !
openBlock!public!writing! !
openBracket!public!writing! !
openObject!public!writing! !
operator:!public!writing! !
separator!public!writing! !
string:!public!writing! !
urlEncode:!public!writing! !
!

