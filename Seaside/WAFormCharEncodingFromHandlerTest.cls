"Filed out from Dolphin Smalltalk"!

WAAbstractCanvasBrushTest subclass: #WAFormCharEncodingFromHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFormCharEncodingFromHandlerTest guid: (GUID fromString: '{c49efa49-e322-4102-a136-7d586b98fadf}')!

WAFormCharEncodingFromHandlerTest comment: 'I test that the encoding from the handler is taken if a handler is present but a codec is missing.'!

!WAFormCharEncodingFromHandlerTest categoriesForClass!Brushes! !

!WAFormCharEncodingFromHandlerTest methodsFor!

createHandlers	| handler |	handler := WARequestHandler new.	handler preferenceAt: #charSet put: 'utf-16'.	^ Array with: handler!

testCharCodingWithHandler	"445:WABasicFormTag does not honour character encoding setting"	self		assert: [ :html |			html basicForm ]		gives: '<form accept-charset="utf-16" method="post" action="/"></form>'! !

!WAFormCharEncodingFromHandlerTest categoriesForMethods!
createHandlers!configuration!public! !
testCharCodingWithHandler!public!tests! !
!

