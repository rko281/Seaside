"Filed out from Dolphin Smalltalk"!

WATagCanvas subclass: #WAXmlCanvas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAXmlCanvas guid: (GUID fromString: '{83cb1ac2-61ba-44ce-a445-240ab7621a6b}')!

WAXmlCanvas comment: 'I''m an abstract canvas base class for building canvas for custom XML dialects.'!

!WAXmlCanvas categoriesForClass!Canvas! !

!WAXmlCanvas methodsFor!

break	^ String with: Character cr with: Character lf!

cdata: aString	"aString must not include ']]>'		Google says if there is an error in the feed, there is a 0.02% chance	that this is the cause, combined with the fact that about 7% of all feeds	have errors there is a (2 / 10000) * (7 / 100) chance this goes wrong.	Do you deal in chance?		http://googlereader.blogspot.com/2005/12/xml-errors-in-feeds.html"	self flush.	self document nextPutAll: '<!![CDATA['.	self document nextPutAll: aString.	self document nextPutAll: ']]>'!

spaceEntity	^ '&#160;'! !

!WAXmlCanvas categoriesForMethods!
break!private! !
cdata:!convenience!public! !
spaceEntity!private! !
!

!WAXmlCanvas class methodsFor!

builder	^ super builder		documentClass: WAXmlDocument;		rootClass: WAXmlRoot;		yourself! !

!WAXmlCanvas class categoriesForMethods!
builder!instance creation!public! !
!

