﻿"Filed out from Dolphin Smalltalk"!

WATableCellTag subclass: #WATableDataTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATableDataTag guid: (GUID fromString: '{56f566fc-19f5-449d-acb5-5a2fe34e15f8}')!

WATableDataTag comment: 'The WATableDataTag defines a cell in a table.'!

!WATableDataTag categoriesForClass!Tags! !

!WATableDataTag methodsFor!

abbreviation: aString	"This attribute should be used to provide an abbreviated form of the cell's content, and may be rendered by user agents when appropriate in place of the cell's content. Abbreviated names should be short since user agents may render them repeatedly. For instance, speech synthesizers may render the abbreviated headers relating to a particular cell before rendering that cell's content."	self		greaseDeprecatedApi: 'WATableDateTag>>abbreviation:'		details: 'Use text that begins in an unambiguous and terse manner, and include any more elaborate text after that. https://www.w3docs.com/learn-html/html-td-tag.html'.			self attributes at: 'abbr' put: aString!

axis: aString	"This attribute may be used to place a cell into conceptual categories that can be considered to form axes in an n-dimensional space. User agents may give users access to these categories (e.g., the user may query the user agent for all cells that belong to certain categories, the user agent may present a table in the form of a table of contents, etc.). Please consult the section on categorizing cells for more information. The value of this attribute is a comma-separated list of category names."	self		greaseDeprecatedApi: 'WATableDateTag>>axis:'		details: 'Not supported in html5. https://www.w3docs.com/learn-html/html-td-tag.html'.			self attributes at: 'axis' put: aString!

colSpan: anInteger	"This attribute specifies the number of columns spanned by the current cell. The default value of this attribute is one. The value zero means that the cell spans all columns from the current column to the last column of the column group (colgroup) in which the cell is defined."		self attributes at: 'colspan' put: anInteger!

headers: aString	"This attribute specifies the list of header cells that provide header information for the current data cell. The value of this attribute is a space-separated list of cell names; those cells must be named by setting their id attribute. Authors generally use the headers attribute to help non-visual user agents render header information about data cells (e.g., header information is spoken prior to the cell data), but the attribute may also be used in conjunction with style sheets. See also the scope attribute."		self attributes at: 'headers' put: aString!

rowSpan: anInteger	"This attribute specifies the number of rows spanned by the current cell. The default value of this attribute is one. The value zero means that the cell spans all rows from the current row to the last row of the current table section (rowgroup) in which the cell is defined. thead, tbody, and tfoot elements are rowgroups."		self attributes at: 'rowspan' put: anInteger!

scope: aString	"This attribute specifies the set of data cells for which the current header cell provides header information. This attribute may be used in place of the headers attribute, particularly for simple tables. When specified, this attribute must have one of the following values:- row: The current cell provides header information for the rest of the row that contains it (see also the section on table directionality).- col: The current cell provides header information for the rest of the column that contains it.- rowgroup: The header cell provides header information for the rest of the row group that contains it.- colgroup: The header cell provides header information for the rest of the column group that contains it."	self		greaseDeprecatedApi: 'WATableDateTag>>scope:'		details: 'Not supported in html5. https://www.w3docs.com/learn-html/html-td-tag.html'.			self attributes at: 'scope' put: aString!

tag	^ 'td'! !

!WATableDataTag categoriesForMethods!
abbreviation:!attributes!public! !
axis:!attributes!public! !
colSpan:!attributes!public! !
headers:!attributes!public! !
rowSpan:!attributes!public! !
scope:!attributes!public! !
tag!accessing!public! !
!

