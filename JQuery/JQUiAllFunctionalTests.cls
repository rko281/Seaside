"Filed out from Dolphin Smalltalk 7"!

JQAllFunctionalTests subclass: #JQUiAllFunctionalTests
	instanceVariableNames: 'themes theme'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQUiAllFunctionalTests guid: (GUID fromString: '{6c3ecb91-3b1f-4cec-a276-843fad8cf31c}')!
JQUiAllFunctionalTests comment: ''!
!JQUiAllFunctionalTests categoriesForClass!JQuery-Tests-UI-Functional! !
!JQUiAllFunctionalTests methodsFor!

default	^ JQUiWelcomeFunctionalTest new!

initialize	super initialize.	themes := (JQBaseTheme withAllSubclasses		collect: [ :each | each default ])		asSortedCollection: [ :a :b | a themeName < b themeName ].	theme := JQBaseTheme default!

menu	^ #(('http://www.seaside.st/' 'Seaside') ('http://jquery.com/' 'jQuery') ('http://ui.jquery.com/' 'jQuery UI') ('http://docs.jquery.com/UI' 'Documentation'))!

renderHeaderOn: html	super renderHeaderOn: html.	self renderThemeOn: html!

renderThemeOn: html	html form id: 'theme'; with: [		html label: 'Theme: '.		html select			list: self themes;			selected: self theme;			labels: [ :each | each themeName ];			callback: [ :value | theme := value ];			onChange: (html jQuery this				closest: 'form';				triggerSubmit) ]!

tests	^ Array		with: 'Interaction' -> (OrderedCollection new			add: 'Draggable' -> JQDraggableFunctionalTest new;			add: 'Droppable' -> JQDroppableFunctionalTest new;			add: 'Resizable' -> JQResizableFunctionalTest new;			add: 'Selectable' -> JQSelectableFunctionalTest new;			add: 'Sortable' -> JQSortableFunctionalTest new;			yourself)		with: 'Widgets' -> (OrderedCollection new			add: 'Accordion' -> JQAccordionFunctionalTest new;			add: 'Autocomplete' -> JQAutocompleteFunctionalTest new;			add: 'Button' -> JQButtonFunctionalTest new;			add: 'Datepicker' -> JQDatepickerFunctionalTest new;			add: 'Dialog' -> JQDialogFunctionalTest new;			add: 'Progressbar' -> JQProgressbarFunctionalTest new;			add: 'Slider' -> JQSliderFunctionalTest new;			add: 'Tabs' -> JQTabsFunctionalTest new;			yourself)		with: 'Effects' -> (OrderedCollection new			add: 'Basic' -> JQEffectFunctionalTest new;			add: 'Toggle' -> JQToggleFunctionalTest new;			add: 'Transition' -> JQTransitionFunctionalTest new;			yourself)		with: 'Theming' -> (OrderedCollection new			add: 'Icons' -> JQIconsFunctionalTest new;			add: 'Visuals' -> JQVisualsFunctionalTest new;			yourself)!

theme	"Answer the currently selected theme."	^ theme!

themes	"Answer a list of all available themes."		^ themes!

title	^ 'jQuery UI for Seaside'!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	self theme updateRoot: anHtmlRoot.	JQUiAllFunctionalTestsLibrary default 		updateRoot: anHtmlRoot!

url	^ 'http://ui.jquery.com/'! !
!JQUiAllFunctionalTests categoriesFor: #default!configuration!public! !
!JQUiAllFunctionalTests categoriesFor: #initialize!initialization!public! !
!JQUiAllFunctionalTests categoriesFor: #menu!configuration!public! !
!JQUiAllFunctionalTests categoriesFor: #renderHeaderOn:!public!rendering! !
!JQUiAllFunctionalTests categoriesFor: #renderThemeOn:!public!rendering! !
!JQUiAllFunctionalTests categoriesFor: #tests!configuration!public! !
!JQUiAllFunctionalTests categoriesFor: #theme!configuration!public! !
!JQUiAllFunctionalTests categoriesFor: #themes!configuration!public! !
!JQUiAllFunctionalTests categoriesFor: #title!configuration!public! !
!JQUiAllFunctionalTests categoriesFor: #updateRoot:!public!updating! !
!JQUiAllFunctionalTests categoriesFor: #url!configuration!public! !

!JQUiAllFunctionalTests class methodsFor!

description	^ 'jQuery UI Functional Test Suite'!

initialize	| application |	application := WAAdmin register: self asApplicationAt: 'javascript/jquery-ui'.	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator.	application		addLibrary: JQDeploymentLibrary;		addLibrary: JQUiDeploymentLibrary! !
!JQUiAllFunctionalTests class categoriesFor: #description!accessing!public! !
!JQUiAllFunctionalTests class categoriesFor: #initialize!initialization!public! !

