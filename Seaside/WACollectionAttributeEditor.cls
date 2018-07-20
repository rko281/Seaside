"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WACollectionAttributeEditor
	instanceVariableNames: 'configuration attribute selections selectionsCurrent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACollectionAttributeEditor guid: (GUID fromString: '{4f48bfe2-60c9-4931-8970-415fe3d913bf}')!
WACollectionAttributeEditor comment: ''!
!WACollectionAttributeEditor categoriesForClass!Seaside-Tools-Web! !
!WACollectionAttributeEditor methodsFor!

add	| currentValues filtered |	currentValues := self currentValues.	filtered := selections		reject: [ :each | currentValues includes: (self valueForOption: each) ];		collect: [ :each | self valueForOption: each ].	self isOverride		ifTrue: [ self expression value: self expression value, filtered ]		ifFalse: [ 			self isModify				ifTrue: [ self expression additions: self expression additions, filtered ] ].	selectionsCurrent := self currentList select: [ :each |		filtered includes: each value ]!

additions	^ (self currentList select: [ :each | each key = #add ]) collect: [ :assoc | assoc value ]!

addToRemovals	self expression removals: self expression removals , (self selectedInherited 		reject: [ :each | self expression removals includes: each ])!

attribute	^ attribute!

attribute: anObject	attribute := anObject!

clear	self configuration removeExpressionAt: attribute key!

configuration	^ configuration!

configuration: anObject	configuration := anObject!

currentList	^ configuration currentCollectionAt: attribute key!

currentValues	^ self currentList collect: [ :each | each value ]!

expression	^ self configuration expressionAt: attribute key ifAbsent: [ nil ]!

fullList	^ attribute options!

initialize 	super initialize.	selections := #().	selectionsCurrent := #()!

isModify	^ self expression notNil and: [ self isOverride not ]!

isOverride	^ self expression isKindOf: WAValueExpression!

isWriteable	^ self isOverride or: [ self isModify ]!

modify	self configuration at: attribute key addAll: #() removeAll: #()!

moveDown	self isModify		ifTrue: [ self expression additions: (self moveDown: self selectedAdditions using: self expression additions) ]		ifFalse: [ 			self isOverride				ifTrue: [ self expression value: (self moveDown: self selectionsCurrent using: self expression value) ] ]!

moveDown: aSelectedCollection using: aCollection	| index |	aSelectedCollection reverse do: [ :each | 		index := aCollection indexOf: each ifAbsent: [ aCollection size ].		index < aCollection size			ifTrue: [ aCollection swap: index with: index + 1 ] ].	^ aCollection!

moveUp	self isModify		ifTrue: [ self expression additions: (self moveUp: self selectedAdditions using: self expression additions) ]		ifFalse: [ 			self isOverride				ifTrue: [ self expression value: (self moveUp: self selectionsCurrent using: self expression value) ] ]!

moveUp: aSelectedCollection using: aCollection	| index |	aSelectedCollection do: [ :each |		index := aCollection indexOf: each ifAbsent: [ 0 ].		index > 1 			ifTrue: [ aCollection swap: index with: index - 1 ] ].	^ aCollection!

optionForValue: anObject	^ anObject!

override	self configuration		takeValue: (self configuration at: attribute key)		forAttribute: attribute!

removals	^ self currentList select: [ :each | each key = #remove ]!

remove	self isOverride		ifTrue: [			self expression value isEmpty				ifTrue: [ self expression value: self selectionsCurrent ]				ifFalse: [ self expression value: (self removeAll: self selectionsCurrent from: self expression value) ] ]		ifFalse: [			self isModify				ifTrue: [ self expression additions: (self removeAll: self selectedAdditions from: self expression additions) ] ]!

removeAll: aRemoveCollection from: aCollection	^ aCollection reject: [ :each |		aRemoveCollection includes: each ]!

removeFromRemovals	self expression removals: (self 		removeAll: self selectedRemovals 		from: self expression removals)!

renderActionsOn: html	(self isOverride or: [ self isModify ])		ifTrue: [			html anchor				title: 'Clear override';				onClick: 'return submitForm(this)';				callback: [ self clear ];				with: 'Clear'.			self isModify				ifTrue: [ html space. self renderAddToRemovalOn: html ] ]		ifFalse: [			html anchor				title: 'Override inherited values';				onClick: 'return submitForm(this)';				callback: [ self override ];				with: 'Override'.			html space.			html anchor				title: 'Define Additions and / or removals';				onClick: 'return submitForm(this)';				callback: [ self modify ];				with: 'Modify' ]!

renderAddToRemovalOn: html	html anchor		title: 'Add selected inherited elements to the removal list';		onClick: 'return submitForm(this)';		callback: [ self addToRemovals ];		with: 'Remove inherited'.	html space: 2.	html anchor		title: 'Remove selected elements from the removal list';		onClick: 'return submitForm(this)';		callback: [ self removeFromRemovals ];		with: 'Undo Remove inherited'!

renderContentOn: html 	| currentList fullList listSize |	fullList := self fullList.	listSize := (fullList size min: 30) max: 5.	html div		class: 'groupContent';		with: [			html heading				level2;				with: 'Configure attribute: ' , attribute key.			html form: [				self renderActionsOn: html.				html paragraph.				html table: [					html tableRow: [						html tableData							verticalAlign: 'top';							with: [								html label: 'Available'.								html break.								html multiSelect									list: fullList;									selected: selections;									size: listSize;									callback: [ :v | self selections: v ] ].						html tableData							verticalAlign: 'middle';							with: [ self renderMoveActionsOn: html ].						html tableData							verticalAlign: 'top';							with: [								html label: 'Current'.								html break.								currentList := self currentList.								currentList isEmpty 									ifTrue: [ html text: '(empty)' ]									ifFalse: [										html multiSelect											list: currentList;											disabled: self isWriteable not;											selected: selectionsCurrent;											labels: [ :each | (self optionForValue: each value) greaseString, ' [', each key greaseString, ']' ];											size: listSize;											callback: [ :v | self selectionsCurrent: v ] ] ].						html tableData							verticalAlign: 'middle';							with: [ self renderMoveUpAndDownOn: html ] ] ].				html submitButton					callback: [ self answer ];					with: 'OK' ] ]!

renderMoveActionsOn: html	self isWriteable 		ifTrue: [				html anchor				title: 'Add to list';				onClick: 'return submitForm(this)';				callback: [ self add ];				with: [ html html: '&rarr;' ].			html break; break. 			html anchor				title: 'Remove from list';				onClick: 'return submitForm(this)';				callback: [ self remove ];				with: [ html html: '&larr;' ] ]		ifFalse: [ html space: 5 ]!

renderMoveUpAndDownOn: html	(self isWriteable and: [ self currentList isEmpty not ]) ifTrue: [		html anchor			title: 'Move selected element up';			onClick: 'return submitForm(this)';			callback: [ self moveUp ];			with: [ html html: '&uarr;' ].			html break; break. 			html anchor				title: 'Move selected element down';			onClick: 'return submitForm(this)';			callback: [ self moveDown ];			with: [ html html: '&darr;' ] ]!

selectedAdditions	^ (selectionsCurrent select: [ :each | each key = #add ]) collect: [ :assoc | assoc value ]!

selectedInherited	^ (selectionsCurrent select: [ :each | each key = #inherited ]) collect: [ :assoc | assoc value ]!

selectedRemovals	^ (selectionsCurrent select: [ :each | each key = #remove ]) collect: [ :assoc | assoc value ]!

selections	^ selections!

selections: anArray	selections := anArray!

selectionsCurrent	^ selectionsCurrent collect: [ :each | each value ]!

selectionsCurrent: aColl	selectionsCurrent := aColl!

valueForOption: anObject	^ anObject! !
!WACollectionAttributeEditor categoriesFor: #add!actions!public! !
!WACollectionAttributeEditor categoriesFor: #additions!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #addToRemovals!actions!public! !
!WACollectionAttributeEditor categoriesFor: #attribute!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #attribute:!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #clear!actions!public! !
!WACollectionAttributeEditor categoriesFor: #configuration!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #configuration:!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #currentList!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #currentValues!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #expression!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #fullList!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #initialize!initialization!public! !
!WACollectionAttributeEditor categoriesFor: #isModify!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #isOverride!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #isWriteable!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #modify!actions!public! !
!WACollectionAttributeEditor categoriesFor: #moveDown!actions!public! !
!WACollectionAttributeEditor categoriesFor: #moveDown:using:!private! !
!WACollectionAttributeEditor categoriesFor: #moveUp!actions!public! !
!WACollectionAttributeEditor categoriesFor: #moveUp:using:!private! !
!WACollectionAttributeEditor categoriesFor: #optionForValue:!private! !
!WACollectionAttributeEditor categoriesFor: #override!actions!public! !
!WACollectionAttributeEditor categoriesFor: #removals!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #remove!actions!public! !
!WACollectionAttributeEditor categoriesFor: #removeAll:from:!private! !
!WACollectionAttributeEditor categoriesFor: #removeFromRemovals!actions!public! !
!WACollectionAttributeEditor categoriesFor: #renderActionsOn:!public!rendering! !
!WACollectionAttributeEditor categoriesFor: #renderAddToRemovalOn:!public!rendering! !
!WACollectionAttributeEditor categoriesFor: #renderContentOn:!public!rendering! !
!WACollectionAttributeEditor categoriesFor: #renderMoveActionsOn:!public!rendering! !
!WACollectionAttributeEditor categoriesFor: #renderMoveUpAndDownOn:!public!rendering! !
!WACollectionAttributeEditor categoriesFor: #selectedAdditions!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #selectedInherited!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #selectedRemovals!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #selections!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #selections:!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #selectionsCurrent!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #selectionsCurrent:!accessing!public! !
!WACollectionAttributeEditor categoriesFor: #valueForOption:!private! !

