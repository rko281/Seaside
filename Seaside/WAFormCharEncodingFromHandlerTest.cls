"Filed out from Dolphin Smalltalk 7"!

WAAbstractCanvasBrushTest subclass: #WAFormCharEncodingFromHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFormCharEncodingFromHandlerTest guid: (GUID fromString: '{cd6a9d09-a178-483d-842e-a7ead7ad5fdd}')!
WAFormCharEncodingFromHandlerTest comment: 'I test that the encoding from the handler is taken if a handler is present but a codec is missing.'!
!WAFormCharEncodingFromHandlerTest categoriesForClass!Seaside-Tests-Canvas! !
!WAFormCharEncodingFromHandlerTest methodsFor!

createHandlers	| handler |	handler := WARequestHandler new.	handler preferenceAt: #charSet put: 'utf-16'.	^ Array with: handler!

testCharCodingWithHandler	"445:WABasicFormTag does not honour character encoding setting"	self		assert: [ :html |			html basicForm ]		gives: '<form accept-charset="utf-16" method="post" action="/"></form>'! !
!WAFormCharEncodingFromHandlerTest categoriesFor: #createHandlers!configuration!public! !
!WAFormCharEncodingFromHandlerTest categoriesFor: #testCharCodingWithHandler!public!tests! !

