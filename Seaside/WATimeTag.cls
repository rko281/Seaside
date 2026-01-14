"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WATimeTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATimeTag guid: (GUID fromString: '{d83a46c7-d9f8-4e41-9b87-44f129caadbd}')!

WATimeTag comment: 'http://www.whatwg.org/specs/web-apps/current-work/#the-timenot known browser supportThe time element represents a date and/or a time.The datetime attribute, if present, must contain a date or time string that identifies the date or time being specified.If the datetime attribute is not present, then the date or time must be specified in the content of the element, such that parsing the element''s textContent according to the rules for parsing date or time strings in content successfully extracts a date or time. see RFC 3339:http://www.ietf.org/rfc/rfc3339.txt'!

!WATimeTag categoriesForClass!Seaside-Canvas-Tags! !

!WATimeTag methodsFor!

datetime: anObject	"The datetime attribute, if present, must contain a date or time string that identifies the date or time being specified."	self attributeAt: 'datetime' put: anObject!

tag	^ 'time'! !

!WATimeTag categoriesForMethods!
datetime:!attributes!public! !
tag!accessing!public! !
!

