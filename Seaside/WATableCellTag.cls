"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WATableCellTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATableCellTag guid: (GUID fromString: '{5544d395-ad7c-424d-8811-4b12e5e61f41}')!

WATableCellTag comment: 'Common superclass for table cells'!

!WATableCellTag categoriesForClass!Tags! !

!WATableCellTag methodsFor!

align: aString	"This attribute specifies the alignment of data and the justification of text in a cell. Possible values:	- left: Left-flush data/Left-justify text. This is the default value for table data.- center: Center data/Center-justify text. This is the default value for table headers.- right: Right-flush data/Right-justify text.- justify: Double-justify text.- char: Align text around a specific character. If a user agent doesn't support character alignment, behavior in - the presence of this value is unspecified."	self		greaseDeprecatedApi: 'WATableCellTag>>align:'		details: 'Not supported in html5. https://www.w3docs.com/learn-html/html-td-tag.html'.		self attributes at: 'align' put: aString!

character: aString	"This attribute specifies a single character within a text fragment to act as an axis for alignment. The default value for this attribute is the decimal point character for the current language as set by the lang attribute. User agents are not required to support this attribute."	self		greaseDeprecatedApi: 'WATableCellTag>>character:'		details: 'Not supported in html5. https://www.w3docs.com/learn-html/html-td-tag.html'.		self attributes at: 'char' put: aString!

characterOffset: anInteger	"When present, this attribute specifies the offset to the first occurrence of the alignment character on each line. If a line doesn't include the alignment character, it should be horizontally shifted to end at the alignment position."	self		greaseDeprecatedApi: 'WATableCellTag>>characterOffset:'		details: 'Not supported in html5. https://www.w3docs.com/learn-html/html-td-tag.html'.		self attributes at: 'charoff' put: anInteger!

verticalAlign: aString	"This attribute specifies the vertical position of data within a cell. Possible values:- top: Cell data is flush with the top of the cell.- middle: Cell data is centered vertically within the cell. This is the default value.- bottom: Cell data is flush with the bottom of the cell.- baseline: All cells in the same row as a cell whose valign attribute has this value should have their textual data positioned so that the first text line occurs on a baseline common to all cells in the row. This constraint does not apply to subsequent text lines in these cells."			self attributes at: 'valign' put: aString! !

!WATableCellTag categoriesForMethods!
align:!attributes!public! !
character:!attributes!public! !
characterOffset:!attributes!public! !
verticalAlign:!attributes!public! !
!

!WATableCellTag class methodsFor!

isAbstract 	^ self == WATableCellTag! !

!WATableCellTag class categoriesForMethods!
isAbstract!public!testing! !
!

