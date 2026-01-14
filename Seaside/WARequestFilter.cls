"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WARequestFilter
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARequestFilter guid: (GUID fromString: '{47f1fc7e-e99f-42f3-af4a-5f45efcdfec0}')!

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

!WARequestFilter categoriesForMethods!
copyTo:!copying!public! !
handleFiltered:!processing!public! !
handler!accessing!public! !
initialize!initialization!public! !
isExceptionFilter!public!testing! !
next!accessing!public! !
postCopy!copying!public! !
setNext:!initialization!public! !
!

