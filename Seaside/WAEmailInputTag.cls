"Filed out from Dolphin Smalltalk 7"!

WAAbstractTextAreaTag subclass: #WAEmailInputTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEmailInputTag guid: (GUID fromString: '{17c6b0dd-fb3a-444f-b6cc-7d11a374332e}')!
WAEmailInputTag comment: 'supported on:- Opera 9graceful degeneration to text inputAn e-mail address, following the format of the addr-spec  token defined in RFC 2822 section 3.4.1 [RFC2822], but excluding the CFWS  subtoken everywhere, and excluding the FWS subtoken everywhere except in the quoted-string subtoken. UAs could, for example, offer e-mail addresses from the user''s address book. (See below for notes on IDN.)'!
!WAEmailInputTag categoriesForClass!Seaside-Canvas-Tags! !
!WAEmailInputTag methodsFor!

allValuesCallbackClass	^ WAAllEmailsCallback!

callback: aBlock	self name: (self storeCallback: (WAEmailCallback on: aBlock)).	self value: self value!

type	^ 'email'! !
!WAEmailInputTag categoriesFor: #allValuesCallbackClass!private! !
!WAEmailInputTag categoriesFor: #callback:!callbacks!public! !
!WAEmailInputTag categoriesFor: #type!accessing!public! !

