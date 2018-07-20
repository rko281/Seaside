"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAHandlerEditor
	instanceVariableNames: 'handler filterEditor configurationEditor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHandlerEditor guid: (GUID fromString: '{bb1b12a2-c71f-452a-aae8-11a73ad7fff7}')!
WAHandlerEditor comment: ''!
!WAHandlerEditor categoriesForClass!Seaside-Tools-Web! !
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

renderSubItemsOn: html! !
!WAHandlerEditor categoriesFor: #children!hooks!public! !
!WAHandlerEditor categoriesFor: #editor!accessing!public! !
!WAHandlerEditor categoriesFor: #handler!accessing!public! !
!WAHandlerEditor categoriesFor: #initializeOn:!initialization!public! !
!WAHandlerEditor categoriesFor: #parent!accessing!public! !
!WAHandlerEditor categoriesFor: #renderConfigurationOn:!public!rendering! !
!WAHandlerEditor categoriesFor: #renderContentOn:!public!rendering! !
!WAHandlerEditor categoriesFor: #renderFiltersOn:!public!rendering! !
!WAHandlerEditor categoriesFor: #renderHandlerOn:!public!rendering! !
!WAHandlerEditor categoriesFor: #renderSubItemsOn:!public!rendering! !

!WAHandlerEditor class methodsFor!

new	^ self on: nil!

on: anEntryPoint	^ self basicNew initializeOn: anEntryPoint; yourself! !
!WAHandlerEditor class categoriesFor: #new!instance creation!public! !
!WAHandlerEditor class categoriesFor: #on:!instance creation!public! !

