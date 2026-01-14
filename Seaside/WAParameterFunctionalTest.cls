"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAParameterFunctionalTest
	instanceVariableNames: 'wasExecuted values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAParameterFunctionalTest guid: (GUID fromString: '{911e2a14-0c31-4576-afd9-a9fe4d2a9e06}')!

WAParameterFunctionalTest comment: 'A WAParameterFunctionalTest tests whether GET and POST fields are merged in WARequest >> #fields.'!

!WAParameterFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WAParameterFunctionalTest methodsFor!

actionUrlFor: html	| url |	url := html actionUrl copy.	url		addField: self parameterName		value: self firstParameterValue.	^ url!

firstParameterValue	^ 'firstValue'!

initialize	super initialize.	wasExecuted := false!

parameterName	^ 'parameter'!

renderContentOn: html	self renderExplanationOn: html.	wasExecuted		ifTrue: [ self renderExecutedOn: html ]		ifFalse: [ self renderNotExecutedOn: html ]!

renderExecutedOn: html	html strong: (self wasSuccessful ifTrue: [ 'success' ] ifFalse: [ 'fail' ])!

renderExplanationOn: html	html paragraph: 'This test makes sure the server passes both GET and POST paramters to Seaside. Simply hit ''run test'' and ''success'' should be displayed. If ''fail'' is displayed or ''run test'' is displayed again then the test has failed.'!

renderNotExecutedOn: html	html form		action: (self actionUrlFor: html);		with: [		 	html div: [				html hiddenInput					name: self parameterName;					value: self secondParameterValue.				html submitButton					callback: [ self runTest ];					text: 'run test' ] ]!

runTest	values := self requestContext request fields allAt: self parameterName.	wasExecuted := true!

secondParameterValue	^ 'secondValue'!

wasSuccessful	^ values notNil		and: [ values isCollection		and: [ values isString not		and: [ values size = 2		and: [ (values includes: self firstParameterValue)		and: [ (values includes: self secondParameterValue) ] ] ] ] ]! !

!WAParameterFunctionalTest categoriesForMethods!
actionUrlFor:!accessing!public! !
firstParameterValue!accessing!public! !
initialize!initialization!public! !
parameterName!accessing!public! !
renderContentOn:!public!rendering! !
renderExecutedOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
renderNotExecutedOn:!public!rendering! !
runTest!actions!public! !
secondParameterValue!accessing!public! !
wasSuccessful!public!testing! !
!

