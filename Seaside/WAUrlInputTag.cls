"Filed out from Dolphin Smalltalk"!

WAAbstractTextAreaTag subclass: #WAUrlInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUrlInputTag guid: (GUID fromString: '{8eddb65e-2ae3-441a-b496-1f687998cc63}')!

WAUrlInputTag comment: 'supported on:- Opera 9graceful degeneration to text inputAn IRI, as defined by [RFC3987] (the IRI token, defined in RFC 3987 section 2.2). UAs could, for example, offer the user URIs from his bookmarks. (See below for notes on IDN.) The value is called url (as opposed to iri or uri) for consistency with CSS syntax and because it is generally felt authors are more familiar with the term "URL" than the other, more technically correct terms.'!

!WAUrlInputTag categoriesForClass!Seaside-Canvas-Tags! !

!WAUrlInputTag methodsFor!

allValuesCallbackClass	^ WAAllUrlsCallback!

callback: aBlock	self name: (self storeCallback: (WAUrlCallback on: aBlock)).	self value: self value!

type	^ 'url'! !

!WAUrlInputTag categoriesForMethods!
allValuesCallbackClass!private! !
callback:!callbacks!public! !
type!accessing!public! !
!

