"Filed out from Dolphin Smalltalk"!

JSTimed subclass: #JSTimeout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSTimeout guid: (GUID fromString: '{475503ea-a69f-460c-876d-4b46b42ba522}')!

JSTimeout comment: 'I evaluate the decorated object after a timeout.'!

!JSTimeout categoriesForClass!Javascript-Core-Decorations! !

!JSTimeout methodsFor!

javascriptContentOn: aRenderer	(aRenderer function: 'setTimeout')		with: [			aRenderer argument: [				aRenderer defineFunction: [					super javascriptContentOn: aRenderer ] ].			aRenderer argument: self duration ]! !

!JSTimeout categoriesForMethods!
javascriptContentOn:!printing!public! !
!

