﻿"Filed out from Dolphin Smalltalk"!

WACanvasWidget subclass: #WAPath
	instanceVariableNames: 'stack'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPath guid: (GUID fromString: '{734ba34f-7f14-4e0c-b792-ca41ab0b83a2}')!

WAPath comment: 'WAPath represents a path navigation (breadcrumbs) for a web page and displays standard breadcrumbs(xxx >> yyy >> zzz). WAPath maintains a stack of associations, one for each "location" or "page" in the path. The association key is the text that is displayed in the breadcrimb. The association value is an object of your choosing, which your code uses to restore that "page". To add to the path use the method WAPath>>pushSegment: anObject name: ''lulu''. The name: arguement is the association key, the segment: argument is the association value.The method WAPath>>currentSegment returns object associated with the current "page". Your code is not notified when the user clicks on a link in the WAPath object. So when you render a page call WAPath>>currentSegment to get the current object, and generate the page accordingly.See WAInspector for example use.Use WATrail to handle breadcrumbs for sequences of call: and answers:.Instance Variables:	stack	<Array of associations(String->Object) > History of the page. Keys -> display string, values -> object used in helping generating page.'!

!WAPath categoriesForClass!Components! !

!WAPath methodsFor!

choose: anAssociation 	"Install a new stack of navigation from the old one and the specified association."	| newStack |	newStack := WriteStream on: Array new.	stack do: 		[ :ea | 		newStack nextPut: ea.		ea == anAssociation ifTrue: 			[ stack := newStack contents.			^ self ] ]!

currentSegment	^ stack isEmpty		ifFalse: [ stack last value ]!

initialize	super initialize.	stack := #()!

pushSegment: anObject name: aString	stack := stack, (Array with: aString -> anObject)!

renderContentOn: html	stack isEmpty 		ifTrue: [ ^ self ].	html div class: 'path'; with: [		stack allButLast do: [ :assoc |			html anchor 				callback: [ self choose: assoc ]; 				with: assoc key.			html text: ' >> ' ].		html strong: stack last key ]!

states	^ Array with: self! !

!WAPath categoriesForMethods!
choose:!behavior!public! !
currentSegment!accessing!public! !
initialize!initialization!public! !
pushSegment:name:!behavior!public! !
renderContentOn:!public!rendering! !
states!hooks!public! !
!

!WAPath class methodsFor!

exampleComponent	^ self new		pushSegment: 123 name: 'xxx';		pushSegment: 456 name: 'yyy';		pushSegment: 789 name: 'zzz';		yourself! !

!WAPath class categoriesForMethods!
exampleComponent!example!public! !
!

