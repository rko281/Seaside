"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WATableReportFunctionalTest
	instanceVariableNames: 'report'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATableReportFunctionalTest guid: (GUID fromString: '{3cd1ce0f-bbe8-42e2-836e-075f6c38595b}')!
WATableReportFunctionalTest comment: ''!
!WATableReportFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WATableReportFunctionalTest methodsFor!

children	^ Array with: report!

initialize	super initialize.	report := WATableReport new		rows: WAComponent allSubclasses asArray;		columns: (OrderedCollection new			add: (WAReportColumn				selector: #fullName title: 'Name'				onClick: [ :each | self inform: each description onAnswer: [ ] ]);			add: ((WAReportColumn				selector: #canBeRoot title: 'Can Be Root')				sortBlock: [ :a :b | a ]);			add: (WAReportColumn				renderBlock: [ :each :html | html emphasis: each description ]				title: 'Description');			yourself);		rowColors: #(lightblue lightyellow);		rowPeriod: 1;		yourself! !
!WATableReportFunctionalTest categoriesFor: #children!hooks!public! !
!WATableReportFunctionalTest categoriesFor: #initialize!initialization!public! !

