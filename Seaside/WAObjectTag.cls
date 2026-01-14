"Filed out from Dolphin Smalltalk"!

WATagBrush subclass: #WAObjectTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAObjectTag guid: (GUID fromString: '{594e2b64-75d2-4799-b68e-f222a53b7808}')!

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

!WAObjectTag categoriesForMethods!
archive:!attributes!public! !
classId:!attributes!public! !
codebase:!attributes!public! !
codetype:!attributes!public! !
declare:!attributes!public! !
height:!attributes!public! !
standby:!attributes!public! !
tag!accessing!public! !
type:!attributes!public! !
url:!attributes!public! !
width:!attributes!public! !
!

