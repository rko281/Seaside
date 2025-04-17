"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAFilterFunctionalTest
	instanceVariableNames: 'child'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFilterFunctionalTest guid: (GUID fromString: '{f9212fdf-5b35-4c64-9fe3-4fdf395a07f5}')!

WAFilterFunctionalTest comment: ''!

!WAFilterFunctionalTest categoriesForClass!Unclassified! !

!WAFilterFunctionalTest methodsFor!

authentication	| filter |	"We could use #filterWith:during: but that requires Flow."	filter := WAAuthenticationFilter new			authenticator: self;			yourself.	self session addFilter: filter.	child inform: 'Congratulations, you have been authenticated. The new filter should be visible in the list above. Clicking on "ok" should remove the filter. Using the back button and hitting refresh should show the filter again.' onAnswer: [ self session removeFilter: filter ]!

children	^ Array with: child!

initialize	super initialize.	child := WAComponent new!

protectorByBrowserSessionCookie	| filter |	"We could use #filterWith:during: but that requires Flow."	filter := WASessionCookieProtectionFilter new.	self session addFilter: filter.	child inform: 'Open this page in a different browser by copying the complete URL. Seaside should reply with a forbidden message. Closing this dialog should remove the filter.' onAnswer: [ self session removeFilter: filter ]!

protectorByRemoteAddress	| filter |	"We could use #filterWith:during: but that requires Flow."	filter := WARemoteAddressProtectionFilter new.	self session addFilter: filter.	child inform: 'Open this page on a different computer by copying the complete URL to a machine with a different IP address. Seaside should reply with a forbidden message. Closing this dialog should remove the filter.' onAnswer: [ self session removeFilter: filter ]!

renderActionsOn: html	html paragraph: [		html anchor			callback: [ self authentication ];			with: 'Basic Authentication'.		html text: ' (admin/seaside)'.		html break.		html anchor			callback: [ self protectorByRemoteAddress ];			with: 'Session Protector by remote address'.		html break.		html anchor			callback: [ self protectorByBrowserSessionCookie ];			with: 'Session Protector by session cookie' ].	html horizontalRule.	html paragraph: self children!

renderContentOn: html	self renderFiltersOn: html.	self renderActionsOn: html!

renderFiltersOn: html	html paragraph: 'Below a list of filters wrapping the current session:'.	html orderedList list: self session filters!

verifyPassword: aPasswordString forUser: aUserString	^ aUserString = 'admin' and: [ aPasswordString = 'seaside' ]! !

!WAFilterFunctionalTest categoriesForMethods!
authentication!actions!public! !
children!hooks!public! !
initialize!initialization!public! !
protectorByBrowserSessionCookie!actions!public! !
protectorByRemoteAddress!actions!public! !
renderActionsOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderFiltersOn:!public!rendering! !
verifyPassword:forUser:!private! !
!

