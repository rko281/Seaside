"Filed out from Dolphin Smalltalk 7"!

WADispatcherSubPage subclass: #WADispatcherCopyPage
	instanceVariableNames: 'name handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADispatcherCopyPage guid: (GUID fromString: '{6a45e2f4-acf3-4e75-a48d-eba103a2a606}')!
WADispatcherCopyPage comment: ''!
!WADispatcherCopyPage categoriesForClass!Seaside-Tools-Web! !
!WADispatcherCopyPage methodsFor!

copyHandler	| newHandler |	newHandler := self handler parent 		register: self handler cloneHandler		at: name.	^ self answer: newHandler!

dispatcher	^ handler!

handler	^ handler!

handler: aRequestHandler 	handler := aRequestHandler!

renderContentOn: html 	html heading		level: 2;		with: 'Copy request handler: ' , self handler name.	html form: [		html table: [			html tableRow: [				html tableData					class: 'label';					with: 'Name for new request handler: '.				html tableData:  [					html textInput						value: handler name , '_copy';						callback: [ :value | name := value ] ] ] ].		html break.		html submitButton			callback: [ self copyHandler ];			with: 'OK'.		html space.		html submitButton			callback: [ self answer: nil ];			with: 'Cancel' ]! !
!WADispatcherCopyPage categoriesFor: #copyHandler!actions!public! !
!WADispatcherCopyPage categoriesFor: #dispatcher!accessing!public! !
!WADispatcherCopyPage categoriesFor: #handler!accessing!public! !
!WADispatcherCopyPage categoriesFor: #handler:!accessing!public! !
!WADispatcherCopyPage categoriesFor: #renderContentOn:!public!rendering! !

