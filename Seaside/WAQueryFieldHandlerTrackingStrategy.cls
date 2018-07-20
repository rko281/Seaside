"Filed out from Dolphin Smalltalk 7"!

WAHandlerTrackingStrategy subclass: #WAQueryFieldHandlerTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAQueryFieldHandlerTrackingStrategy guid: (GUID fromString: '{35a26974-6b58-48e3-98fd-51c16041ca74}')!
WAQueryFieldHandlerTrackingStrategy comment: 'I track request handlers using a query field. This results in URLs looking like this:/tests/functional?_s=de379kaie13This is a very simple and robust approach. It is also very convenient for development. Just remove the _s and you have a new session.However there are some drawbacks. The smallest is aesthetical, the URL in the address bar of the browser is less "clean". Second because the session id is part of the request URL it shows up in all kinds of places. For example server logs. Not only the log of the server running the application but also very web site visited from there because it shows up in the Referer HTTP header. The danger of this is that when somebody knows the session id of somebody else he can take over his session. While most of these problems can be mitigated by adding a WAProtectionFilter to every session this creates new problems for users with changing IPs (eg. mobile devices).'!
!WAQueryFieldHandlerTrackingStrategy categoriesForClass!Seaside-Core-RequestHandling! !
!WAQueryFieldHandlerTrackingStrategy methodsFor!

addKey: aString toContext: aRequestContext	"Nothing to do, we only add to the URL"!

addKey: aString toUrl: aUrl	self addQueryFieldWithValue: aString to: aUrl!

keyFromContext: aRequestContext	^ self queryFieldKeyFromContext: aRequestContext! !
!WAQueryFieldHandlerTrackingStrategy categoriesFor: #addKey:toContext:!public! !
!WAQueryFieldHandlerTrackingStrategy categoriesFor: #addKey:toUrl:!public! !
!WAQueryFieldHandlerTrackingStrategy categoriesFor: #keyFromContext:!public! !

