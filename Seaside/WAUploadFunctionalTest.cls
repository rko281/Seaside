"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAUploadFunctionalTest
	instanceVariableNames: 'file'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUploadFunctionalTest guid: (GUID fromString: '{5a7d7930-577d-443d-a5b2-f7627853ee8a}')!

WAUploadFunctionalTest comment: ''!

!WAUploadFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WAUploadFunctionalTest methodsFor!

renderContentOn: html	html heading: 'Upload File'.	self renderExplanationOn: html.	self renderUploadOn: html.	file isNil ifTrue: [ ^ self ].	self renderDownloadLinksOn: html.	self renderFileContentsOn: html!

renderDownloadLinksOn: html	html paragraph: [		| contents contentType |		self renderIsByteArray: file rawContents on: html.		html break.		contentType := file contentType.		contents := (contentType isNil or: [ contentType isBinary ])			ifTrue: [ file rawContents ]			ifFalse: [				"we don't use #contentsDecoded because no browser sends them because operating systems suck at files"				file contentsDecodedUsing: 'ISO-8859-1' ].		html anchor			document: contents				mimeType: file contentType				fileName: file fileName;			with: file fileName , ' (' , file contentType greaseString , ')'.		html break.		html anchor			document: file rawContents;			with: file fileName ]!

renderExplanationOn: html	html paragraph: 'If "fail: wrong contents of WAFile" shows up then that means the contents of the WAFile are a String but should be a ByteArray.'!

renderFileContentsOn: html 	file size <= 16r10000		ifTrue: [ html preformatted: (file contentsDecodedUsing: 'ISO-8859-1') ]		ifFalse: [			html break.			html text: 'file size is: ', file size greaseString, ' bytes' ]!

renderIsByteArray: aCollection on: html	aCollection isString ifTrue: [		html strong: 'fail: raw contents of WAFile should be a ByteArray not a String' ]!

renderUploadOn: html	html form		multipart;		with: [			html div: [				"div for HTML validation"				html fileUpload callback: [ :f | file := f ].				html submitButton text: 'Load' ] ]! !

!WAUploadFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderDownloadLinksOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
renderFileContentsOn:!public!rendering! !
renderIsByteArray:on:!public!rendering! !
renderUploadOn:!public!rendering! !
!

