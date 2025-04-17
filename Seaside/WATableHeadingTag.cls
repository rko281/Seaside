"Filed out from Dolphin Smalltalk"!

WATableDataTag subclass: #WATableHeadingTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATableHeadingTag guid: (GUID fromString: '{b5c2c12e-f2d1-454d-ba5d-a110571ccc44}')!

WATableHeadingTag comment: 'The WATableHeadingTag defines a table header cell in a table. The text within the th element usually renders in bold.'!

!WATableHeadingTag categoriesForClass!Tags! !

!WATableHeadingTag methodsFor!

scope: aString	"This attribute specifies the set of data cells for which the current header cell provides header information. This attribute may be used in place of the headers attribute, particularly for simple tables. When specified, this attribute must have one of the following values:- row: The current cell provides header information for the rest of the row that contains it (see also the section on table directionality).- col: The current cell provides header information for the rest of the column that contains it.- rowgroup: The header cell provides header information for the rest of the row group that contains it.- colgroup: The header cell provides header information for the rest of the column group that contains it."	self attributes at: 'scope' put: aString!

tag	^ 'th'! !

!WATableHeadingTag categoriesForMethods!
scope:!attributes!public! !
tag!accessing!public! !
!

