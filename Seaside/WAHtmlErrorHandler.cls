"Filed out from Dolphin Smalltalk"!

WAErrorHandler subclass: #WAHtmlErrorHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtmlErrorHandler guid: (GUID fromString: '{4273c1d8-c80b-4ef0-b684-47bac4997ae5}')!

WAHtmlErrorHandler comment: 'This exception handler returns a simple HTML error message response for Warnings and Errors.It provides two methods to allow the easy creation of custom error responses:#titleForException:  - can be used to override the text displayed in the title#renderContentForException:  - can be used to fully customize the HTML output'!

!WAHtmlErrorHandler categoriesForClass!Seaside-Environment! !

!WAHtmlErrorHandler methodsFor!

handleDefault: anException	self requestContext respond: [ :response |		response			internalError;			contentType: (WAMimeType textHtml				charset: self requestContext charSet;				yourself);			nextPutAll: (self rendererClass builder				fullDocument: true;				rootBlock: [ :root | self updateHtmlRoot: root forException: anException ];				render: [ :html | self renderContentForException: anException on: html ]) ]!

renderContentForException: anException on: html	html heading level1; with: anException description.	html paragraph: 'Your request could not be completed. An exception occurred.'!

rendererClass	^ WAHtmlCanvas!

titleForException: anException	^ anException description!

updateHtmlRoot: anHtmlRoot forException: anException	anHtmlRoot title: (self titleForException: anException)! !

!WAHtmlErrorHandler categoriesForMethods!
handleDefault:!actions!public! !
renderContentForException:on:!actions!public! !
rendererClass!accessing!public! !
titleForException:!content!public! !
updateHtmlRoot:forException:!content!public! !
!

