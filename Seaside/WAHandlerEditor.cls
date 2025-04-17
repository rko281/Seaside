"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAHandlerEditor
	instanceVariableNames: 'handler filterEditor configurationEditor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHandlerEditor guid: (GUID fromString: '{f3118e6b-02d5-494c-8701-68d9967f23f2}')!

WAHandlerEditor comment: ''!

!WAHandlerEditor categoriesForClass!Unclassified! !

!WAHandlerEditor methodsFor!

children	^ Array with: filterEditor with: configurationEditor!

editor	^ configurationEditor!

handler	^ handler!

initializeOn: aHandler	self initialize.	handler := aHandler.	filterEditor := WAFilterAttributeEditor new handler: handler; group: #filters; parent: self; yourself.	aHandler configuration isNil ifFalse: [		configurationEditor := aHandler configuration configurationComponent.		configurationEditor parent: self.		configurationEditor onAnswer: [ self answer ] ]!

parent	"editor parent component hack"	^ self!

renderConfigurationOn: html	self handler configuration isNil		ifFalse: [ html render: configurationEditor ]!

renderContentOn: html	self renderSubItemsOn: html.	self renderFiltersOn: html.	self renderHandlerOn: html!

renderFiltersOn: html	html render: filterEditor!

renderHandlerOn: html	self renderConfigurationOn: html!

renderSubItemsOn: html! !

!WAHandlerEditor categoriesForMethods!
children!hooks!public! !
editor!accessing!public! !
handler!accessing!public! !
initializeOn:!initialization!public! !
parent!accessing!public! !
renderConfigurationOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderFiltersOn:!public!rendering! !
renderHandlerOn:!public!rendering! !
renderSubItemsOn:!public!rendering! !
!

!WAHandlerEditor class methodsFor!

new	^ self on: nil!

on: anEntryPoint	^ self basicNew initializeOn: anEntryPoint; yourself! !

!WAHandlerEditor class categoriesForMethods!
new!instance creation!public! !
on:!instance creation!public! !
!

