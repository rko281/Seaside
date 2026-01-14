"Filed out from Dolphin Smalltalk"!

JSTimed subclass: #JSInterval
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSInterval guid: (GUID fromString: '{6aa857c2-fee0-45fd-8287-47541428d0e1}')!

JSInterval comment: 'I periodically execute the decorated object.'!

!JSInterval categoriesForClass!Javascript-Core-Decorations! !

!JSInterval methodsFor!

javascriptContentOn: aRenderer	(aRenderer function: 'setInterval')		with: [			aRenderer argument: [				aRenderer defineFunction: [					super javascriptContentOn: aRenderer ] ].			aRenderer argument: self duration ]! !

!JSInterval categoriesForMethods!
javascriptContentOn:!printing!public! !
!

