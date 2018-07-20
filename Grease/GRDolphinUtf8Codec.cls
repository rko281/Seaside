"Filed out from Dolphin Smalltalk 7"!

GRCodec subclass: #GRDolphinUtf8Codec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDolphinUtf8Codec guid: (GUID fromString: '{297842bb-dc96-43b2-aa89-f8d24dfd52b7}')!
GRDolphinUtf8Codec comment: 'A WAUtf8Codec is a WACodec optimized for UTF-8.'!
!GRDolphinUtf8Codec categoriesForClass!Unclassified! !
!GRDolphinUtf8Codec methodsFor!

decode: aString
	"We use here the short way..."

	| bytes |

	bytes := aString asByteArray.
	
	^(bytes beginsWith: Utf8String.Bom) 
		ifTrue: [Utf8String fromByteArray: (bytes allButFirst: Utf8String.Bom size)]
		ifFalse: [Utf8String fromByteArray: bytes]!

decoderFor: aStream
	^GRDolphinUtf8CodecStream on: aStream converter: nil "Native text conversion"!

encode: aString	| writeStream |	writeStream := self encoderFor: (GRPlatform current		writeCharacterStreamOn:  (ByteArray new: aString size)).	writeStream nextPutAll: aString asByteArray.	^ AnsiString fromByteArray: writeStream contents!

encoderFor: aStream
	^GRDolphinUtf8CodecStream on: aStream converter: nil "Native text conversion"!

name
	^ 'utf-8'!

url
	^ self! !
!GRDolphinUtf8Codec categoriesFor: #decode:!decoding!public! !
!GRDolphinUtf8Codec categoriesFor: #decoderFor:!decoding!public! !
!GRDolphinUtf8Codec categoriesFor: #encode:!convenience!public! !
!GRDolphinUtf8Codec categoriesFor: #encoderFor:!decoding!public! !
!GRDolphinUtf8Codec categoriesFor: #name!accessing!public! !
!GRDolphinUtf8Codec categoriesFor: #url!accessing!public! !

!GRDolphinUtf8Codec class methodsFor!

basicForEncoding: aString
	^self new!

codecs
	^Array with: self new!

supportsEncoding: aString
	^##(#('UTF-8' 'UTF8' 'UTF 8')) includes: aString asUppercase! !
!GRDolphinUtf8Codec class categoriesFor: #basicForEncoding:!private! !
!GRDolphinUtf8Codec class categoriesFor: #codecs!accessing!public! !
!GRDolphinUtf8Codec class categoriesFor: #supportsEncoding:!public!testing! !

