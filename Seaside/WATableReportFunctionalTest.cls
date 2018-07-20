"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WATableReportFunctionalTest
	instanceVariableNames: 'report'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATableReportFunctionalTest guid: (GUID fromString: '{6164b3d1-1be1-4808-b8d8-245d37786c17}')!
WATableReportFunctionalTest comment: ''!
!WATableReportFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WATableReportFunctionalTest methodsFor!

children	^ Array with: report!

initialize	super initialize.	report := WATableReport new		rows: WAComponent allSubclasses asArray;		columns: (OrderedCollection new			add: (WAReportColumn				selector: #fullName title: 'Name'				onClick: [ :each | self inform: each description onAnswer: [ ] ]);			add: ((WAReportColumn				selector: #canBeRoot title: 'Can Be Root')				sortBlock: [ :a :b | a ]);			add: (WAReportColumn				renderBlock: [ :each :html | html emphasis: each description ]				title: 'Description');			yourself);		rowColors: #(lightblue lightyellow);		rowPeriod: 1;		yourself! !
!WATableReportFunctionalTest categoriesFor: #children!hooks!public! !
!WATableReportFunctionalTest categoriesFor: #initialize!initialization!public! !

