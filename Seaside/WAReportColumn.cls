﻿"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAReportColumn
	instanceVariableNames: 'clickBlock formatBlock hasTotal title sortBlock valueBlock cssClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAReportColumn guid: (GUID fromString: '{4222180b-935d-432e-bc07-e2723ac96a5f}')!

WAReportColumn comment: 'WAReportColumn displays a column, one cell at a time, of a WAReportTable. Columns can be sorted, have a title, can have a total, and its element can be links. The valueBlock obtains the output (an object) to display for each row from the row''s object.  The formatBlock is used to convert the valueBlock output to a string. If you need html markup to display the result, use the two argument form of valueBlock. However, columns with two argument valueBlock can not be sorted. See class methods for shortcut methods for setting the value block. For more information see:	WATableReportInstance Variables:	clickBlock	<BlockClosure [:rowObject | ]>	When clickBlock is set items in column will be anchors. clickBlock is called with the selected object when anchor is clicked on. Typically clickBlock calls a component which generates a new page.	formatBlock	<BlockClosure [:object | ]>	Should convert the result of the one-argument valueBlock to the string to be displayed. If formatBlock is nil then  "displayString" is sent to the result of valueBlock for the display string for this column.  	hasTotal	<Boolean>	If true the column will display the sum of all elements in the column, sum is displayed in the last row.	sortBlock	<BlockClosure [:a :b | ]>	Used to sort the element in the column. Arguments are the value from the one argument valueBlock	title	<String>	Column header 	valueBlock	<BlockClosure [:rowObject | ] or [:rowObject :aWARenderCanvas |] >			[:rowObject | ] this form results in an object that is to be displayed in a column cell, argument is the object for a given row (see WATableReport)		[:rowObject :aHtmlCanvas |] this form is to render the value for a column cell from rowObject directly on aWRenderCanvascssClass	title <String> CSS class	the CSS class assigned to the <td>-tag in this column '!

!WAReportColumn categoriesForClass!Components! !

!WAReportColumn methodsFor!

canChoose	^ clickBlock notNil!

canRender	^ valueBlock argumentCount > 1!

canSort	^ self canRender not and: [ sortBlock notNil ]!

chooseRow: row	^ clickBlock value: row!

clickBlock: aBlock	clickBlock := aBlock!

columnClickBlock: aBlock	self clickBlock: [ :r | aBlock value: (self valueForRow: r) ]!

cssClass	^ cssClass!

cssClass: aString	cssClass := aString!

formatBlock: anObject	formatBlock := anObject!

hasTotal: aBoolean	hasTotal := aBoolean!

index: aNumber	valueBlock := [ :row | row at: aNumber ]!

initialize	super initialize.	formatBlock := [ :x | x greaseString ].	sortBlock := [ :a :b | a <= b ].	valueBlock := [ :row | nil ].	clickBlock := nil.	title := 'Untitled'.	hasTotal := false!

renderValue: anObject on: html	valueBlock value: anObject value: html!

selector: aSymbol	valueBlock := [ :row | row perform: aSymbol ]!

sortBlock: anObject	sortBlock := anObject!

sortRows: anArray	| assocs |	assocs := anArray collect: [ :ea | ea -> (self valueForRow: ea) ].	assocs := assocs asSortedCollection: [ :a :b | sortBlock value: a value value: b value ].	^ assocs collect: [ :ea | ea key ]!

textForRow: row	^ formatBlock value: (self valueForRow: row)!

title	^ title!

title: aString	title := aString!

totalForRows: aCollection	^ hasTotal		ifFalse: [ '' ]		ifTrue: [ formatBlock value: (aCollection inject: 0 into: [ :sum :r | sum + (self valueForRow: r) ]) ]!

valueBlock: aBlock	valueBlock := aBlock!

valueForRow: row	^ valueBlock value: row! !

!WAReportColumn categoriesForMethods!
canChoose!public! !
canRender!public!rendering! !
canSort!public! !
chooseRow:!public! !
clickBlock:!accessing!public! !
columnClickBlock:!accessing!public! !
cssClass!accessing!public! !
cssClass:!accessing!public! !
formatBlock:!accessing!public! !
hasTotal:!accessing!public! !
index:!accessing!public! !
initialize!initialization!public! !
renderValue:on:!public!rendering! !
selector:!accessing!public! !
sortBlock:!accessing!public! !
sortRows:!public! !
textForRow:!public! !
title!public! !
title:!accessing!public! !
totalForRows:!public! !
valueBlock:!accessing!public! !
valueForRow:!public! !
!

!WAReportColumn class methodsFor!

renderBlock: aBlock title: aString	^ self new		title: aString;		valueBlock: aBlock;		yourself!

selector: aSymbol	^ self selector: aSymbol title: aSymbol capitalized!

selector: aSymbol title: aString	^ self selector: aSymbol title: aString onClick: nil!

selector: aSymbol title: aString onClick: aBlock	^ self new		title: aString;		selector: aSymbol;		clickBlock: aBlock;		yourself! !

!WAReportColumn class categoriesForMethods!
renderBlock:title:!instance creation!public! !
selector:!instance creation!public! !
selector:title:!instance creation!public! !
selector:title:onClick:!instance creation!public! !
!

