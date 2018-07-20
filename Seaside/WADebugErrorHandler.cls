"Filed out from Dolphin Smalltalk 7"!

WAErrorHandler subclass: #WADebugErrorHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADebugErrorHandler guid: (GUID fromString: '{2ba94716-5597-44a5-a02e-654dca16ffc4}')!
WADebugErrorHandler comment: 'I am like WAErrorHandler except that I open a debugger in the image for errors and warnings (not for internal errors).'!
!WADebugErrorHandler categoriesForClass!Seaside-Development-Core! !
!WADebugErrorHandler methodsFor!

basicResume: anException	"If the user closes the debugger, the process is terminated and the stack unwound.	There was previously an #ifCurtailed: block around the #open: call above to try to	catch the process termination so we could display a nice error page but this also	ended up being called when the user restarted a context in the debugger.		If they Proceed in the debugger, behaviour is platform-dependent. Currently, VW	should resume the signaling context, so this method will not continue past the call	to #open:. Squeak currently resumes the context that opened the Debugger, which	results in the call to #open: returning."	^ anException isResumable		ifTrue: [ anException resume ]		ifFalse: [ self unableToResumeResponse ]!

debugAndResume: anException	self open: anException.	"If the user closes the debugger, the process is terminated and the stack unwound.	There was previously an #ifCurtailed: block around the #open: call above to try to	catch the process termination so we could display a nice error page but this also	ended up being called when the user restarted a context in the debugger.		If they Proceed in the debugger, behaviour is platform-dependent. Currently, VW	should resume the signaling context, so this method will not continue past the call	to #open:. Squeak currently resumes the context that opened the Debugger, which	results in the call to #open: returning."	^ self resume: anException!

handleDefault: anException	^ self debugAndResume: anException!

open: anException 	GRPlatform current openDebuggerOn: anException!

resume: anException	self open: anException.	"If the user closes the debugger, the process is terminated and the stack unwound.	There was previously an #ifCurtailed: block around the #open: call above to try to	catch the process termination so we could display a nice error page but this also	ended up being called when the user restarted a context in the debugger.		If they Proceed in the debugger, behaviour is platform-dependent. Currently, VW	should resume the signaling context, so this method will not continue past the call	to #open:. Squeak currently resumes the context that opened the Debugger, which	results in the call to #open: returning."	^ self basicResume: anException!

unableToResumeResponse	| content |	content := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | root title: 'Unable to proceed' ];		render: [ :html |			html heading level1; with: 'Unable to proceed - hit the back button, and try again'.			html paragraph: 'Some exceptions cannot be resumed. You will usually see this page if you hit Proceed while debugging one of these exceptions. Your request was aborted but you can retry it by refreshing the page.' ].	self requestContext respond: [ :response |		response			internalError;			contentType: self application contentType;			nextPutAll: content ]! !
!WADebugErrorHandler categoriesFor: #basicResume:!actions!public! !
!WADebugErrorHandler categoriesFor: #debugAndResume:!actions!public! !
!WADebugErrorHandler categoriesFor: #handleDefault:!actions!public! !
!WADebugErrorHandler categoriesFor: #open:!actions!public! !
!WADebugErrorHandler categoriesFor: #resume:!actions!public! !
!WADebugErrorHandler categoriesFor: #unableToResumeResponse!content!public! !

