"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARequestFilter
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARequestFilter guid: (GUID fromString: '{722b9ee4-72ef-4d84-b022-0fac62ddbf3d}')!
WARequestFilter comment: 'WARequestFilter is an implementation for the chain-of-responsibility and decorator pattern for request handlers. Request filters are a way of hooking into the request handling. There is no limit on what they can do, examples include - preprocess the request - postprocess the response - set up thread locals or expection handlers - return a different response (eg. from cache or access denied) This functionality is also known as servlet filters, WSGI infrastructure or rack infrastructure.Instance Variables:	next	<WAValueHolder<WARequestFilter>>		next	- The next filter in the chain.'!
!WARequestFilter categoriesForClass!Seaside-Core-Filter! !
!WARequestFilter methodsFor!

copyTo: aRequestHandler	^ self copy setNext: (self next copyTo: aRequestHandler)!

handleFiltered: aRequestContext 	"Pass on the aRequestContext to the next filter or handler. Subclasses might override this method to customize the request and response handling."		self next handleFiltered: aRequestContext!

handler	"Answer the owning request handler."	^ self next handler!

initialize	super initialize.	next := WAValueHolder new!

isExceptionFilter	^ false!

next	"Answer the next filter or request handler."		^ next contents!

postCopy	super postCopy.	next := next copy!

setNext: aFilter	next contents: aFilter! !
!WARequestFilter categoriesFor: #copyTo:!copying!public! !
!WARequestFilter categoriesFor: #handleFiltered:!processing!public! !
!WARequestFilter categoriesFor: #handler!accessing!public! !
!WARequestFilter categoriesFor: #initialize!initialization!public! !
!WARequestFilter categoriesFor: #isExceptionFilter!public!testing! !
!WARequestFilter categoriesFor: #next!accessing!public! !
!WARequestFilter categoriesFor: #postCopy!copying!public! !
!WARequestFilter categoriesFor: #setNext:!initialization!public! !

