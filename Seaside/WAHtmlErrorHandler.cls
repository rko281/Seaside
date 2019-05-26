"Filed out from Dolphin Smalltalk 7"!

WAErrorHandler subclass: #WAHtmlErrorHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlErrorHandler guid: (GUID fromString: '{acc4ce7e-25db-4e28-810d-e1ebd657e0db}')!
WAHtmlErrorHandler comment: 'This exception handler returns a simple HTML error message response for Warnings and Errors.It provides two methods to allow the easy creation of custom error responses:#titleForException:  - can be used to override the text displayed in the title#renderContentForException:  - can be used to fully customize the HTML output'!
!WAHtmlErrorHandler categoriesForClass!Seaside-Environment! !
!WAHtmlErrorHandler methodsFor!

handleDefault: anException	self requestContext respond: [ :response |		response			internalError;			contentType: (WAMimeType textHtml				charset: self requestContext charSet;				yourself);			nextPutAll: (self rendererClass builder				fullDocument: true;				rootBlock: [ :root | self updateHtmlRoot: root forException: anException ];				render: [ :html | self renderContentForException: anException on: html ]) ]!

renderContentForException: anException on: html	html heading level1; with: anException description.	html paragraph: 'Your request could not be completed. An exception occurred.'!

rendererClass	^ WAHtmlCanvas!

titleForException: anException	^ anException description!

updateHtmlRoot: anHtmlRoot forException: anException	anHtmlRoot title: (self titleForException: anException)! !
!WAHtmlErrorHandler categoriesFor: #handleDefault:!actions!public! !
!WAHtmlErrorHandler categoriesFor: #renderContentForException:on:!actions!public! !
!WAHtmlErrorHandler categoriesFor: #rendererClass!accessing!public! !
!WAHtmlErrorHandler categoriesFor: #titleForException:!content!public! !
!WAHtmlErrorHandler categoriesFor: #updateHtmlRoot:forException:!content!public! !

