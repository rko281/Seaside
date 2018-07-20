"Filed out from Dolphin Smalltalk 7"!

GRCodec subclass: #GRNullCodec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRNullCodec guid: (GUID fromString: '{a5270c93-dece-4b3e-a68d-3446867427fe}')!
GRNullCodec comment: 'The null codec always returns the original streams. It assumes that the outside world uses the same encoding as the inside world. This is highly efficient as no transformation is applied to the data, but has its drawbacks.'!
!GRNullCodec categoriesForClass!Grease-Core-Text! !
!GRNullCodec methodsFor!

decode: aString	"Overridden for efficiency."	^ aString!

decoderFor: aReadStream 	"wrap to avoid String vs ByteArray issues"	^ GRNullCodecStream on: aReadStream!

encode: aString	"Overridden for efficiency."	^ aString!

encoderFor: aWriteStream 	"wrap to avoid String vs ByteArray issues"	^ GRNullCodecStream on: aWriteStream!

name	^ GRNullCodec codecName!

url	"The selfish method. Let's do it with ourselves."		^ self! !
!GRNullCodec categoriesFor: #decode:!convenience!public! !
!GRNullCodec categoriesFor: #decoderFor:!conversion!public! !
!GRNullCodec categoriesFor: #encode:!convenience!public! !
!GRNullCodec categoriesFor: #encoderFor:!conversion!public! !
!GRNullCodec categoriesFor: #name!accessing!public! !
!GRNullCodec categoriesFor: #url!accessing!public! !

!GRNullCodec class methodsFor!

basicForEncoding: aString	^ self new!

codecName	^ '(none)'!

codecs	^ Array with: self new!

supportsEncoding: aString	^ aString isNil! !
!GRNullCodec class categoriesFor: #basicForEncoding:!private! !
!GRNullCodec class categoriesFor: #codecName!accessing!public! !
!GRNullCodec class categoriesFor: #codecs!accessing!public! !
!GRNullCodec class categoriesFor: #supportsEncoding:!public!testing! !

