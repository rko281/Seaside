"Filed out from Dolphin Smalltalk"!

JQueryTest subclass: #JQAjaxTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAjaxTest guid: (GUID fromString: '{1afc607b-e4b5-4322-b3ef-58a35275681e}')!

JQAjaxTest comment: ''!

!JQAjaxTest categoriesForClass!JQuery-Tests-Core-Unit! !

!JQAjaxTest methodsFor!

ajax	^ self jQuery ajax!

ajaxSetup	^ self jQuery ajaxSetup!

testAddParameter	self 		assert: (self ajax addParameter: 'foo')		equals: self function, '.ajax({"data":"foo"})'!

testAddParameterValue	self		assert: (self ajax addParameter: 'foo' -> 12)		equals: self function, '.ajax({"data":"foo="+encodeURIComponent(12)})'.	self		assert: (self ajax addParameter: 'foo' -> true)		equals: self function, '.ajax({"data":"foo="+encodeURIComponent(true)})'.	self		assert: (self ajax addParameter: 'foo' -> self mock)		equals: self function, '.ajax({"data":"foo="+encodeURIComponent(mock)})'!

testAjax	self 		assert: self ajax		equals: self function, '.ajax()'!

testAjaxSetup	self 		assert: self ajaxSetup		equals: self function, '.ajaxSetup()'!

testAsync	self		assert: (self ajax async: true)		equals: self function, '.ajax({"async":true})'!

testCache	self		assert: (self ajax cache: false)		equals: self function, '.ajax({"cache":false})'!

testCallback	self 		assert: (self ajax callback: [ ])		equals: self function, '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1"].join("&")})'!

testCallbackForEvent	self 		assert: (self ajax callback: [ ] forEvent: #(			(passenger tab)			(number index)			(position position)			(size originalSize)			(string contributor)))		equals: self function, '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1"',			',"2="+encodeURIComponent(',			'$(arguments[1].tab).attr("id")',				'+","+',			'arguments[1].index',				'+","+',			'arguments[1].position.top+","+arguments[1].position.left',				'+","+',			'arguments[1].originalSize.width+","+arguments[1].originalSize.height',				'+","+',			'arguments[1].contributor',				')].join("&")})'!

testCallbackValue	self 		assert: (self ajax callback: [ ] value: (self jQuery this hasClass: 'foo'))		equals: self function , '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1","2="+encodeURIComponent(' , self function, '(this).hasClass("foo"))].join("&")})'!

testContentType	self		assert: (self ajax contentType: 'text/html')		equals: self function, '.ajax({"contentType":"text/html"})'!

testContext	self		assert: (self ajax context: self jQuery this)		equals: self function, '.ajax({"context":', self function , '(this)})'!

testData	self		assert: (self ajax data: 'foo')		equals: self function, '.ajax({"data":"foo"})'!

testDataFilter	self		assert: (self ajax dataFilter: (self javascript alert: 'Hello'))		equals: self function, '.ajax({"dataFilter":function(){return alert("Hello")}})'!

testDataType	self		assert: (self ajax dataType: 'xml')		equals: self function, '.ajax({"dataType":"xml"})'!

testFullUrl	self 		assert: (self ajax fullUrl)		equals: '"/"'.	self		assert: (self ajax callback: [ ]; fullUrl)		equals: '"http://www.seaside.st/?_s=1&_k=a&1"'.	self		assert: (self ajax callback: [ ] value: $a; fullUrl)		equals: '"http://www.seaside.st/?_s=1&_k=a&1&2=a"'.	self		assert: (self ajax callback: [ ] value: self mock; fullUrl)		equals: '"http://www.seaside.st/?_s=1&_k=a&1"'!

testGet	self		assert: (self jQuery get)		equals: self function, '.get("/")'!

testGetJson	self		assert: (self jQuery getJson)		equals: self function, '.getJSON("/")'!

testGetScript	self		assert: (self jQuery getScript)		equals: self function, '.getScript("/")'!

testGlobal	self		assert: (self ajax global: false)		equals: self function, '.ajax({"global":false})'!

testHtml	self 		assert: (self ajax html: [ :html | html div ])		equals: self function, '.ajax({"dataType":"html","url":"http://www.seaside.st/","data":["_s=1","_k=a","1"].join("&")})'!

testIfModified	self		assert: (self ajax ifModified: false)		equals: self function, '.ajax({"ifModified":false})'!

testJavascriptUrl	self 		assert: (self ajax javascriptUrl)		equals: '"/"'.	self		assert: (self ajax callback: [ ]; javascriptUrl)		equals: '"http://www.seaside.st/"+"?"+["_s=1","_k=a","1"].join("&")'.	self		assert: (self ajax callback: [ ] value: $a; javascriptUrl)		equals: '"http://www.seaside.st/"+"?"+["_s=1","_k=a","1","2=a"].join("&")'.	self		assert: (self ajax callback: [ ] value: self mock; javascriptUrl)		equals: '"http://www.seaside.st/"+"?"+["_s=1","_k=a","1","2="+encodeURIComponent(mock)].join("&")'!

testJsonp	self		assert: (self ajax jsonp: 'onJsonPLoad')		equals: self function, '.ajax({"jsonp":"onJsonPLoad"})'!

testJsonpCallback	self		assert: (self ajax jsonpCallback: 1)		equals: self function, '.ajax({"jsonpCallback":function(){1}})'!

testLoad	self		assert: ((self jQuery: 'li') load)		equals: self function , '("li").load("/")'.	self		assert: ((self jQuery: 'li') load 			selector: '#jq-p-Getting-Started li')		equals: self function , '("li").load("/ #jq-p-Getting-Started li")'.	self		assert: ((self jQuery: 'li') load 			url: '/Main_Page';			selector: '#jq-p-Getting-Started li')		equals: self function , '("li").load("/Main_Page #jq-p-Getting-Started li")'!

testMultiple	self 		assert: (self ajax			callback: [ :value | ] value: $a; 			callback: [ :value | ] value: $b;			callback: [ ])		equals: self function, '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1","2=a","3=b"].join("&")})'!

testOnBeforeSend	self		assert: (self jQuery ajax onBeforeSend: (self javascript alert: 'before'))		equals: self function, '.ajax({"beforeSend":function(){alert("before")}})'!

testOnComplete	self		assert: (self jQuery ajax onComplete: (self javascript alert: 'loaded'))		equals: self function, '.ajax({"complete":function(){alert("loaded")}})'.	self		assert: ((self jQuery: 'li') load onComplete: (self javascript alert: 'loaded'))		equals: self function, '("li").load("/",function(){alert("loaded")})'!

testOnError	self		assert: (self jQuery ajax onError: (self javascript alert: 'error'))		equals: self function, '.ajax({"error":function(){alert("error")}})'!

testOnSuccess	self		assert: (self jQuery ajax onSuccess: (self javascript alert: 'success'))		equals: self function, '.ajax({"success":function(){alert("success")}})'!

testOnXhr	self		assert: (self jQuery ajax onXhr: (self javascript alert: 'create'))		equals: self function, '.ajax({"xhr":function(){alert("create")}})'!

testPassword	self		assert: (self ajax password: 'topsecret')		equals: self function, '.ajax({"password":"topsecret"})'!

testPost	self		assert: (self jQuery post)		equals: self function, '.post("/")'.	self		assert: (self jQuery post addParameter: 'foo')		equals: self function, '.post("/","foo")'.	self		assert: (self jQuery post addParameter: 'foo' -> true)		equals: self function, '.post("/","foo="+encodeURIComponent(true))'!

testProcessData	self		assert: (self ajax processData: false)		equals: self function, '.ajax({"processData":false})'!

testScript	self 		assert: (self ajax script: [ :script | script alert: 'Hello' ])		equals: self function, '.ajax({"dataType":"script","url":"http://www.seaside.st/","data":["_s=1","_k=a","1"].join("&")})'!

testScriptCharset	self		assert: (self ajax scriptCharset: 'utf-8')		equals: self function, '.ajax({"scriptCharset":"utf-8"})'!

testSerialize	self		assert: (self ajax serialize: (self jQuery: 'form'))		equals: self function, '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1",' , self function , '("form").serialize()].join("&")})'!

testSerializeArray	self		assert: self jQuery this serializeArray		equals: self function, '(this).serializeArray()'!

testSerializeChildren	self		assert: self ajax serializeChildren		equals: self function, '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1",' , self function , '(this).find(":input").serialize()].join("&")})'.	self		assert: (self ajax serializeChildren: (self jQuery: 'form'))		equals: self function, '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1",' , self function , '("form").find(":input").serialize()].join("&")})'!

testSerializeFileUpload	self		assert: (self ajax serializeFileUpload: (self jQuery: '#something'))		equals: self function , '.ajax({"data":function(){var formdata = new FormData();var name=$("#something").attr("name");var files=$("#something")[0].files;for(i=0;i<files.length;i++) formdata.append(name,files[i]);return formdata}(),"url":"http://www.seaside.st/?_s=1&_k=a","type":"POST","cache":false,"processData":false,"contentType":false})'!

testSerializeForm	self		assert: self ajax serializeForm		equals: self function, '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1",' , self function , '(this).closest("form").find(":input").serialize()].join("&")})'.	self		assert: (self ajax serializeForm: (self jQuery: '#something'))		equals: self function, '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1",' , self function , '("#something").closest("form").find(":input").serialize()].join("&")})'!

testSerializeThis	self		assert: self ajax serializeThis		equals: self function, '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1",' , self function , '(this).serialize()].join("&")})'!

testSerializeThisWithHidden	self		assert: self ajax serializeThisWithHidden		equals: self function, '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1",' , self function , '(this).next("input:hidden").addBack().serialize()].join("&")})'!

testSerializeWithHidden	self		assert: (self ajax serializeWithHidden: (self jQuery: '#foobar'))		equals: self function, '.ajax({"url":"http://www.seaside.st/","data":["_s=1","_k=a","1",' , self function , '("#foobar").next("input:hidden").addBack().serialize()].join("&")})'!

testText	self 		assert: (self ajax text: [ :stream | stream nextPutAll: 'Supergirl' ])		equals: self function, '.ajax({"dataType":"text","url":"http://www.seaside.st/","data":["_s=1","_k=a","1"].join("&")})'!

testTimeout	self		assert: (self ajax timeout: 1200)		equals: self function, '.ajax({"timeout":1200})'!

testTraditional	self		assert: (self ajax traditional: true)		equals: self function, '.ajax({"traditional":true})'!

testType	self		assert: (self ajax type: 'post')		equals: self function, '.ajax({"type":"POST"})'!

testUrl	self 		assert: self ajax url		equals: '"/"'.	self		assert: (self ajax callback: [ ]; url)		equals: '"http://www.seaside.st/"'.	self		assert: (self ajax callback: [ ] value: $a; url)		equals: '"http://www.seaside.st/"'.	self		assert: (self ajax callback: [ ] value: self mock; url)		equals: '"http://www.seaside.st/"'!

testUsername	self		assert: (self ajax username: 'seaside')		equals: self function, '.ajax({"username":"seaside"})'! !

!JQAjaxTest categoriesForMethods!
ajax!accessing!public! !
ajaxSetup!accessing!public! !
testAddParameter!public!tests/parameters! !
testAddParameterValue!public!tests/parameters! !
testAjax!public!tests! !
testAjaxSetup!public!tests! !
testAsync!public!tests/options! !
testCache!public!tests/options! !
testCallback!public!tests/callbacks! !
testCallbackForEvent!public!tests/callbacks! !
testCallbackValue!public!tests/callbacks! !
testContentType!public!tests/options! !
testContext!public!tests/options! !
testData!public!tests/options! !
testDataFilter!public!tests/options! !
testDataType!public!tests/options! !
testFullUrl!public!tests/accessing! !
testGet!public!tests! !
testGetJson!public!tests! !
testGetScript!public!tests! !
testGlobal!public!tests/options! !
testHtml!public!tests/callbacks! !
testIfModified!public!tests/options! !
testJavascriptUrl!public!tests/accessing! !
testJsonp!public!tests/options! !
testJsonpCallback!public!tests/options! !
testLoad!public!tests! !
testMultiple!public!tests/callbacks! !
testOnBeforeSend!public!tests/events! !
testOnComplete!public!tests/events! !
testOnError!public!tests/events! !
testOnSuccess!public!tests/events! !
testOnXhr!public!tests/events! !
testPassword!public!tests/options! !
testPost!public!tests! !
testProcessData!public!tests/options! !
testScript!public!tests/callbacks! !
testScriptCharset!public!tests/options! !
testSerialize!public!tests/convenience! !
testSerializeArray!public!tests/convenience! !
testSerializeChildren!public!tests/convenience! !
testSerializeFileUpload!public!tests/convenience! !
testSerializeForm!public!tests/convenience! !
testSerializeThis!public!tests/convenience! !
testSerializeThisWithHidden!public!tests/convenience! !
testSerializeWithHidden!public!tests/convenience! !
testText!public!tests/callbacks! !
testTimeout!public!tests/options! !
testTraditional!public!tests/options! !
testType!public!tests/options! !
testUrl!public!tests/accessing! !
testUsername!public!tests/options! !
!

