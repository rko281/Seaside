﻿"Filed out from Dolphin Smalltalk"!

WAAbstractTextAreaTag subclass: #WAEmailInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEmailInputTag guid: (GUID fromString: '{6172582b-eeb6-4d39-b21e-2b56493327cc}')!

WAEmailInputTag comment: 'supported on:- Opera 9graceful degeneration to text inputAn e-mail address, following the format of the addr-spec  token defined in RFC 2822 section 3.4.1 [RFC2822], but excluding the CFWS  subtoken everywhere, and excluding the FWS subtoken everywhere except in the quoted-string subtoken. UAs could, for example, offer e-mail addresses from the user''s address book. (See below for notes on IDN.)'!

!WAEmailInputTag categoriesForClass!Tags! !

!WAEmailInputTag methodsFor!

allValuesCallbackClass	^ WAAllEmailsCallback!

callback: aBlock	self name: (self storeCallback: (WAEmailCallback on: aBlock)).	self value: self value!

type	^ 'email'! !

!WAEmailInputTag categoriesForMethods!
allValuesCallbackClass!private! !
callback:!callbacks!public! !
type!accessing!public! !
!

