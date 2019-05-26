"Filed out from Dolphin Smalltalk 7"!

WAAbstractCanvasBrushTest subclass: #WACanvasBrushTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACanvasBrushTest guid: (GUID fromString: '{bd92bac0-636e-4562-82d7-0b792ed44adf}')!
WACanvasBrushTest comment: ''!
!WACanvasBrushTest categoriesForClass!Seaside-Tests-Canvas! !
!WACanvasBrushTest methodsFor!

createHandlers	^ Array with: (WARegistry new		 cache: WAPredictableCache new;		yourself)!

testAnchor	self		assert: [ :html | html anchor ]		gives: '<a></a>'.	self		assert: [ :html | html anchor callback: [ ]; with: 'foo' ]		gives: '<a href="/?1">foo</a>'.	self		assert: [ :html |			html anchor callback: [ ]; with: 'foo'.			html anchor callback: [ ]; with: 'bar' ]		gives: '<a href="/?1">foo</a><a href="/?2">bar</a>'.	self		assert: [ :html |			html anchor				extraPath: 'zork';				callback: [ ];				with: 'foo' ]		gives: '<a href="/zork?1">foo</a>'.	self		assert: [ :html |			html anchor				extraParameters: 'zork';				callback: [ ];				with: 'foo' ]		gives: '<a href="/?zork&amp;1">foo</a>'!

testAnchorAttributes	self		assert: [ :html | html anchor charset: 'utf-8' ]		gives: '<a charset="utf-8"></a>'.	self		assert: [ :html | html anchor name: 'foo' ]		gives: '<a name="foo"></a>'.	self		assert: [ :html | html anchor relationship: 'home' ]		gives: '<a rel="home"></a>'.	self		assert: [ :html | html anchor relationship: 'home'; relationship: 'parent' ]		gives: '<a rel="home parent"></a>'.	self		assert: [ :html | html anchor reverse: 'home' ]		gives: '<a rev="home"></a>'.	self		assert: [ :html | html anchor reverse: 'home'; reverse: 'parent' ]		gives: '<a rev="home parent"></a>'.	self		assert: [ :html | html anchor target: '_new' ]		gives: '<a target="_new"></a>'.	self		assert: [ :html | html anchor type: 'text/plain' ]		gives: '<a type="text/plain"></a>'!

testAnchorCallback	self		assert: [ :html | html anchor callback: [ ] ]		gives: '<a href="/?1"></a>'.			self		assert: [ :html | 			self 				should: [ html anchor callback: [ :value | ] ]				raise: Error ]		gives: '<a></a>'!

testAnchorUrl	| url string |	url := WAUrl new.	url		host: 'www.seaside.st';		addToPath: 'foo bar&zork<blah';		addField: '1' value: nil;		addField: '2' value: 123;		addField: '3' value: 'foo bar&zork'.	string := 'http://www.seaside.st/foo%20bar%26zork%3Cblah?1&amp;2=123&amp;3=foo%20bar%26zork'.	self		assert: [ :html | html anchor url: url; with: url ]		gives: '<a href="' , string , '">' , string , '</a>'!

testBasicNesting	self assert: [ :html | html div ] gives: '<div></div>'.	self assert: [ :html | html div: 1 ] gives: '<div>1</div>'.	self assert: [ :html | html div: 'foo' ] gives: '<div>foo</div>'!

testBlock	self		assert: [ :html | html strong: [ html text: 'nes'; text: 'sie' ] ]		gives: '<strong>nessie</strong>'.	self		assert: [ :html | html strong: [ :html2 | html2 text: 'nes'; text: 'sie' ] ]		gives: '<strong>nessie</strong>'!

testBreakTag	self		assert: [ :html | html break ]		gives: '<br/>'!

testButton	self		assert: [ :html | html button ]		gives: '<button type="submit"></button>'.	self		assert: [ :html | html button text: 'foo' ]		gives: '<button type="submit">foo</button>'.	self		assert: [ :html | html button with: 'foo' ]		gives: '<button type="submit">foo</button>'.	self		assert: [ :html | html button beSubmit ]		gives: '<button type="submit"></button>'.	self		assert: [ :html | html button bePush ]		gives: '<button type="button"></button>'.	self		assert: [ :html | html button beReset ]		gives: '<button type="reset"></button>'!

testCancelButton	self		assert: [ :html | html cancelButton ]		gives: '<input type="submit"/>'.	self		assert: [ :html | html cancelButton callback: [ ] ]		gives: '<input name="1" type="submit"/>'.	self		assert: [ :html | html cancelButton on: #value of: self ]		gives: '<input value="Value" name="1" type="submit"/>'.	self		assert: [ :html | html cancelButton: 'foo' ]		gives: '<input value="foo" type="submit"/>'.	self		assert: [ :html | html cancelButton text: 'bar' ]		gives: '<input value="bar" type="submit"/>'.	self		assert: [ :html | html cancelButton with: 'zork' ]		gives: '<input value="zork" type="submit"/>'!

testCanvasHtml	self assert: [ :html | html html: '<' ] gives: '<'.	self assert: [ :html | html html: '>' ] gives: '>'.	self assert: [ :html | html html: '"' ] gives: '"'.	self assert: [ :html | html html: '&' ] gives: '&'.	self		assert: [ :html | html html: '<div title="&amp;">' ]		gives: '<div title="&amp;">'!

testCanvasNil	self assert: [ :html | html text: nil ] gives: ''.	self assert: [ :html | html render: nil ] gives: ''!

testCanvasText	self assert: [ :html | html text: '<' ] gives: '&lt;'.	self assert: [ :html | html text: '>' ] gives: '&gt;'.	self assert: [ :html | html text: '"' ] gives: '&quot;'.	self assert: [ :html | html text: '&' ] gives: '&amp;'.	self		assert: [ :html | html text: '<div title="&amp;">' ]		gives: '&lt;div title=&quot;&amp;amp;&quot;&gt;'!

testCanvasWithLineBreaks	self		assert: [ :html | html withLineBreaks: 'abc' ] gives: 'a<br/>b<br/>c'!

testCanvasWithLineBreaksAndUrls	self		assert: [ :html | html withLineBreaksAndUrls: '1. This is http://www.seaside.st online.2. This is http://www.squeak.org online.' ]		gives: '1. This is <a href="http://www.seaside.st">http://www.seaside.st</a> online.<br/>2. This is <a href="http://www.squeak.org">http://www.squeak.org</a> online.'!

testCanvasWithLineBreaksGemStoneIssue289	"http://code.google.com/p/glassdb/issues/detail?id=289"	| testBlock |	testBlock := [ :breakString |		| stream |		stream := WriteStream on: String new.		stream 			nextPut: $a;			nextPutAll: breakString;			nextPut: $b;			nextPutAll: breakString;			nextPut: $c.		self			assert: [ :html | html withLineBreaks: stream contents ] gives: 'a<br/>b<br/>c' ].	testBlock value: (String with: Character cr).	testBlock value: (String with: Character cr with: Character lf).	testBlock value: (String with: Character lf)!

testCanvasWithUrls	self		assert: [ :html | html withUrls: 'This is http://www.seaside.st online.' ]		gives: 'This is <a href="http://www.seaside.st">http://www.seaside.st</a> online.'!

testCheckboxTag	self		assert: [ :html | html checkbox ]		gives: '<input type="checkbox"/>'.	self		assert: [ :html | html checkbox value: true ]		gives: '<input checked type="checkbox"/>'.	self		assert: [ :html | html checkbox value: false; callback: [ :value | ] ]		gives: '<input name="1" type="checkbox"/><input name="2" type="hidden"/>'.	self		assert: [ :html | html checkbox value: true; callback: [ :value | ] ]		gives: '<input checked name="1" type="checkbox"/><input name="2" type="hidden"/>'!

testClosingTimes	self assert: [ :html | html div; div ] gives: '<div></div><div></div>'.	self assert: [ :html | html break; div ] gives: '<br/><div></div>'.	self assert: [ :html | html div; break ] gives: '<div></div><br/>'.	self assert: [ :html | html break; break ] gives: '<br/><br/>'.	self assert: [ :html | html div: [ html div ]; div ] gives: '<div><div></div></div><div></div>'.	self assert: [ :html | html div: [ html break ]; div ] gives: '<div><br/></div><div></div>'.	self assert: [ :html | html div: [ html div ]; break ] gives: '<div><div></div></div><br/>'.	self assert: [ :html | html div: [ html break ]; break ] gives: '<div><br/></div><br/>'!

testCoreAttributesClass	self		assert: [ :html | html div class: 'foo' ]		gives: '<div class="foo"></div>'.	self		assert: [ :html | html div class: 'foo'; class: 'bar' ]		gives: '<div class="foo bar"></div>'!

testCoreAttributesId	self		assert: [ :html | html div id: 'foo' ]		gives: '<div id="foo"></div>'.	self		assert: [ :html | html div id: 'foo'; id: 'bar' ]		gives: '<div id="bar"></div>'.	self		assert: [ :html | self assert: (html div id: 'foo'; id) = 'foo' ]		gives: '<div id="foo"></div>'.	self		assert: [ :html | self assert: (html div id) isNil ]		gives: '<div></div>'!

testCoreAttributesStyle	self		assert: [ :html | html div style: 'left: 0' ]		gives: '<div style="left: 0"></div>'.	self		assert: [ :html | html div style: 'left: 0'; style: 'top: 2' ]		gives: '<div style="left: 0;top: 2"></div>'!

testCoreAttributesTitle	self		assert: [ :html | html div title: 'Seaside' ]		gives: '<div title="Seaside"></div>'!

testEditTag	self		assert: [ :html | html inserted: 'foo' ]		gives: '<ins>foo</ins>'.	self		assert: [ :html | html deleted: 'bar' ]		gives: '<del>bar</del>'!

testEnsureId	self		assert: [ :html | self assert: (html div ensureId = 'id1') ]		gives: '<div id="id1"></div>'.	self		assert: [ :html | self assert: (html div id: 'foo'; ensureId) = 'foo' ]		gives: '<div id="foo"></div>'!

testEventAttributes	self		assert: [ :html | html div onBlur: 1; onBlur: 2 ]		gives: '<div onblur="1;2"></div>'.	self		assert: [ :html | html div onChange: 1; onChange: 2 ]		gives: '<div onchange="1;2"></div>'.	self		assert: [ :html | html div onClick: 1; onClick: 2 ]		gives: '<div onclick="1;2"></div>'.	self		assert: [ :html | html div onDoubleClick: 1; onDoubleClick: 2 ]		gives: '<div ondblclick="1;2"></div>'!

testExtendedNesting	self assert: [ :html | html div: nil ] gives: '<div></div>'.	self assert: [ :html | html div: #( 1 $a ) ] gives: '<div>1a</div>'.	self assert: [ :html | html div: [ html span ] ] gives: '<div><span></span></div>'!

testFieldSetTag	self		assert: [ :html | html fieldSet: 'foo' ]		gives: '<fieldset>foo</fieldset>'.	self		assert: [ :html | html fieldSet legend: 'bar'; with: 'zork' ]		gives: '<fieldset><legend>bar</legend>zork</fieldset>'!

testHeadingTag	self		assert: [ :html | html heading ]		gives: '<h1></h1>'.	self		assert: [ :html | html heading level: 2; with: 'foo' ]		gives: '<h2>foo</h2>'.	self		assert: [ :html | html heading level: 0; with: 'foo' ]		gives: '<h1>foo</h1>'.	self		assert: [ :html | html heading level: 7; with: 'foo' ]		gives: '<h6>foo</h6>'!

testHorizontalRuleTag	self		assert: [ :html | html horizontalRule ]		gives: '<hr/>'!

testImageButton	self		assert: [ :html | html imageButton ]		gives: '<input type="image"/>'!

testImageTag	self		assert: [ :html | html image url: 'http://www.seaside.st/logo.jpeg' ]		gives: '<img alt="" src="http://www.seaside.st/logo.jpeg"/>'.			self		assert: [ :html |			html image				title: 'Seaside';				altText: 'the Seaside logo';				url: 'http://www.seaside.st/logo.jpeg' ]		gives: '<img alt="the Seaside logo" title="Seaside" src="http://www.seaside.st/logo.jpeg"/>'!

testKeyboardAttributes	self		assert: [ :html | html anchor accessKey: $a ]		gives: '<a accesskey="a"></a>'.	self		assert: [ :html | html anchor tabIndex: 3 ]		gives: '<a tabindex="3"></a>'!

testLabelTag	self		assert: [ :html | html label: 'foo' ]		gives: '<label>foo</label>'.	self		assert: [ :html | html label for: 'bar'; with: 'zork' ]		gives: '<label for="bar">zork</label>'!

testLastId	self		assert: [ :html | self assert: html lastId isNil ]		gives: ''.	self		assert: [ :html | html nextId. html text: html lastId; text: html lastId ]		gives: 'id1id1'.	self		assert: [ :html | html anchor ensureId; callback: [ ]. self assert: html lastId = 'id1' ]		gives: '<a id="id1" href="/?2"></a>'!

testMapTag	self		assert: [ :html | html map callback: [ :point | ]; with: [ html image url: 'seaside.jpg' ] ]		gives: '<a href="/?1="><img alt="" ismap src="seaside.jpg"/></a>'!

testMultiSelectTag	self		assert: [ :html | html multiSelect ]		gives: '<select multiple></select>'.	self		assert: [ :html | html multiSelect list: #(1 2) ]		gives: '<select multiple><option>1</option><option>2</option></select>'.	self		assert: [ :html | html multiSelect list: #(1 2); labels: [ :v | 2 * v ] ]		gives: '<select multiple><option>2</option><option>4</option></select>'.	self		assert: [ :html | html multiSelect list: #(1 2); enabled: [ :v | v even ] ]		gives: '<select multiple><option disabled>1</option><option>2</option></select>'.	self		assert: [ :html | html multiSelect list: #(3 4); callback: [ :v | ] ]		gives: '<select name="1" multiple><option value="1">3</option><option value="2">4</option></select><input name="2" type="hidden"/>'!

testNextId	self		assert: [ :html | html div id: html nextId ]		gives: '<div id="id1"></div>'.	self		assert: [ :html | html div id: 'foo'; id: html nextId ]		gives: '<div id="id1"></div>'!

testOrderedListTag	self		assert: [ :html | html orderedList ]		gives: '<ol></ol>'.	self		assert: [ :html | html orderedList add: 1 ]		gives: '<ol><li>1</li></ol>'.	self		assert: [ :html | html orderedList addAll: #( 1 2 ) ]		gives: '<ol><li>1</li><li>2</li></ol>'.	self		assert: [ :html | html orderedList list: #( 1 2 ) ]		gives: '<ol><li>1</li><li>2</li></ol>'.	self		assert: [ :html | html orderedList list: #( 1 2 ); with: [ html listItem: 3 ] ]		gives: '<ol><li>1</li><li>2</li><li>3</li></ol>'.	self		assert: [ :html | html orderedList add: 2; labels: [ :e | 2 * e ] ]		gives: '<ol><li>4</li></ol>'.	self		assert: [ :html | html orderedList add: 2; labels: [ :e | 2 * e ]; with: [ html listItem: 5 ] ]		gives: '<ol><li>4</li><li>5</li></ol>'!

testParagraphTag	self		assert: [ :html | html paragraph ]		gives: '<p></p>'.	self		assert: [ :html | html paragraph: 'foo' ]		gives: '<p>foo</p>'!

testPasswordInput	self		assert: [ :html | html passwordInput ]		gives: '<input type="password"/>'.	self		assert: [ :html | html passwordInput callback: [ :value | ] ]		gives: '<input name="1" type="password"/>'.	self		assert: [ :html | html passwordInput: 'foo' ]		gives: '<input value="foo" type="password"/>'.	self		assert: [ :html | html passwordInput value: 'bar' ]		gives: '<input value="bar" type="password"/>'.	self		assert: [ :html | html passwordInput text: 'zork' ]		gives: '<input value="zork" type="password"/>'.	self		assert: [ :html | html passwordInput callback: [ :value | ]; value: 'foo bar&zork' ]		gives: '<input name="1" value="foo bar&amp;zork" type="password"/>'!

testScriptTag	self		assert: [ :html | html script: 'alert("<foo>")' ]		gives: '<script type="text/javascript">alert("<foo>")</script>'.	self		assert: [ :html | html script: 'true & false' ]		gives: '<script type="text/javascript">true & false</script>'.	self		assert: [ :html | html script defer; with: 'alert("<foo>")' ]		gives: '<script defer type="text/javascript">alert("<foo>")</script>'!

testSelectTag	self		assert: [ :html | html select ]		gives: '<select></select>'.	self		assert: [ :html | html select list: #(1 2) ]		gives: '<select><option>1</option><option>2</option></select>'.	self		assert: [ :html | html select list: #(1 2); labels: [ :v | 2 * v ] ]		gives: '<select><option>2</option><option>4</option></select>'.	self		assert: [ :html | html select list: #(1 2); enabled: [ :v | v even ] ]		gives: '<select><option disabled>1</option><option>2</option></select>'.	self		assert: [ :html | html select list: #(1 2); callback: [ :v | ] ]		gives: '<select name="1"><option value="1">1</option><option value="2">2</option></select>'!

testSubmitButton	self		assert: [ :html | html submitButton ]		gives: '<input type="submit"/>'.	self		assert: [ :html | html submitButton callback: [ ] ]		gives: '<input name="1" type="submit"/>'.	self		assert: [ :html | 			self 				should: [ html submitButton callback: [ :value | ] ]				raise: Error ]		gives: '<input type="submit"/>'.	self		assert: [ :html | html submitButton on: #value of: self ]		gives: '<input value="Value" name="1" type="submit"/>'.	self		assert: [ :html | html submitButton: 'foo' ]		gives: '<input value="foo" type="submit"/>'.	self		assert: [ :html | html submitButton text: 'bar' ]		gives: '<input value="bar" type="submit"/>'.	self		assert: [ :html | html submitButton with: 'zork' ]		gives: '<input value="zork" type="submit"/>'!

testSymbolRendering	self		assert: [ :html | html div id: #aSymbol; with: #aSecondSymbol ]		gives: '<div id="aSymbol">aSecondSymbol</div>'.	self		assert: [ :html | html div: [ html text: #aSecondSymbol ] ]		gives: '<div>aSecondSymbol</div>'.	self		assert: [ :html | html div: [ html render: #aSecondSymbol ] ]		gives: '<div>aSecondSymbol</div>'!

testTable	self		assert: [ :html | html table ]		gives: '<table></table>'.	self		assert: [ :html | html table cellpadding: 0; cellspacing: 1 ]		gives: '<table cellpadding="0" cellspacing="1"></table>'.	self		assert: [ :html | html table frame: 'box'; rules: 'groups' ]		gives: '<table frame="box" rules="groups"></table>'.	self		assert: [ :html | html table summary: 'a short summary' ]		gives: '<table summary="a short summary"></table>'!

testTableColumn	self		assert: [ :html | html tableColumn ]		gives: '<col/>'.	self		assert: [ :html | html tableColumn character: '.'; characterOffset: 2 ]		gives: '<col char="." charoff="2"/>'.	self		assert: [ :html | html tableColumn align: 'right'; verticalAlign: 'top' ]		gives: '<col align="right" valign="top"/>'.	self		assert: [ :html | html tableColumn span: 3; width: '20' ]		gives: '<col span="3" width="20"/>'!

testTableColumnGroup	self		assert: [ :html | html tableColumnGroup ]		gives: '<colgroup></colgroup>'.	self		assert: [ :html | html tableColumnGroup character: '.'; characterOffset: 2 ]		gives: '<colgroup char="." charoff="2"></colgroup>'.	self		assert: [ :html | html tableColumnGroup align: 'right'; verticalAlign: 'top' ]		gives: '<colgroup align="right" valign="top"></colgroup>'.	self		assert: [ :html | html tableColumnGroup span: 3; width: '20' ]		gives: '<colgroup span="3" width="20"></colgroup>'!

testTableData	self		assert: [ :html | html tableData ]		gives: '<td></td>'.	self		assert: [ :html | html tableData character: '.'; characterOffset: 2 ]		gives: '<td char="." charoff="2"></td>'.	self		assert: [ :html | html tableData align: 'right'; verticalAlign: 'top' ]		gives: '<td align="right" valign="top"></td>'.	self		assert: [ :html | html tableData abbreviation: 'short'; with: 'longer' ]		gives: '<td abbr="short">longer</td>'.	self		assert: [ :html | html tableData axis: 'time' ]		gives: '<td axis="time"></td>'.	self		assert: [ :html | html tableData colSpan: 2; rowSpan: 3 ]		gives: '<td colspan="2" rowspan="3"></td>'.	self		assert: [ :html | html tableData headers: 'zork' ]		gives: '<td headers="zork"></td>'.	self		assert: [ :html | html tableData scope: 'colgroup' ]		gives: '<td scope="colgroup"></td>'!

testTableFull	self		assert: [ :html | 			html table: [				html tableCaption: 'title'.				html tableColumnGroup: [					html tableColumn.					html tableColumn ].				html tableHead: [					html tableRow: [ 						html tableHeading: 'a1'.						html tableHeading: 'a2' ] ].				html tableFoot: [					html tableRow: [ 						html tableData: 'b1'.						html tableData: 'b2' ] ].				html tableBody: [					html tableRow: [ 						html tableData: 'c1'.						html tableData: 'c2' ].					html tableRow: [ 						html tableData: 'd1'.						html tableData: 'd2' ] ] ] ]		gives: '<table><caption>title</caption><colgroup><col/><col/></colgroup><thead><tr><th>a1</th><th>a2</th></tr></thead><tfoot><tr><td>b1</td><td>b2</td></tr></tfoot><tbody><tr><td>c1</td><td>c2</td></tr><tr><td>d1</td><td>d2</td></tr></tbody></table>'!

testTableHeading	self		assert: [ :html | html tableHeading ]		gives: '<th></th>'.	self		assert: [ :html | html tableHeading character: '.'; characterOffset: 2 ]		gives: '<th char="." charoff="2"></th>'.	self		assert: [ :html | html tableHeading align: 'right'; verticalAlign: 'top' ]		gives: '<th align="right" valign="top"></th>'.	self		assert: [ :html | html tableHeading abbreviation: 'short'; with: 'longer' ]		gives: '<th abbr="short">longer</th>'.	self		assert: [ :html | html tableHeading axis: 'time' ]		gives: '<th axis="time"></th>'.	self		assert: [ :html | html tableHeading colSpan: 2; rowSpan: 3 ]		gives: '<th colspan="2" rowspan="3"></th>'.	self		assert: [ :html | html tableHeading headers: 'zork' ]		gives: '<th headers="zork"></th>'.	self		assert: [ :html | html tableHeading scope: 'colgroup' ]		gives: '<th scope="colgroup"></th>'!

testTextArea	self		assert: [ :html | html textArea ]		gives: '<textarea rows="auto" cols="auto"></textarea>'.	self		assert: [ :html | html textArea columns: 4 ]		gives: '<textarea rows="auto" cols="4"></textarea>'.	self		assert: [ :html | html textArea rows: 40 ]		gives: '<textarea rows="40" cols="auto"></textarea>'.	self		assert: [ :html | html textArea callback: [ :value | ] ]		gives: '<textarea rows="auto" cols="auto" name="1"></textarea>'.	self		assert: [ :html | html textArea: 'foo bar&zork' ]		gives: '<textarea rows="auto" cols="auto">foo bar&amp;zork</textarea>'.	self		assert: [ :html | html textArea text: 'foo bar&zork' ]		gives: '<textarea rows="auto" cols="auto">foo bar&amp;zork</textarea>'.	self		assert: [ :html | html textArea value: 'foo bar&zork' ]		gives: '<textarea rows="auto" cols="auto">foo bar&amp;zork</textarea>'.	self		assert: [ :html | html textArea with: 'foo bar&zork' ]		gives: '<textarea rows="auto" cols="auto">foo bar&amp;zork</textarea>'.	self		assert: [ :html | html textArea callback: [ :value | ]; with: 'foo bar&zork' ]		gives: '<textarea rows="auto" cols="auto" name="1">foo bar&amp;zork</textarea>'!

testTextInput	self		assert: [ :html | html textInput ]		gives: '<input type="text"/>'.	self		assert: [ :html | html textInput callback: [ :value | ] ]		gives: '<input name="1" type="text"/>'.	self		assert: [ :html | html textInput: 'foo' ]		gives: '<input value="foo" type="text"/>'.	self		assert: [ :html | html textInput value: 'bar' ]		gives: '<input value="bar" type="text"/>'.	self		assert: [ :html | html textInput text: 'zork' ]		gives: '<input value="zork" type="text"/>'.	self		assert: [ :html | html textInput callback: [ :value | ]; value: 'foo bar&zork' ]		gives: '<input name="1" value="foo bar&amp;zork" type="text"/>'!

testUnorderedListTag	self		assert: [ :html | html unorderedList ]		gives: '<ul></ul>'.	self		assert: [ :html | html unorderedList add: 1 ]		gives: '<ul><li>1</li></ul>'.	self		assert: [ :html | html unorderedList addAll: #( 1 2 ) ]		gives: '<ul><li>1</li><li>2</li></ul>'.	self		assert: [ :html | html unorderedList list: #( 1 2 ) ]		gives: '<ul><li>1</li><li>2</li></ul>'.	self		assert: [ :html | html unorderedList list: #( 1 2 ); with: [ html listItem: 3 ] ]		gives: '<ul><li>1</li><li>2</li><li>3</li></ul>'.	self		assert: [ :html | html unorderedList add: 2; labels: [ :e | 2 * e ] ]		gives: '<ul><li>4</li></ul>'.	self		assert: [ :html | html unorderedList add: 2; labels: [ :e | 2 * e ]; with: [ html listItem: 5 ] ]		gives: '<ul><li>4</li><li>5</li></ul>'! !
!WACanvasBrushTest categoriesFor: #createHandlers!configuration!public! !
!WACanvasBrushTest categoriesFor: #testAnchor!public!tests/tags/anchors! !
!WACanvasBrushTest categoriesFor: #testAnchorAttributes!public!tests/tags/anchors! !
!WACanvasBrushTest categoriesFor: #testAnchorCallback!public!tests/tags/anchors! !
!WACanvasBrushTest categoriesFor: #testAnchorUrl!public!tests/tags/anchors! !
!WACanvasBrushTest categoriesFor: #testBasicNesting!public!tests! !
!WACanvasBrushTest categoriesFor: #testBlock!public!tests/tags! !
!WACanvasBrushTest categoriesFor: #testBreakTag!public!tests/tags! !
!WACanvasBrushTest categoriesFor: #testButton!public!tests/tags/forms! !
!WACanvasBrushTest categoriesFor: #testCancelButton!public!tests/tags/forms! !
!WACanvasBrushTest categoriesFor: #testCanvasHtml!public!tests/encoding! !
!WACanvasBrushTest categoriesFor: #testCanvasNil!public!tests/encoding! !
!WACanvasBrushTest categoriesFor: #testCanvasText!public!tests/encoding! !
!WACanvasBrushTest categoriesFor: #testCanvasWithLineBreaks!public!tests/encoding! !
!WACanvasBrushTest categoriesFor: #testCanvasWithLineBreaksAndUrls!public!tests/encoding! !
!WACanvasBrushTest categoriesFor: #testCanvasWithLineBreaksGemStoneIssue289!public!tests/encoding! !
!WACanvasBrushTest categoriesFor: #testCanvasWithUrls!public!tests/encoding! !
!WACanvasBrushTest categoriesFor: #testCheckboxTag!public!tests/tags/forms! !
!WACanvasBrushTest categoriesFor: #testClosingTimes!public!tests! !
!WACanvasBrushTest categoriesFor: #testCoreAttributesClass!public!tests/attributes! !
!WACanvasBrushTest categoriesFor: #testCoreAttributesId!public!tests/attributes! !
!WACanvasBrushTest categoriesFor: #testCoreAttributesStyle!public!tests/attributes! !
!WACanvasBrushTest categoriesFor: #testCoreAttributesTitle!public!tests/attributes! !
!WACanvasBrushTest categoriesFor: #testEditTag!public!tests/tags! !
!WACanvasBrushTest categoriesFor: #testEnsureId!public!tests! !
!WACanvasBrushTest categoriesFor: #testEventAttributes!public!tests/attributes! !
!WACanvasBrushTest categoriesFor: #testExtendedNesting!public!tests! !
!WACanvasBrushTest categoriesFor: #testFieldSetTag!public!tests/tags! !
!WACanvasBrushTest categoriesFor: #testHeadingTag!public!tests/tags! !
!WACanvasBrushTest categoriesFor: #testHorizontalRuleTag!public!tests/tags! !
!WACanvasBrushTest categoriesFor: #testImageButton!public!tests/tags/forms! !
!WACanvasBrushTest categoriesFor: #testImageTag!public!tests/tags! !
!WACanvasBrushTest categoriesFor: #testKeyboardAttributes!public!tests/attributes! !
!WACanvasBrushTest categoriesFor: #testLabelTag!public!tests/tags! !
!WACanvasBrushTest categoriesFor: #testLastId!public!tests! !
!WACanvasBrushTest categoriesFor: #testMapTag!public!tests/tags/anchors! !
!WACanvasBrushTest categoriesFor: #testMultiSelectTag!public!tests/tags/forms! !
!WACanvasBrushTest categoriesFor: #testNextId!public!tests! !
!WACanvasBrushTest categoriesFor: #testOrderedListTag!public!tests/tags! !
!WACanvasBrushTest categoriesFor: #testParagraphTag!public!tests/tags! !
!WACanvasBrushTest categoriesFor: #testPasswordInput!public!tests/tags/forms! !
!WACanvasBrushTest categoriesFor: #testScriptTag!public!tests/tags! !
!WACanvasBrushTest categoriesFor: #testSelectTag!public!tests/tags/forms! !
!WACanvasBrushTest categoriesFor: #testSubmitButton!public!tests/tags/forms! !
!WACanvasBrushTest categoriesFor: #testSymbolRendering!public!tests/encoding! !
!WACanvasBrushTest categoriesFor: #testTable!public!tests/tags/tables! !
!WACanvasBrushTest categoriesFor: #testTableColumn!public!tests/tags/tables! !
!WACanvasBrushTest categoriesFor: #testTableColumnGroup!public!tests/tags/tables! !
!WACanvasBrushTest categoriesFor: #testTableData!public!tests/tags/tables! !
!WACanvasBrushTest categoriesFor: #testTableFull!public!tests/tags/tables! !
!WACanvasBrushTest categoriesFor: #testTableHeading!public!tests/tags/tables! !
!WACanvasBrushTest categoriesFor: #testTextArea!public!tests/tags/forms! !
!WACanvasBrushTest categoriesFor: #testTextInput!public!tests/tags/forms! !
!WACanvasBrushTest categoriesFor: #testUnorderedListTag!public!tests/tags! !

