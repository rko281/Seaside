"Filed out from Dolphin Smalltalk"!

WARestfulComponentFilter subclass: #WAOneTwoThree
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOneTwoThree guid: (GUID fromString: '{e381ba3f-cb02-472a-9ce6-d8d696605806}')!

WAOneTwoThree comment: 'I demonstrate how to use different rendering options with Seaside-REST including:- rendering directly with a canvas #one- rendering with a painter #two- starting a session #three'!

!WAOneTwoThree categoriesForClass!Seaside-REST-Examples! !

!WAOneTwoThree methodsFor!

one	##(Pragma get).	##(Pragma path: 'one').	##(Pragma produces: 'text/html').	"pay attention to ^	pay attention to <produces: 'text/html'>"	^ WAHtmlCanvas builder		fullDocument: true;		render: [ :html |			html heading: 'One'.			html anchor				url: self requestContext request url;				extraPath: '..';				extraPath: 'two';				with: 'two' ]!

root	##(Pragma get).	##(Pragma path: '/').	self requestContext redirectTo: (self requestContext request url with: 'one')!

three	##(Pragma get).	##(Pragma path: 'three').	"pay attention no ^	pay attention no <produces: 'text/html'>"	self startSessionWithRoot: WAThree new!

two	##(Pragma get).	##(Pragma path: 'two').	##(Pragma produces: 'text/html').	"pay attention to ^	pay attention to <produces: 'text/html'>"	^ WAHtmlCanvas builder		fullDocument: true;		render: [ :html |			html render: WATwo new ]! !

!WAOneTwoThree categoriesForMethods!
one!public!routes! !
root!public!routes! !
three!public!routes! !
two!public!routes! !
!

!WAOneTwoThree class methodsFor!

register	(WAAdmin register: WAComponent asApplicationAt: '123')		addFilter: WAOneTwoThree new! !

!WAOneTwoThree class categoriesForMethods!
register!public!registration! !
!

