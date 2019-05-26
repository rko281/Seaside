"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAObjectTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAObjectTag guid: (GUID fromString: '{d66b6af6-eba6-4e45-a911-3513ed156a16}')!
WAObjectTag comment: 'Defines an embedded object. Use this element to add multimedia to your XHTML page.This element allows you to specify the data and parameters for objects inserted into HTML documents, and the code that can be used to display/manipulate that data.'!
!WAObjectTag categoriesForClass!Seaside-Canvas-Tags! !
!WAObjectTag methodsFor!

archive: aUrl 	self attributes 		at: 'archive'		put: aUrl!

classId: aUrl 	self attributes 		at: 'classid'		put: aUrl!

codebase: aUrl 	self attributes 		at: 'codebase'		put: aUrl!

codetype: aString 	self attributes 		at: 'codetype'		put: aString!

declare: aBoolean 	self attributes 		at: 'declare'		put: aBoolean!

height: anInteger 	self attributes 		at: 'height'		put: anInteger!

standby: aString 	self attributes 		at: 'standby'		put: aString!

tag	^ 'object'!

type: aString 	self attributes 		at: 'type'		put: aString!

url: aUrl 	self attributes 		at: 'data'		put: aUrl!

width: anInteger 	self attributes 		at: 'width'		put: anInteger! !
!WAObjectTag categoriesFor: #archive:!attributes!public! !
!WAObjectTag categoriesFor: #classId:!attributes!public! !
!WAObjectTag categoriesFor: #codebase:!attributes!public! !
!WAObjectTag categoriesFor: #codetype:!attributes!public! !
!WAObjectTag categoriesFor: #declare:!attributes!public! !
!WAObjectTag categoriesFor: #height:!attributes!public! !
!WAObjectTag categoriesFor: #standby:!attributes!public! !
!WAObjectTag categoriesFor: #tag!accessing!public! !
!WAObjectTag categoriesFor: #type:!attributes!public! !
!WAObjectTag categoriesFor: #url:!attributes!public! !
!WAObjectTag categoriesFor: #width:!attributes!public! !

