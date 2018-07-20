"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #GRCodec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRCodec guid: (GUID fromString: '{75e73c97-c44f-48ed-a6af-2486d0650e00}')!
GRCodec comment: 'A codec defines how Seaside communicates without the outside world and how outside data is converted into the image (decoding) and back outside the image (encoding). The codec is essentially a stream factory that provides wrappers around standard streams. All streams do support binary mode for non-converted transfer.'!
!GRCodec categoriesForClass!Grease-Core-Text! !
!GRCodec methodsFor!

decode: aString	| readStream writeStream |	readStream := self decoderFor: aString readStream.	writeStream := GRPlatform current writeCharacterStreamOn: (String new: aString size).	[ readStream atEnd ]		whileFalse: [ writeStream nextPutAll: (readStream next: 1024) ].	^ writeStream contents!

decoderFor: aReadStream	"Wrap aReadStream with an decoder for the codec of the receiver. Answer a read stream that delegates to and shares the state of aReadStream." 		self subclassResponsibility!

encode: aString	| writeStream |	writeStream := self encoderFor: (GRPlatform current		writeCharacterStreamOn:  (String new: aString size)).	writeStream nextPutAll: aString.	^ writeStream contents!

encoderFor: aWriteStream	"Wrap aWriteStream with an encoder for the codec of the receiver. Answer a write stream that delegates to and shares the state of aWriteStream."		self subclassResponsibility!

name	"Answer a human readable string of the receivers encoding policy."	self subclassResponsibility!

printOn: aStream	super printOn: aStream.	aStream nextPutAll: ' name: '; print: self name!

url	"Answer a codec that is responsible to encode and decode URLs. In most cases an UTF-8 codec is the only valid choice, but subclasses might decide to do something else."	self subclassResponsibility! !
!GRCodec categoriesFor: #decode:!convenience!public! !
!GRCodec categoriesFor: #decoderFor:!conversion!public! !
!GRCodec categoriesFor: #encode:!convenience!public! !
!GRCodec categoriesFor: #encoderFor:!conversion!public! !
!GRCodec categoriesFor: #name!accessing!public! !
!GRCodec categoriesFor: #printOn:!printing!public! !
!GRCodec categoriesFor: #url!accessing!public! !

!GRCodec class methodsFor!

allCodecs	"Answer all codecs supported in this system. This is a collection of codec instances."	^ self subclasses		inject: self codecs asArray		into: [ :result :each | result , each allCodecs ]!

basicForEncoding: aString	"Create the actual instance."	self subclassResponsibility!

codecs	"Answer a collection of possible codecs of the receiver. To be overridden by concrete subclasses."	^ #()!

forEncoding: aString	"Answer a new codec instance for the given encoding name. Raise an WAUnsupportedEncodingError if the encoding name is not supported by this image."	self allSubclassesDo: [ :each | 		(each supportsEncoding: aString)			ifTrue: [ ^ each basicForEncoding: aString ] ].	^ self unsupportedEncoding: aString!

supportsEncoding: aString	"Answer whether the the given encoding name is supported by this codec class."	self subclassResponsibility!

unsupportedEncoding: aString	"Signal an unsupported encoding."	^ GRUnsupportedEncodingError signal: 'unsupported encoding: ' , aString! !
!GRCodec class categoriesFor: #allCodecs!accessing!public! !
!GRCodec class categoriesFor: #basicForEncoding:!private! !
!GRCodec class categoriesFor: #codecs!accessing!public! !
!GRCodec class categoriesFor: #forEncoding:!instance creation!public! !
!GRCodec class categoriesFor: #supportsEncoding:!public!testing! !
!GRCodec class categoriesFor: #unsupportedEncoding:!private! !

