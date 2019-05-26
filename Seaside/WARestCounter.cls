﻿"Filed out from Dolphin Smalltalk 7"!

WAExampleComponent subclass: #WARestCounter
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARestCounter guid: (GUID fromString: '{1646d0ad-5189-40db-b29c-d9c10a9c7e88}')!
WARestCounter comment: 'I demonstrate how to use components that put state into URLs so that action can be taken once a session is expired.'!
!WARestCounter categoriesForClass!Seaside-REST-Examples! !
!WARestCounter methodsFor!

count

count: anInteger

decrease

increase

initialize

renderContentOn: html

states

updateUrl: anUrl
!WARestCounter categoriesFor: #count!accessing!public! !
!WARestCounter categoriesFor: #count:!accessing!public! !
!WARestCounter categoriesFor: #decrease!actions!public! !
!WARestCounter categoriesFor: #increase!actions!public! !
!WARestCounter categoriesFor: #initialize!initialization!public! !
!WARestCounter categoriesFor: #renderContentOn:!public!rendering! !
!WARestCounter categoriesFor: #states!hooks!public! !
!WARestCounter categoriesFor: #updateUrl:!hooks!public! !

!WARestCounter class methodsFor!

register
!WARestCounter class categoriesFor: #register!public!registration! !
