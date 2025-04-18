﻿"Filed out from Dolphin Smalltalk"!

JQFunctionalTest subclass: #JQJsonFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQJsonFunctionalTest guid: (GUID fromString: '{eb7716eb-818e-414c-9a09-01a51c23fd3d}')!

JQJsonFunctionalTest comment: ''!

!JQJsonFunctionalTest categoriesForClass!Functional! !

!JQJsonFunctionalTest methodsFor!

addCountriesPerCurrencyCodeRemainingBecausePharo8LimitationOfLiteralsTo: dict	^ dict  			add:			  'NZD'			  -> #( 'Cook Islands' 'New Zealand' 'Niue' 'Pitcairn Islands'				     'Tokelau' );		  add: 'CRC' -> #( 'Costa Rica' );		  add: 'CUP' -> #( 'Cuba' );		  add: 'CZK' -> #( 'Czech Republic' );		  add: 'DKK' -> #( 'Denmark' 'Faroe Islands' 'Greenland' );		  add: 'DJF' -> #( 'Djibouti' );		  add: 'DOP' -> #( 'Dominican Republic' );		  add: 'ECS' -> #( 'Ecuador' );		  add: 'EGP' -> #( 'Egypt' );		  add: 'SVC' -> #( 'El Salvador' );		  add: 'GBP'			  ->				  #( 'England' 'Northern Ireland' 'Scotland' 'South Georgia and the South Sandwich Islands'				     'United Kingdom' 'Wales' );		  add: 'ERN' -> #( 'Eritrea' );		  add: 'SZL' -> #( 'Eswatini' );		  add: 'ETB' -> #( 'Ethiopia' );		  add: 'FKP' -> #( 'Falkland Islands' );		  add: 'FJD' -> #( 'Fiji Islands' );		  add:			  'XPF'			  -> #( 'French Polynesia' 'New Caledonia' 'Wallis and Futuna' );		  add: 'GMD' -> #( 'Gambia' );		  add: 'GEL' -> #( 'Georgia' );		  add: 'GHS' -> #( 'Ghana' );		  add: 'GIP' -> #( 'Gibraltar' );		  add: 'QTQ' -> #( 'Guatemala' );		  add: 'GNF' -> #( 'Guinea' );		  add: 'CFA' -> #( 'Guinea-Bissau' );		  add: 'GYD' -> #( 'Guyana' );		  add: 'HTG' -> #( 'Haiti' );		  add: 'HNL' -> #( 'Honduras' );		  add: 'HKD' -> #( 'Hong Kong' );		  add: 'HUF' -> #( 'Hungary' );		  add: 'ISK' -> #( 'Iceland' );		  add: 'INR' -> #( 'India' );		  add: 'IDR' -> #( 'Indonesia' );		  add: 'IRR' -> #( 'Iran' );		  add: 'IQD' -> #( 'Iraq' );		  add: 'ILS' -> #( 'Israel' );		  add: 'JMD' -> #( 'Jamaica' );		  add: 'JPY' -> #( 'Japan' );		  add: 'JOD' -> #( 'Jordan' );		  add: 'KZT' -> #( 'Kazakhstan' );		  add: 'KES' -> #( 'Kenya' );		  add: 'KWD' -> #( 'Kuwait' );		  add: 'KGS' -> #( 'Kyrgyzstan' );		  add: 'LAK' -> #( 'Laos' );		  add: 'LBP' -> #( 'Lebanon' );		  add: 'LSL' -> #( 'Lesotho' );		  add: 'LRD' -> #( 'Liberia' );		  add: 'LYD' -> #( 'Libya' );		  add: 'CHF' -> #( 'Liechtenstein' 'Switzerland' );		  add: 'MOP' -> #( 'Macau' );		  add: 'MKD' -> #( 'North Macedonia' );		  add: 'MGF' -> #( 'Madagascar' );		  add: 'MWK' -> #( 'Malawi' );		  add: 'MYR' -> #( 'Malaysia' );		  add: 'MVR' -> #( 'Maldives' );		  add: 'MRO' -> #( 'Mauritania' );		  add: 'MUR' -> #( 'Mauritius' );		  add: 'MXN' -> #( 'Mexico' );		  add: 'MDL' -> #( 'Moldova' );		  add: 'MNT' -> #( 'Mongolia' );		  add: 'MAD' -> #( 'Morocco' 'Western Sahara' );		  add: 'MZN' -> #( 'Mozambique' );		  add: 'MMR' -> #( 'Myanmar' );		  add: 'NAD' -> #( 'Namibia' );		  add: 'NPR' -> #( 'Nepal' );		  add: 'ANG' -> #( 'Netherlands Antilles' );		  add: 'NIO' -> #( 'Nicaragua' );		  add: 'NGN' -> #( 'Nigeria' );		  add: 'KPW' -> #( 'North Korea' );		  add: 'OMR' -> #( 'Oman' );		  add: 'PKR' -> #( 'Pakistan' );		  add: nil -> #( 'Palestine' );		  add: 'PAB' -> #( 'Panama' );		  add: 'PGK' -> #( 'Papua New Guinea' );		  add: 'PYG' -> #( 'Paraguay' );		  add: 'PEN' -> #( 'Peru' );		  add: 'PHP' -> #( 'Philippines' );		  add: 'PLN' -> #( 'Poland' );		  add: 'QAR' -> #( 'Qatar' );		  add: 'RON' -> #( 'Romania' );		  add: 'RUB' -> #( 'Russia' );		  add: 'RWF' -> #( 'Rwanda' );		  add: 'SHP' -> #( 'Saint Helena' );		  add: 'WST' -> #( 'Samoa' );		  add: 'STD' -> #( 'Sao Tome and Principe' );		  add: 'SAR' -> #( 'Saudi Arabia' );		  add: 'RSD' -> #( 'Serbia' );		  add: 'SCR' -> #( 'Seychelles' );		  add: 'SLL' -> #( 'Sierra Leone' );		  add: 'SGD' -> #( 'Singapore' );		  add: 'SBD' -> #( 'Solomon Islands' );		  add: 'SOS' -> #( 'Somalia' );		  add: 'ZAR' -> #( 'South Africa' );		  add: 'KRW' -> #( 'South Korea' );		  add: 'SSP' -> #( 'South Sudan' );		  add: 'LKR' -> #( 'Sri Lanka' );		  add: 'SDG' -> #( 'Sudan' );		  add: 'SRD' -> #( 'Suriname' );		  add: 'SEK' -> #( 'Sweden' );		  add: 'SYP' -> #( 'Syria' );		  add: 'TJS' -> #( 'Tajikistan' );		  add: 'TZS' -> #( 'Tanzania' );		  add: 'THB' -> #( 'Thailand' );		  add: 'CDF' -> #( 'The Democratic Republic of Congo' );		  add: 'TOP' -> #( 'Tonga' );		  add: 'TTD' -> #( 'Trinidad and Tobago' );		  add: 'TND' -> #( 'Tunisia' );		  add: 'TRY' -> #( 'Turkey' );		  add: 'TMT' -> #( 'Turkmenistan' );		  add: 'UGX' -> #( 'Uganda' );		  add: 'UAH' -> #( 'Ukraine' );		  add: 'AED' -> #( 'United Arab Emirates' );		  add: 'UYU' -> #( 'Uruguay' );		  add: 'UZS' -> #( 'Uzbekistan' );		  add: 'VUV' -> #( 'Vanuatu' );		  add: 'VEF' -> #( 'Venezuela' );		  add: 'VND' -> #( 'Vietnam' );		  add: 'YER' -> #( 'Yemen' );		  add: 'ZMW' -> #( 'Zambia' );		  add: 'ZWD' -> #( 'Zimbabwe' );		  yourself!

countriesForCurrencyCode: aCurrencyCode	^ self countriesPerCurrencyCode at: aCurrencyCode!

countriesPerCurrencyCode	| dict |	dict := Dictionary new		  add: 'AFN' -> #( 'Afghanistan' );		  add: 'ALL' -> #( 'Albania' );		  add: 'DZD' -> #( 'Algeria' );		  add:			  'USD' -> #( 'American Samoa' 'British Indian Ocean Territory'				     'East Timor' 'Guam' 'Marshall Islands' 'Micronesia, Federated States of'				     'Northern Mariana Islands' 'Palau' 'Puerto Rico'				     'Turks and Caicos Islands' 'United States' 'United States Minor Outlying Islands'				     'Virgin Islands, British' 'Virgin Islands, U.S.' );		  add: 'EUR'			  -> #( 'Andorra' 'Austria' 'Belgium' 'Croatia' 'Cyprus' 'Estonia'				     'Finland' 'France' 'French Guiana' 'French Southern territories'				     'Germany' 'Greece' 'Guadeloupe' 'Holy See (Vatican City State)'				     'Ireland' 'Italy' 'Latvia' 'Lithuania' 'Luxembourg'				     'Malta' 'Martinique' 'Mayotte' 'Monaco' 'Netherlands'				     'Portugal' 'Reunion' 'Saint Pierre and Miquelon'				     'San Marino' 'Slovakia' 'Slovenia' 'Spain' );		  add: 'AOA' -> #( 'Angola' );		  add: 'XCD'			  ->				  #( 'Anguilla' 'Antarctica' 'Antigua and Barbuda'				     'Dominica' 'Grenada' 'Montserrat' 'Saint Kitts and Nevis'				     'Saint Lucia' 'Saint Vincent and the Grenadines' );		  add: 'ARS' -> #( 'Argentina' );		  add: 'AMD' -> #( 'Armenia' );		  add: 'AWG' -> #( 'Aruba' );		  add:			  'AUD'			  -> #( 'Australia' 'Christmas Island' 'Cocos (Keeling) Islands'				     'Heard Island and McDonald Islands'				     'Kiribati' 'Nauru' 'Norfolk Island' 'Tuvalu' );		  add: 'AZN' -> #( 'Azerbaijan' );		  add: 'BSD' -> #( 'Bahamas' );		  add: 'BHD' -> #( 'Bahrain' );		  add: 'BDT' -> #( 'Bangladesh' );		  add: 'BBD' -> #( 'Barbados' );		  add: 'BYR' -> #( 'Belarus' );		  add: 'BZD' -> #( 'Belize' );		  add: 'XOF' -> #( 'Benin' 'Burkina Faso' 'Ivory Coast' 'Mali' 'Niger' 'Senegal' 'Togo' );		  add: 'BMD' -> #( 'Bermuda' );		  add: 'BTN' -> #( 'Bhutan' );		  add: 'BOB' -> #( 'Bolivia' );		  add: 'BAM' -> #( 'Bosnia and Herzegovina' );		  add: 'BWP' -> #( 'Botswana' );		  add: 'NOK' -> #( 'Bouvet Island' 'Norway' 'Svalbard and Jan Mayen' );		  add: 'BRL' -> #( 'Brazil' );		  add: 'BND' -> #( 'Brunei' );		  add: 'BGN' -> #( 'Bulgaria' );		  add: 'BIF' -> #( 'Burundi' );		  add: 'KHR' -> #( 'Cambodia' );		  add: 'XAF' -> #( 'Cameroon' 'Central African Republic' 'Chad' 'Congo' 'Equatorial Guinea' 'Gabon' );		  add: 'CAD' -> #( 'Canada' );		  add: 'CVE' -> #( 'Cape Verde' );		  add: 'KYD' -> #( 'Cayman Islands' );		  add: 'CLP' -> #( 'Chile' );		  add: 'CNY' -> #( 'China' );		  add: 'COP' -> #( 'Colombia' );		  add: 'KMF' -> #( 'Comoros' );		  yourself.	self addCountriesPerCurrencyCodeRemainingBecausePharo8LimitationOfLiteralsTo: dict.	^ dict!

currenciesAndCountriesOn: json	json array: [		self listOfCurrencyCodes do:[ :currencyCode |			json object: [ 				json key: 'currency' value: currencyCode.				json key: 'countries' value: [  					json array: [ (self countriesForCurrencyCode: currencyCode) do: [ :country |						json value: [ json string: country ] ] ] ] ] ] ]!

listOfCurrencyCodes	^ self countriesPerCurrencyCode keys!

renderContentOn: html	self renderExternalJsonOn: html.	self renderJsonCallbackOn: html!

renderExternalJsonOn: html	html paragraph: 'Load some recent Seaside pictures from the Flickr JSONP API:'.	html div id: 'images'.	html document 		addLoadScript: (html jQuery getJson			url: 'http://api.flickr.com/services/feeds/photos_public.gne?tags=seaside&format=json&jsoncallback=?';			onSuccess: '$.each(arguments[0].items, function(index, each) {				$("<img/>").attr("src", each.media.m).attr("title", each.title).appendTo("#images");			});')!

renderJsonCallbackOn: html	html paragraph: 'Load Json served by Seaside:'.	html textArea id: 'textarea'.	html document addLoadScript: 		(html jQuery getJson 				json: [ :json | self currenciesAndCountriesOn: json ];				onSuccess: ((html jQuery id: 'textarea') value: (JSStream on: 'JSON.stringify(arguments[0])')) asFunction)!

selectors	^ #(renderExternalJsonOn: renderJsonCallbackOn:)!

style	^ '#images { white-space: nowrap; overflow: scroll; overflow-y: hidden; }#images img { padding: 0 10px 10px 0; vertical-align: middle; }#textarea { width: 50em; height: 10em; }'!

title	^ 'Load JSON'! !

!JQJsonFunctionalTest categoriesForMethods!
addCountriesPerCurrencyCodeRemainingBecausePharo8LimitationOfLiteralsTo:!private! !
countriesForCurrencyCode:!private! !
countriesPerCurrencyCode!private! !
currenciesAndCountriesOn:!private! !
listOfCurrencyCodes!private! !
renderContentOn:!public!rendering! !
renderExternalJsonOn:!public!rendering! !
renderJsonCallbackOn:!public!rendering! !
selectors!accessing!public! !
style!hooks!public! !
title!accessing!public! !
!

