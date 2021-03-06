﻿"Filed out from Dolphin Smalltalk 7"!

WATableCellTag subclass: #WATableDataTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATableDataTag guid: (GUID fromString: '{92f348e4-5f18-4c90-a867-c7552185cf99}')!
WATableDataTag comment: 'The WATableDataTag defines a cell in a table.'!
!WATableDataTag categoriesForClass!Seaside-Canvas-Tags! !
!WATableDataTag methodsFor!

abbreviation: aString	"This attribute should be used to provide an abbreviated form of the cell's content, and may be rendered by user agents when appropriate in place of the cell's content. Abbreviated names should be short since user agents may render them repeatedly. For instance, speech synthesizers may render the abbreviated headers relating to a particular cell before rendering that cell's content."		self attributes at: 'abbr' put: aString!

axis: aString	"This attribute may be used to place a cell into conceptual categories that can be considered to form axes in an n-dimensional space. User agents may give users access to these categories (e.g., the user may query the user agent for all cells that belong to certain categories, the user agent may present a table in the form of a table of contents, etc.). Please consult the section on categorizing cells for more information. The value of this attribute is a comma-separated list of category names."		self attributes at: 'axis' put: aString!

colSpan: anInteger	"This attribute specifies the number of columns spanned by the current cell. The default value of this attribute is one. The value zero means that the cell spans all columns from the current column to the last column of the column group (colgroup) in which the cell is defined."		self attributes at: 'colspan' put: anInteger!

headers: aString	"This attribute specifies the list of header cells that provide header information for the current data cell. The value of this attribute is a space-separated list of cell names; those cells must be named by setting their id attribute. Authors generally use the headers attribute to help non-visual user agents render header information about data cells (e.g., header information is spoken prior to the cell data), but the attribute may also be used in conjunction with style sheets. See also the scope attribute."		self attributes at: 'headers' put: aString!

rowSpan: anInteger	"This attribute specifies the number of rows spanned by the current cell. The default value of this attribute is one. The value zero means that the cell spans all rows from the current row to the last row of the current table section (rowgroup) in which the cell is defined. thead, tbody, and tfoot elements are rowgroups."		self attributes at: 'rowspan' put: anInteger!

scope: aString	"This attribute specifies the set of data cells for which the current header cell provides header information. This attribute may be used in place of the headers attribute, particularly for simple tables. When specified, this attribute must have one of the following values:- row: The current cell provides header information for the rest of the row that contains it (see also the section on table directionality).- col: The current cell provides header information for the rest of the column that contains it.- rowgroup: The header cell provides header information for the rest of the row group that contains it.- colgroup: The header cell provides header information for the rest of the column group that contains it."	self attributes at: 'scope' put: aString!

tag	^ 'td'! !
!WATableDataTag categoriesFor: #abbreviation:!attributes!public! !
!WATableDataTag categoriesFor: #axis:!attributes!public! !
!WATableDataTag categoriesFor: #colSpan:!attributes!public! !
!WATableDataTag categoriesFor: #headers:!attributes!public! !
!WATableDataTag categoriesFor: #rowSpan:!attributes!public! !
!WATableDataTag categoriesFor: #scope:!attributes!public! !
!WATableDataTag categoriesFor: #tag!accessing!public! !

