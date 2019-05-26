"Filed out from Dolphin Smalltalk 7"!

WAFileLibrary subclass: #WANavigationFiles
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANavigationFiles guid: (GUID fromString: '{74970b24-6cc3-45d4-b2d8-d5a2449c8c23}')!
WANavigationFiles comment: 'Provides CSS to render WANavigation using tabs.'!
!WANavigationFiles categoriesForClass!Seaside-Widgets-Components! !
!WANavigationFiles methodsFor!

mainCss	^ ' /* this is from http://kalsey.com/tools/csstabs/ - would also be nice to do http://www.alistapart.com/articles/slidingdoors/ */.kalsey .navigation-options {	border-bottom : 1px solid #ccc;	margin : 0;	padding-bottom : 19px;	padding-left : 10px;}.kalsey .navigation-options ul, .kalsey .navigation-options li	{	display : inline;	list-style-type : none;	margin : 0;	padding : 0;}.kalsey .navigation-options a:link, .kalsey .navigation-options a:visited	{	background : #E8EBF0;	border : 1px solid #ccc;	color : #666;	float : left;	font-size : small;	font-weight : normal;	line-height : 14px;	margin-right : 8px;	padding : 2px 10px 2px 10px;	text-decoration : none;}.kalsey .navigation-options a:link.active, .kalsey .navigation-options a:visited.active	{	background : #fff;	border-bottom : 1px solid #fff;	color : #000;}.kalsey .navigation-options ul a:hover	{	color : #f00;}.kalsey .navigation-options .option-selected a {	background : #fff;	border-bottom : 1px solid #fff;	color : #000;}.kalsey .navigation-content {	background : #fff;	border : 1px solid #ccc;	border-top : none;	clear : both;	margin : 0px;	padding : 15px;	line-height: 1.1;  /* IE6 CSS workaround - http://www.dracos.co.uk/web/css/ie6floatbug/ */}/* customization */.kalsey .navigation-content tbody tr th, .kalsey .navigation-content tfoot tr th {	text-align: right;	vertical-align: top;}.kalsey .navigation-content h2 {	font-size: 1.2em;}.kalsey .navigation-content tbody.right tr td, .kalsey .navigation-content tfoot.right tr td {	text-align: right;}'!

selectorsToInclude	^ #(mainCss)! !
!WANavigationFiles categoriesFor: #mainCss!public!styles! !
!WANavigationFiles categoriesFor: #selectorsToInclude!accessing!public! !

