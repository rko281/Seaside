"Filed out from Dolphin Smalltalk 7"!

GRUtf8CodecTest subclass: #GRDolphinUtf8CodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDolphinUtf8CodecTest guid: (GUID fromString: '{83b895eb-2ac4-42d0-8439-754247d3896b}')!
GRDolphinUtf8CodecTest comment: ''!
!GRDolphinUtf8CodecTest categoriesForClass!Grease-Tests-Core! !
!GRDolphinUtf8CodecTest methodsFor!

asString: aCollectionOfIntegers

	"The superclass implementation returns a Utf8String, not a single-byte String (which is the intention here)"
	^AnsiString fromByteArray: aCollectionOfIntegers asByteArray!

testCodecUtf8BorderLineString

	"Reimplemented to reflect Dolphin default use of Utf8String"

	#('UTF-8' 'utf-8') do: [ :codecName |
		| codec writeStream |
		codec := GRCodec forEncoding: codecName.
		writeStream := codec encoderFor: GRPlatform current readWriteCharacterStream.
		writeStream nextPut: (Character codePoint: 0).
		writeStream nextPut: (Character codePoint: 255).
		writeStream nextPut: (Character codePoint: 256).
		self assert: writeStream contents asByteArray = #[16r00 "character 0"  16rC3 16rBF "character 255" 16rC4 16r80 "character 256" ]]!

testCodecUtf8ShortestForm

	"Changed should:raise: to shouldnt:raise: - not sure why an error is expected, however Pharo lists this test as an expected failure"
	"Non shortest form characters should be rejected	See Corrigendum #1: UTF-8 Shortest Form http://www.unicode.org/versions/corrigendum1.html"	#('UTF-8' 'utf-8') do: [ :codecName |		| codec abc |		codec := GRCodec forEncoding: codecName.		abc := self asString: #(193 129 193 130 193 131 ).		self			shouldnt: [ self deny: (codec decode: abc) = 'ABC' ]			raise: Error ]! !
!GRDolphinUtf8CodecTest categoriesFor: #asString:!private! !
!GRDolphinUtf8CodecTest categoriesFor: #testCodecUtf8BorderLineString!public! !
!GRDolphinUtf8CodecTest categoriesFor: #testCodecUtf8ShortestForm!public!tests! !

