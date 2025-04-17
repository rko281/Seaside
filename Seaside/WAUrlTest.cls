"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAUrlTest
	instanceVariableNames: 'url'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUrlTest guid: (GUID fromString: '{ec43b1c9-91ba-4484-a131-44e67f817c6a}')!

WAUrlTest comment: ''!

!WAUrlTest categoriesForClass!HTTP! !

!WAUrlTest methodsFor!

absoluteExamples	^ #( 'http://www.seaside.st/'		 'http://www.seaside.st:8080/'		 'http://lukas@www.seaside.st/'		 'http://lukas:renggli@www.seaside.st/'		 'http://www.seaside.st/resources'		 'http://www.seaside.st/styles/favicon.png'		 'http://www.seaside.st/%24%26%2B%2C%2F%3A%3B%3D%3F%40'		 'http://www.seaside.st/#top'		 'http://www.seaside.st/styles#top'		 'http://www.seaside.st/about/screenshots?_c'		 'http://www.seaside.st/about/screenshots?_s=XrkNBpErXTKlVRhn'		 'http://www.seaside.st/about/screenshots?_s=XrkNBpErXTKlVRhn&_k=lZWXfESZ'		 'http://www.seaside.st/about/screenshots?_s=XrkNBpErXTKlVRhn&_k=lZWXfESZ&_n&47'		 'http://www.seaside.st/about/screenshots?_s=XrkNBpErXTKlVRhn&_k=lZWXfESZ&_n&47#149361951'		 'http://www.seaside.st/;jsessionid=42?redirectcounter=1'		 'http://www.seaside.st/seaside/files;old/WAStandardFiles;key1=value1,value3;key2=value2/seaside.jpg;jsessionid=42?redirectcounter=1'		'http://www.seaside.st/seaside/WAStandardFiles;session%3Aid=42?redirectcounter=1'		 'http://lukas:renggli@www.seaside.st/about/screenshots?_s=XrkNBpErXTKlVRhn&_k=lZWXfESZ&_n&47#149361951'		 'http://lukas:renggli@www.seaside.st:8080/about/screenshots?_s=XrkNBpErXTKlVRhn&_k=lZWXfESZ&_n&47#149361951' )!

ambigousExamples	"These examples consist of many edge cases that are sometimes not quite legal. The test assures that they no error is thrown and that they parse to something meaningful anyway."		^ #( "scheme"		 ( 'www.seaside.st' '/www.seaside.st' )		 ( 'http://www.seaside.st:443/' 'http://www.seaside.st:443/' )		 ( 'https://www.seaside.st:80/' 'https://www.seaside.st:80/' )				 "port"		 ( 'http://www.seaside.st:/' 'http://www.seaside.st/' )				 "host"		 ( 'http://' '/' )		 ( 'http://@' '/' )				 "username, password"		 ( 'http://@www.seaside.st/' 'http://@www.seaside.st/' )		 ( 'http://:lukas@www.seaside.st/' 'http://:lukas@www.seaside.st/' )		 ( 'http://lukas:@www.seaside.st/' 'http://lukas:@www.seaside.st/' )				 "path"		 ( 'http://www.seaside.st' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st//' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/.' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/./' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/..' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/../' 'http://www.seaside.st/' )				 "query"		 ( 'http://www.seaside.st/?' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/??' 'http://www.seaside.st/?%3F' )		 ( 'http://www.seaside.st/?=2' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/?&' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/?1==' 'http://www.seaside.st/?1=%3D' )		 ( 'http://www.seaside.st/?1=2&' 'http://www.seaside.st/?1=2' )		 				 "fragment"		 ( 'http://www.seaside.st/#' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/##' 'http://www.seaside.st/#%23' )		 ( 'http://www.seaside.st/#?a=b' 'http://www.seaside.st/#%3Fa%3Db' ) )!

asString: aCollectionOfIntegers	^ String streamContents: [ :stream |		aCollectionOfIntegers do: [ :each |			stream nextPut: (Character codePoint: each) ] ]!

equalExamples	"These examples about URI equivalence come from Sam Ruby and are quite hardcore. Java and Perl fail them, C# passes them.	http://intertwingly.net/blog/2004/07/31/URI-Equivalence"		^ #( 		 ( 'http://example.com/'				'http://example.com' )		 ( 'http://example.com/' 				'HTTP://example.com/' )		 ( 'http://example.com/' 				'http://example.com:/' )		 ( 'http://example.com/' 				'http://example.com:80/' )		 ( 'http://example.com/' 				'http://Example.com/' )		 ( 'http://example.com/~smith/'		'http://example.com/%7Esmith/' )		 ( 'http://example.com/~smith/'		'http://example.com/%7esmith/' )		 ( 'http://example.com/%7Esmith/'	'http://example.com/%7esmith/' )		 ( 'http://example.com/foo/bar/'		'http://example.com/foo//bar/' )		 ( 'http://example.com/foo/bar/'		'http://example.com/foo////bar/' )					"The following example requires Unicode normalization, something that probably only GemStone/S 3.2+ is able to perform.		 ( 'http://example.com/%C3%87'		'http://example.com/C%CC%A7' )" )!

invalidExamples	"These examples are not legal. The test assures that an error is thrown."		^ #(				 "port"		  'http://www.seaside.st:8x/'		  'http://www.seaside.st:x8/' )!

relativeExamples	^ #( ( 'http://www.seaside.st/foo' '' 'http://www.seaside.st/foo' )		 ( 'http://www.seaside.st/foo' '.' 'http://www.seaside.st/foo' )		 ( 'http://www.seaside.st/foo' './bar' 'http://www.seaside.st/foo/bar' )		 ( 'http://www.seaside.st/foo' 'bar' 'http://www.seaside.st/foo/bar' )		 ( 'http://www.seaside.st/foo' 'bar/.' 'http://www.seaside.st/foo/bar' )		 ( 'http://www.seaside.st/foo' 'bar/..' 'http://www.seaside.st/foo' )		 ( 'http://www.seaside.st/foo' 'bar/../..' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/foo' 'bar/../../..' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/foo' '/' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/foo' '/.' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/foo' '/./bar' 'http://www.seaside.st/bar' )		 ( 'http://www.seaside.st/foo' '/bar' 'http://www.seaside.st/bar' )		 ( 'http://www.seaside.st/foo' '/bar/.' 'http://www.seaside.st/bar' )		 ( 'http://www.seaside.st/foo' '/bar/..' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/foo' '/bar/../..' 'http://www.seaside.st/' )		 ( 'http://www.seaside.st/foo' '/bar/../../..' 'http://www.seaside.st/' ) )!

setUp	url := WAUrl new!

testAddAllToPath	url addAllToPath: #('files' 'WAStandardFiles' 'seaside.jpg' ).	self assert: url path size = 3.	self assert: url path first = 'files'.	self assert: url path last = 'seaside.jpg'.	self assert: url greaseString = '/files/WAStandardFiles/seaside.jpg'!

testAddField	url addField: 'x'.	self assert: url greaseString = '/?x'.	url addField: 'y'.	self assert: url greaseString = '/?x&y'.	url addField: 'x'.	self assert: url greaseString = '/?x&y&x'!

testAddFieldValue	url 		addField: 'x'		value: 1.	self assert: url greaseString = '/?x=1'.	url 		addField: 'y'		value: 2.	self assert: url greaseString = '/?x=1&y=2'.	url 		addField: 'x'		value: 3.	self assert: url greaseString = '/?x=1&y=2&x=3'!

testAddPathParameter	url addAllToPath: #('seaside' 'files' 'WAStandardFiles' 'seaside.jpg' ).	url addField: 'redirectcounter' value: 1.	url addPathParameterAt: 2 key: 'old'.	url addPathParameterAt: 3 key: 'key1' value: 'value1'.	url addPathParameterAt: 3 key: 'key2' value: 'value2'.	url addPathParameterAt: 3 key: 'key1' value: 'value3'.	url addPathParameterAt: 4 key: 'jsessionid' value: 42.		self assert: (url pathParameterAt: 1 key: 'jsessionid' ifAbsent: [ 'foo' ]) = 'foo'.	self assert: (url pathParameterAllAt: 1 key: 'jsessionid' ifAbsent: [ 'foo' ]) = 'foo'.		self assert: (url pathParameterAllAt: 2 key: 'jsessionid' ifAbsent: [ 'bar' ]) = 'bar'.	self assert: (url pathParameterAt: 2 key: 'jsessionid' ifAbsent: [ 'bar' ]) = 'bar'.	self assert: (url pathParameterAt: 2 key: 'old' ifAbsent: [ 'bar' ]) isNil.	self assert: (url pathParameterAllAt: 2 key: 'old' ifAbsent: [ 'bar' ]) = (Array with: nil).		self assert: (url pathParameterAt: 3 key: 'jsessionid' ifAbsent: [ 'bar' ]) = 'bar'.	self assert: (url pathParameterAllAt: 3 key: 'jsessionid' ifAbsent: [ 'bar' ]) = 'bar'.	self assert: (url pathParameterAt: 3 key: 'key1' ifAbsent: [ 'bar' ]) = 'value1'.	self assert: (url pathParameterAllAt: 3 key: 'key1' ifAbsent: [ 'bar' ]) = (Array with: 'value1' with: 'value3').	self assert: (url pathParameterAt: 3 key: 'key2' ifAbsent: [ 'bar' ]) = 'value2'.	self assert: (url pathParameterAllAt: 3 key: 'key2' ifAbsent: [ 'bar' ]) = (Array with: 'value2').		self assert: (url pathParameterAllAt: 4 key: 'key1' ifAbsent: [ 'bar' ]) = 'bar'.	self assert: (url pathParameterAt: 4 key: 'key1' ifAbsent: [ 'bar' ]) = 'bar'.	self assert: (url pathParameterAt: 4 key: 'jsessionid' ifAbsent: [ 'bar' ]) = 42.	self assert: (url pathParameterAllAt: 4 key: 'jsessionid' ifAbsent: [ 'bar' ]) = (Array with: 42).		self assert: url greaseString = '/seaside/files;old/WAStandardFiles;key1=value1,value3;key2=value2/seaside.jpg;jsessionid=42?redirectcounter=1'!

testAddToPathEmptyString	url addToPath: ''.	self assert: url path isEmpty.	self assert: url greaseString = '/'!

testAddToPathWithLeadingAndTrailingSlash	url addToPath: '/files/WAStandardFiles/'.	self assert: url path size = 2.	self assert: url path first = 'files'.	self assert: url path second = 'WAStandardFiles'.	self assert: url greaseString = '/files/WAStandardFiles/'!

testAddToPathWithLeadingSlash	url addToPath: '/files/WAStandardFiles/seaside.jpg'.	self assert: url path size = 3.	self assert: url path first = 'files'.	self assert: url path second = 'WAStandardFiles'.	self assert: url path third = 'seaside.jpg'.	self assert: url greaseString = '/files/WAStandardFiles/seaside.jpg'!

testAddToPathWithoutLeadingSlash	url addToPath: 'files/WAStandardFiles/seaside.jpg'.	self assert: url path size = 3.	self assert: url path first = 'files'.	self assert: url path second = 'WAStandardFiles'.	self assert: url path third = 'seaside.jpg'.	self assert: url greaseString = '/files/WAStandardFiles/seaside.jpg'!

testAddToPathWithTrailingSlashOnly	url addToPath: 'files/WAStandardFiles/'.	self assert: url path size = 2.	self assert: url path first = 'files'.	self assert: url path second = 'WAStandardFiles'.	self assert: url greaseString = '/files/WAStandardFiles/'!

testConversion	| converted |	url		host: 'example.com';		addToPath: 'foo';		addToPath: 'bar'.		converted := 'http://example.com/foo/bar' seasideUrl.		self assert: (converted isKindOf: WAUrl).	self assert: url = converted!

testCopy	| copy |	url addToPath: 'foo/bar'.	url addField: 'foo' value: 'bar'.	copy := url copy.	url addToPath: 'zork'.	url addField: 'zork'.	self assert: url printString = '/foo/bar/zork?foo=bar&zork'.	self assert: copy printString = '/foo/bar?foo=bar'!

testCopyWithPathParameter	| copy |	url addToPath: 'zork'.	copy := url copy.	url addPathParameterAt: 1 key: 'foo'.		self assert: url printString = '/zork;foo'.	self assert: copy printString = '/zork'!

testCopyWithPathParameterValue	| copy |	url addToPath: 'zork'.	copy := url copy.	url addPathParameterAt: 1 key: 'foo' value: 'bar'.	self assert: url printString = '/zork;foo=bar'.	self assert: copy printString = '/zork'!

testDecodedWith	"http://ùs:er:pa:ß@localhost:8080/foo/äbc/dêf?õ=stîgetc&ô#tårget"	| pathArray expectedPathArray |	url := (WAUrl absolute: 'http://%c3%b9s%3aer:pa%3A%c3%9f@localhost:8080/foo/%C3%A4bc/d%c3%aaf?%c3%b5=st%c3%aegetc&%c3%b4#t%c3%a5rget') decodedWith: (GRCodec forEncoding: 'utf-8').	self assert: url scheme = 'http'.	self assert: url userinfo = (self asString: #(249 115 58 101 114 58 112 97 58 223 )).	self assert: url user = (self asString: #(249 115 58 101 114 )).	self assert: url password = (self asString: #(112 97 58 223 )).	self assert: url host = 'localhost'.	self assert: url port = 8080.	pathArray := url path asArray.	self assert: pathArray size = 3.	"must not use Collection >> #= due to Enterprise Smalltalk (tm)"	expectedPathArray := Array 		with: 'foo'		with: (self asString: #(228 98 99 ))		with: (self asString: #(100 234 102 )).	expectedPathArray keysAndValuesDo: [ :index :each | self assert: (pathArray at: index) = each ].	self assert: url queryFields size = 2.	self assert: (url queryFields at: (self asString: #(245 ))) = (self asString: #(					115					116					238					103					101					116					99				)).	self assert: (url queryFields includesKey: (self asString: #(244 ))).	self assert: (url queryFields at: (self asString: #(244 ))) isNil.	""	self assert: url fragment = (self asString: #(116 229 114 103 101 116 ))!

testDecodePercent	"regression test for https://github.com/SeasideSt/Seaside/issues/1157"	| element |	url := WAUrl absolute: 'http://www.seaside.st/%21%2a%7A'.	element := url path first.	self assert: element equals: (String											with: (Character codePoint: 16r21)											with: (Character codePoint: 16r2A)											with: (Character codePoint: 16r7A))!

testEqual	url host: 'seaside.st'; addField: 'foo' value: 'bar'. 	self assert: url = url.	self deny: url = WAUrl new.	self deny: url = url printString.	self deny: url = (url withoutQuery).	self deny: url = (url withField: 'zork').	self deny: url = (url withField: 'zork' value: 'zonk')!

testFragment	url fragment: 'id'.	self assert: url fragment = 'id'.	self assert: url greaseString = '/#id'!

testHash	url host: 'seaside.st'.	self assert: url hash = url hash.	self assert: url hash = url copy hash!

testHost	url host: 'seaside.st'.	self assert: url host = 'seaside.st'.	self assert: url greaseString = 'http://seaside.st/'!

testInvalidSyntax	"Regression test for:	http://code.google.com/p/seaside/issues/detail?id=762		ANSI #next	The result is undefined if there the receiver has no future sequence values."	self 		should: [ WAUrl decodePercent: 'abc%' ]		raise: WAInvalidUrlSyntaxError.			"0xZZ is invalid hex	https://github.com/SeasideSt/Seaside/issues/1157"	self 		should: [ WAUrl decodePercent: '%ZZ' ]		raise: WAInvalidUrlSyntaxError!

testIsSsl	url := WAUrl absolute: 'https://www.seaside.st/'.	self assert: url isSsl.	url := WAUrl absolute: 'http://www.seaside.st/'.	self deny: url isSsl.	url := WAUrl absolute: 'ftps://www.seaside.st/'.	self assert: url isSsl.	url := WAUrl absolute: 'ftp://www.seaside.st/'.	self deny: url isSsl.	self deny: WAUrl new isSsl!

testNastyEdgeCasesParsing	url := (WAUrl absolute: 'http://example.com/blue+light%20blue?blue%2Blight+blue')		decodedWith: GRNullCodec new.	self assert: url path first = 'blue+light blue'.	self assert: (url queryFields includesKey: 'blue+light blue').		url := (WAUrl absolute: 'http://example.com/blue%2Fred%3Fand+green')		decodedWith: GRNullCodec new.	self assert: url path first = 'blue/red?and+green'.		url := WAUrl absolute: '/blue?http://example.com/red'.	self assert: url path = (OrderedCollection with: 'blue').	self assert: url queryFields keys = #('http://example.com/red').	self assert: url queryFields values = #(nil).		url := (WAUrl absolute: 'http://example.com/:@-._~!!$&''()*+,=;:@-._~!!$&''()*+,=:@-._~!!$&''()*+,==?/?:@-._~!!$''()*+,;=/?:@-._~!!$''()*+,;==#/?:@-._~!!$&''()*+,;=')		decodedWith: GRNullCodec new.	self assert: url path first = ':@-._~!!$&''()*+,='.	self assert: (url pathParameterAllAt: 1 key: ':@-._~!!$&''()*+,' ifAbsent: [ 'fail' ]) = #(':@-._~!!$&''()*+' '==').	self assert: (url queryFields at: '/?:@-._~!!$''()* ,;') = '/?:@-._~!!$''()* ,;=='.	self assert: url fragment = '/?:@-._~!!$&''()*+,;='!

testNastyEdgeCasesSerialization	url host: 'example.com'.	url addToPath: 'blue+light blue'.	url queryFields at: 'blue+light blue' put: nil.	"legal but hardcore	self assert: url greaseString = 'http://example.com/blue+light%20blue?blue%2Blight+blue'"	self assert: url greaseString = 'http://example.com/blue%2Blight%20blue?blue%2Blight%20blue'!

testNoParameter	"https://github.com/SeasideSt/Seaside/issues/909"	| string |	string := '/Buchhaltung?_s=F4N82ZReQEV2M1cP&_k=spf8TDq4kzHfrPCi&48&searchText=kas'.	url := WAUrl absolute: string.	self assert: (url queryFields includesKey: '48').	self assert: (url queryFields at: '48') isNil.	self assert: url greaseString equals: string!

testParseAbsolute	self absoluteExamples do: [ :each | 		self 			assert: (WAUrl absolute: each) greaseString = each			description: each			resumable: true ]!

testParseAmbigous	self ambigousExamples do: [ :each | 		self 			assert: (WAUrl absolute: each first) greaseString = each last			description: each last			resumable: true ]!

testParseEqual	self equalExamples do: [ :each |		self 			assert: (WAUrl absolute: each first) = (WAUrl absolute: each second)		 	description: each second resumable: true ]!

testParseInvalid	self invalidExamples do: [ :each | 		self 			should: [ WAUrl absolute: each ]			raise: WAInvalidUrlSyntaxError ]!

testParseRelative	self relativeExamples do: [ :each | 		self 			assert: (WAUrl 				absolute: each first				relative: each second) greaseString = each last			description: each last			resumable: true ]!

testParseWithoutSlash	"regression test for https://github.com/SeasideSt/Seaside/issues/424"	| urlsWithSlash |	urlsWithSlash := #(		'http://seaside.st/foo'		'http://seaside.st/foo?key=value'		'http://seaside.st/foo#x'		'http://seaside.st/foo?key=value#x'	).	urlsWithSlash do: [ :each |		 url := WAUrl absolute: each.		self deny: url slash.		self assert: url greaseString = each ]!

testParseWithSlash	"regression test for https://github.com/SeasideSt/Seaside/issues/424"	| urlsWithSlash |	urlsWithSlash := #(		'http://seaside.st/foo/'		'http://seaside.st/foo/?key=value'		'http://seaside.st/foo/#x'		'http://seaside.st/foo/?key=value#x'	).	urlsWithSlash do: [ :each |		 url := WAUrl absolute: each.		self assert: url slash.		self assert: url greaseString = each ]!

testPassword	url		host: 'seaside.st';		user: 'foo';		password: 'bar'.	self assert: url password = 'bar'.	self assert: url greaseString = 'http://foo:bar@seaside.st/'!

testPath	self assert: url greaseString = '/'.	url path add: 'aa'.	self assert: url greaseString = '/aa'.	url path add: 'bb'.	self assert: url greaseString = '/aa/bb'.	self assert: url path asArray = #('aa' 'bb' )!

testPathEncoding	url path: #( 'foo/bar' ).	self assert: url printString = '/foo%2Fbar'.	url path: #( 'foo bar' ).	self assert: url printString = '/foo%20bar'.	url path: #( 'foo+bar' ).	self assert: url printString = '/foo%2Bbar'.	url path: #( 'foo%bar' ).	self assert: url printString = '/foo%25bar'!

testPathString	self assert: (url pathStringEncodedWith: GRNullCodec new) = '/'.	url path: #( 'foo' 'bar' ).	self assert: (url pathStringEncodedWith: GRNullCodec new) = '/foo/bar'!

testPathStringUnencoded	self assert: url pathStringUnencoded = '/'.	url addAllToPath: #('files' 'WAStandardFiles' 'seaside.jpg' ).	self assert: url pathStringUnencoded = '/files/WAStandardFiles/seaside.jpg'.	url slash: true.	self assert: url pathStringUnencoded = '/files/WAStandardFiles/seaside.jpg/'!

testPort	url		host: 'seaside.st';		port: 8080.	self assert: url port = 8080.	self assert: url greaseString = 'http://seaside.st:8080/'!

testQueryEmpty	self assert: url queryFields isEmpty.	self assert: url printString = '/'!

testQueryEncoding	self		assert: (url withField: '/' value: ' ')			printString = '/?%2F=%20'.	self		assert: (url withField: '+' value: '%')			printString = '/?%2B=%25'.	self		assert: (url withField: '?' value: '&')			printString = '/?%3F=%26'.	self		assert: (url withField: '[' value: ']')			printString = '/?%5B=%5D'.	self		assert: (url withField: '=' value: '<')			printString = '/?%3D=%3C'!

testQueryFields	url queryFields 		at: '1'		put: nil.	self assert: url greaseString = '/?1'.	url queryFields 		at: '2'		put: 'foo'.	self assert: url greaseString = '/?1&2=foo'.	url queryFields 		at: '3'		put: 123.	self assert: url greaseString = '/?1&2=foo&3=123'.	url queryFields 		at: '4'		put: 'foo bar&zork'.	self assert: url greaseString = '/?1&2=foo&3=123&4=foo%20bar%26zork'.	url queryFields 		at: '1'		add: 'dupe'.	self assert: url greaseString = '/?1&2=foo&3=123&4=foo%20bar%26zork&1=dupe'!

testQueryString	self assert: url queryString = ''.	url addField: 'foo'.	self assert: url queryString = 'foo'.	url addField: 'foo' value: 'bar'.	self assert: url queryString = 'foo&foo=bar'.	url addField: 'foo#' value: 'bar#'.	self assert: url queryString = 'foo&foo=bar&foo%23=bar%23'!

testRawAddAllToPath	url rawAddAllToPath: #('files/WAStandardFiles' 'seaside.jpg' ).	self assert: url path size = 2.	self assert: url path first = 'files/WAStandardFiles'.	self assert: url path last = 'seaside.jpg'.	self assert: url greaseString = '/files%2FWAStandardFiles/seaside.jpg'!

testRawAddToPath	url rawAddToPath: 'a/b'.	self assert: url greaseString = '/a%2Fb'!

testRelativeTo	| first second relativePath |	first := WAUrl absolute: 'http://www.seaside.st/news'.	second := WAUrl absolute: 'http://www.seaside.st/news/2008/April'.	relativePath := first relativeTo: second.	"we can not use #= here because of the Smalltalk that makes the easy parts more fucking tedious than Java"	self assert: relativePath size = 2.	self assert: relativePath first = '2008'.	self assert: relativePath second = 'April'!

testScheme	url		scheme: 'https';		host: 'seaside.st'.	self assert: url scheme = 'https'.	self assert: url greaseString = 'https://seaside.st/'.	"Tests from Boris"	url host: 'seaside.st'.	url		port: 80;		scheme: 'http'.	self assert: url greaseString = 'http://seaside.st/'.	url		port: 443;		scheme: 'https'.	self assert: url greaseString = 'https://seaside.st/'.	url		port: 80;		scheme: #http.	self assert: url greaseString = 'http://seaside.st/'.	url		port: 443;		scheme: #https.	self assert: url greaseString = 'https://seaside.st/'!

testSlash	url host: 'seaside.st'.	self assert: (url			slash: true;			greaseString) = 'http://seaside.st/'.	self assert: (url			slash: false;			greaseString) = 'http://seaside.st/'.	url addToPath: 'foo'.	self assert: (url			slash: true;			greaseString) = 'http://seaside.st/foo/'.	self assert: (url			slash: false;			greaseString) = 'http://seaside.st/foo'!

testTakeServerParametersFromRequest	| request |	request := WARequest new		setHeaders: (Dictionary new			at: 'host' put: 'www.seaside.st:8080';			yourself);		yourself.	url takeServerParametersFromRequest: request.	self assert: url printString = 'http://www.seaside.st:8080/'!

testTakeServerParametersFromRequestBase	| request |	request := (WARequest 		method: 'GET'		uri: (WAUrl new				scheme: 'https';				yourself))		setHeaders: (Dictionary new				at: 'host' put: 'www.thehost.com:1337';				yourself);		yourself.	url takeServerParametersFromRequest: request.	self assert: url greaseString = 'https://www.thehost.com:1337/'!

testTakeServerParametersFromRequestHttps	| request |	request := WARequest new		setHeaders: (Dictionary new				at: 'host' put: 'www.seaside.st';				at: 'base' put: 'foo/bar';				yourself);		yourself.	url takeServerParametersFromRequest: request.	self assert: url greaseString = 'http://www.seaside.st/foo/bar'!

testUser	url		host: 'seaside.st';		user: 'foo'.	self assert: url user = 'foo'.	self assert: url greaseString = 'http://foo@seaside.st/'!

testUserinfo	url		host: 'seaside.st';		userinfo: 'foo:bar'.	self assert: url userinfo = 'foo:bar'.	self assert: url greaseString = 'http://foo%3Abar@seaside.st/'.	"A colon needs to be escaped unless it is separating a (deprecated) password	part. This password part must be specified with #password: because we can't	tell the difference between the two types of colons in #userinfo:."	self assert: url user = 'foo:bar'.	self assert: url password isNil.	url user: 'foo'; password: 'bar'.	self assert: url userinfo = 'foo:bar'.	self assert: url user = 'foo'.	self assert: url password = 'bar'!

testWith	| copy |	copy := url with: 'with'.	url addToPath: 'zork'.	url addField: 'zork'.	self assert: url printString = '/zork?zork'.	self assert: copy printString = '/with'!

testWithField	| copy |	copy := url withField: 'foo'.	url addToPath: 'zork'.	url addField: 'zork'.	self assert: url printString = '/zork?zork'.	self assert: copy printString = '/?foo'!

testWithFieldValue	| copy |	copy := url withField: 'foo' value: 'bar'.	url addToPath: 'zork'.	url addField: 'zork'.	self assert: url printString = '/zork?zork'.	self assert: copy printString = '/?foo=bar'!

testWithoutFragment	| copy |	url fragment: 'foo'.	copy := url withoutFragment.	url addToPath: 'zork'.	url addField: 'zork'.	self assert: url printString = '/zork?zork#foo'.	self assert: copy printString = '/'!

testWithoutQuery	| copy |	url addField: 'foo' value: 'bar'.	copy := url withoutQuery.	url addToPath: 'zork'.	url addField: 'zork'.	self assert: url printString = '/zork?foo=bar&zork'.	self assert: copy printString = '/'!

testWithoutResource	| copy |	url addField: 'foo' value: 'bar'.	url scheme: 'http'.	url host: 'localhost'.	url port: 9000.		copy := url withoutResource.	url addToPath: 'zork'.	url addField: 'zork'.	self assert: url printString equals: 'http://localhost:9000/zork?foo=bar&zork'.	self assert: copy printString equals: 'http://localhost:9000/'!

testWithoutSeasideQueryFields	| copy |	url addToPath: 'zork'.	url addField: 'foo' value: 'bar'.	url addField: '_k' value: '1'.	url addField: '_s' value: '2'.	url addField: '_d' value: '3'.	copy := url withoutSeasideQueryFields.	self assert: url printString = '/zork?foo=bar&_k=1&_s=2&_d=3'.	self assert: copy printString = '/zork?foo=bar'! !

!WAUrlTest categoriesForMethods!
absoluteExamples!public!testing/parsing! !
ambigousExamples!public!testing/parsing! !
asString:!public!utilities! !
equalExamples!public!testing/parsing! !
invalidExamples!public!testing/parsing! !
relativeExamples!public!testing/parsing! !
setUp!public!running! !
testAddAllToPath!public!tests/adding! !
testAddField!public!tests/adding! !
testAddFieldValue!public!tests/adding! !
testAddPathParameter!public!tests/adding! !
testAddToPathEmptyString!public!tests/adding! !
testAddToPathWithLeadingAndTrailingSlash!public!tests/adding! !
testAddToPathWithLeadingSlash!public!tests/adding! !
testAddToPathWithoutLeadingSlash!public!tests/adding! !
testAddToPathWithTrailingSlashOnly!public!tests/adding! !
testConversion!public!tests! !
testCopy!public!tests/copy! !
testCopyWithPathParameter!public!tests/copy! !
testCopyWithPathParameterValue!public!tests/copy! !
testDecodedWith!public!tests/encoding! !
testDecodePercent!public!testing/parsing! !
testEqual!public!tests/comparing! !
testFragment!public!tests! !
testHash!public!tests/comparing! !
testHost!public!tests! !
testInvalidSyntax!public!tests/adding! !
testIsSsl!public!testing/parsing! !
testNastyEdgeCasesParsing!public!tests/encoding! !
testNastyEdgeCasesSerialization!public!tests/encoding! !
testNoParameter!public!testing/parsing! !
testParseAbsolute!public!testing/parsing! !
testParseAmbigous!public!testing/parsing! !
testParseEqual!public!testing/parsing! !
testParseInvalid!public!testing/parsing! !
testParseRelative!public!testing/parsing! !
testParseWithoutSlash!public!testing/parsing! !
testParseWithSlash!public!testing/parsing! !
testPassword!public!tests! !
testPath!public!tests! !
testPathEncoding!public!tests/encoding! !
testPathString!public!tests/encoding! !
testPathStringUnencoded!public!tests/adding! !
testPort!public!tests! !
testQueryEmpty!public!tests/encoding! !
testQueryEncoding!public!tests/encoding! !
testQueryFields!public!tests! !
testQueryString!public!tests/encoding! !
testRawAddAllToPath!public!tests/adding! !
testRawAddToPath!public!tests/adding! !
testRelativeTo!public!tests/encoding! !
testScheme!public!tests! !
testSlash!public!tests! !
testTakeServerParametersFromRequest!public!tests! !
testTakeServerParametersFromRequestBase!public!tests! !
testTakeServerParametersFromRequestHttps!public!tests! !
testUser!public!tests! !
testUserinfo!public!tests! !
testWith!public!tests/copy! !
testWithField!public!tests/copy! !
testWithFieldValue!public!tests/copy! !
testWithoutFragment!public!tests/copy! !
testWithoutQuery!public!tests/copy! !
testWithoutResource!public!tests/copy! !
testWithoutSeasideQueryFields!public!tests/copy! !
!

