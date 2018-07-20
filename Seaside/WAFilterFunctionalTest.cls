"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAFilterFunctionalTest
	instanceVariableNames: 'child'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFilterFunctionalTest guid: (GUID fromString: '{91460ac4-3a6f-40db-965c-5049f7b5b77d}')!
WAFilterFunctionalTest comment: ''!
!WAFilterFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAFilterFunctionalTest methodsFor!

authentication	| filter |	"We could use #filterWith:during: but that requires Flow."	filter := WAAuthenticationFilter new			authenticator: self;			yourself.	self session addFilter: filter.	child inform: 'Congratulations, you have been authenticated. The new filter should be visible in the list above. Clicking on "ok" should remove the filter. Using the back button and hitting refresh should show the filter again.' onAnswer: [ self session removeFilter: filter ]!

children	^ Array with: child!

initialize	super initialize.	child := WAComponent new!

protector	| filter |	"We could use #filterWith:during: but that requires Flow."	filter := WAProtectionFilter new.	self session addFilter: filter.	child inform: 'Open this page on a different computer by copying the complete URL to a machine with a different IP address. Seaside should reply with a forbidden message. Closing this dialog should remove the filter.' onAnswer: [ self session removeFilter: filter ]!

renderActionsOn: html	html paragraph: [		html anchor			callback: [ self authentication ];			with: 'Basic Authentication'.		html text: ' (admin/seaside)'.		html break.		html anchor			callback: [ self protector ];			with: 'Session Protector' ].	html horizontalRule.	html paragraph: self children!

renderContentOn: html	self renderFiltersOn: html.	self renderActionsOn: html!

renderFiltersOn: html	html paragraph: 'Below a list of filters wrapping the current session:'.	html orderedList list: self session filters!

verifyPassword: aPasswordString forUser: aUserString	^ aUserString = 'admin' and: [ aPasswordString = 'seaside' ]! !
!WAFilterFunctionalTest categoriesFor: #authentication!actions!public! !
!WAFilterFunctionalTest categoriesFor: #children!hooks!public! !
!WAFilterFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAFilterFunctionalTest categoriesFor: #protector!actions!public! !
!WAFilterFunctionalTest categoriesFor: #renderActionsOn:!public!rendering! !
!WAFilterFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAFilterFunctionalTest categoriesFor: #renderFiltersOn:!public!rendering! !
!WAFilterFunctionalTest categoriesFor: #verifyPassword:forUser:!private! !

