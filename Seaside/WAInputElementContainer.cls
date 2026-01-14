"Filed out from Dolphin Smalltalk"!

WAComponent subclass: #WAInputElementContainer
	instanceVariableNames: 'textInput textArea singleSelection singleSelectionOptional singleSelectionCustom multiSelection nestedSelection nestedMultiSelection checkbox radio upload hiddenInput radioCustom'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInputElementContainer guid: (GUID fromString: '{ad490d7c-6816-4bee-b022-9d97701ffcd9}')!

WAInputElementContainer comment: ''!

!WAInputElementContainer categoriesForClass!Seaside-Tests-Functional! !

!WAInputElementContainer methodsFor!

elements	^ #( Quito Dakar Sydney Bamako )!

nestedElements	^ #(('Functional' ('Haskell ' 'Lisp' 'ML')) ('Dataflow' ('Hartmann pipelines' 'G' 'Max' 'Prograph')) ('Fourth-generation' ('Today' 'Ubercode' 'Uniface')))!

renderCheckboxOn: html	self		renderLabel: 'Checkbox'		input: [			html label: [				html checkbox					value: checkbox;					callback: [ :value | checkbox := value ].				html text: 'Checked' ] ]		output: checkbox printString		on: html!

renderContentOn: html	self renderHeadingOn: html.	self renderTextInputOn: html.	self renderTextAreaOn: html.	self renderHiddenInputOn: html.	self renderCheckboxOn: html.	self renderRadioButtonsOn: html.	self renderRadioButtonsCustomOn: html.	self renderSingleSelectionOn: html.	self renderSingleSelectionCustomOn: html.	self renderSingleSelectionOptionalOn: html.	self renderMultiSelectionOn: html.	self renderNestedSelectionOn: html.	self renderNestedMultiSelectionOn: html.	self renderUploadOn: html!

renderHeadingOn: html	html tableRow: [		html tableHeading.		html tableHeading: 'Control'.		html tableHeading: 'Print String' ]!

renderHiddenInputOn: html	| string |	string := hiddenInput ifNil: [ 'Seaside' ].	self		renderLabel: 'Hidden Input'		input: [			html render: string.						html hiddenInput				value: string;				callback: [ :value | hiddenInput := value ] ]		output: hiddenInput printString		on: html!

renderLabel: aString input: anInputBlock output: anOutputBlock on: html	html tableRow: [		html tableHeading: aString.		html tableData: anInputBlock.		html tableData: anOutputBlock ]!

renderMultiSelectionOn: html 	self 		renderLabel: 'Multi Selection'		input: [			html multiSelect				list: self elements;				titles: [ :each | 'Title: ' , each greaseString ];				selected: multiSelection;				callback: [ :value | multiSelection := value ] ]		output: [			multiSelection isEmptyOrNil ifFalse: [				"empty lists are invalid HTML"				html unorderedList list: multiSelection ] ]		on: html!

renderNestedMultiSelectionOn: html	| selectTag |	self		renderLabel: 'Nested Multi Selection'		input: [			selectTag := html multiSelect.			selectTag				size: 6;				callback: [ :value | nestedMultiSelection := value ];				selected: nestedMultiSelection;				with: [					self nestedElements do: [ :list |						html optionGroup							label: list first;							with: [								list second do: [ :each |									html option										value: each with: selectTag ;										with: each ] ] ] ] ]		output: [ nestedMultiSelection isNil ifFalse: [ html unorderedList list: nestedMultiSelection ] ]		on: html!

renderNestedSelectionOn: html	| selectTag |	self		renderLabel: 'Nested Selection'		input: [			selectTag := html select.			selectTag				callback: [ :value | nestedSelection := value ];				selected: nestedSelection;				with: [					self nestedElements do: [ :list |						html optionGroup							label: list first;							with: [								list second do: [ :each |									html option										value: each with: selectTag;										with: each ] ] ] ] ]		output: nestedSelection printString		on: html!

renderRadioButtonsCustomOn: html	self		renderLabel: 'Radiogroup (Custom)'		input: [			html radioGroup: [ :group |					self elements do: [ :each |						html label: [ 							html radioButton								group: group;								selected: radioCustom = each;								callback: [ radioCustom := each ].							html text: each ].						html break ] ] ]		output: radioCustom printString		on: html!

renderRadioButtonsOn: html	self		renderLabel: 'Radiogroup'		input: [			html radioGroup				callback: [ :value | radio := value ];				selected: radio;				with: [ :group |					self elements do: [ :each |						html label: [ 							group radioButton value: each.							html text: each ].						html break ] ] ]		output: radio printString		on: html!

renderSingleSelectionCustomOn: html 	self 		renderLabel: 'Single Selection (Custom)'		input: [			html select				dispatchCallback;				with: [					self elements do: [ :each |						html option							label: 'Short: ', (each copyFrom: 1 to: 3);							callback: [ singleSelectionCustom := each ];							selected: (singleSelectionCustom = each);							with: 'Custom:', each greaseString  ] ] ]		output: singleSelectionCustom printString		on: html!

renderSingleSelectionOn: html 	self 		renderLabel: 'Single Selection'		input: [			html select				list: self elements;				titles: [ :each | 'Title: ' , each greaseString ];				selected: singleSelection;				callback: [ :value | singleSelection := value ] ]		output: singleSelection printString		on: html!

renderSingleSelectionOptionalOn: html	self		renderLabel: 'Single Selection (Optional)'		input: [			html select				beOptional;				list: self elements;				optionalLabel: '(none)';				selected: singleSelectionOptional;				callback: [ :value | singleSelectionOptional := value ] ]		output: singleSelectionOptional printString		on: html!

renderTextAreaOn: html	self		renderLabel: 'Text Area'		input: [			html textArea				rows: 3;				columns: 17;				value: textArea;				callback: [ :value | textArea := value ] ]		output: textArea printString		on: html!

renderTextInputOn: html	self		renderLabel: 'Text Input'		input: [			html textInput				value: textInput;				callback: [ :value | textInput := value ] ]		output: textInput printString		on: html!

renderUploadOn: html	self		renderLabel: 'Upload'		input: [ html fileUpload callback: [ :file | upload := file ] ]		output: upload printString		on: html! !

!WAInputElementContainer categoriesForMethods!
elements!accessing!public! !
nestedElements!accessing!public! !
renderCheckboxOn:!public!rendering/elements! !
renderContentOn:!public!rendering! !
renderHeadingOn:!public!rendering! !
renderHiddenInputOn:!public!rendering/elements! !
renderLabel:input:output:on:!public!rendering! !
renderMultiSelectionOn:!public!rendering/elements! !
renderNestedMultiSelectionOn:!public!rendering/elements! !
renderNestedSelectionOn:!public!rendering/elements! !
renderRadioButtonsCustomOn:!public!rendering/elements! !
renderRadioButtonsOn:!public!rendering/elements! !
renderSingleSelectionCustomOn:!public!rendering/elements! !
renderSingleSelectionOn:!public!rendering/elements! !
renderSingleSelectionOptionalOn:!public!rendering/elements! !
renderTextAreaOn:!public!rendering/elements! !
renderTextInputOn:!public!rendering/elements! !
renderUploadOn:!public!rendering/elements! !
!

