'From Croquet1.0beta of 24 March 2006 [latest update: #6665] on 26 March 2006 at 6:00:28 pm'!InterpreterPlugin subclass: #FloatMathPlugin	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'VMMaker-Plugins'!!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:24'!primitiveArcCos	"Computes acos(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_acos(rcvr)' inSmalltalk: [rcvr arcCos].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:24'!primitiveArcCosH	"Computes acosh(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_acosh(rcvr)' inSmalltalk: [rcvr arcCosH].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:24'!primitiveArcSin	"Computes asin(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_asin(rcvr)' inSmalltalk: [rcvr arcSin].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:24'!primitiveArcSinH	"Computes asinh(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_asinh(rcvr)' inSmalltalk: [rcvr arcSinH].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:24'!primitiveArcTan	"Computes atan(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_atan(rcvr)' inSmalltalk: [rcvr arcTan].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:24'!primitiveArcTan2	"Computes atan2(receiver, arg)"	| rcvr arg result |	self export: true.	self var: #rcvr type: 'double'.	self var: #arg type: 'double'.	self var: #result type: 'double'.	arg := interpreterProxy stackFloatValue: 0.	rcvr := interpreterProxy stackFloatValue: 1.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_atan2(rcvr, arg)' inSmalltalk: [rcvr arcTan: arg].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:24'!primitiveArcTanH	"Computes atanh(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_atanh(rcvr)' inSmalltalk: [rcvr arcTanH].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:24'!primitiveCos	"Computes cos(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_cos(rcvr)' inSmalltalk: [rcvr cos].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:24'!primitiveCosH	"Computes cosh(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_cosh(rcvr)' inSmalltalk: [rcvr cosH].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 11/6/2005 03:01'!primitiveExp	"Computes E raised to the receiver power."	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := (self cCode: '__ieee754_exp(rcvr)' inSmalltalk: [rcvr exp]).	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:21'!primitiveFMod	"Computes receiver \\ arg"	| rcvr arg result |	self export: true.	self var: #rcvr type: 'double'.	self var: #arg type: 'double'.	self var: #result type: 'double'.	arg := interpreterProxy stackFloatValue: 0.	rcvr := interpreterProxy stackFloatValue: 1.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_fmod(rcvr, arg)' inSmalltalk: [rcvr \\ arg].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:21'!primitiveFractionalPart	"Computes receiver \\ 1.0"	| rcvr result trunc|	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	self var: #trunc type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_modf(rcvr, &trunc)' inSmalltalk: [rcvr fractionPart].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 11/6/2005 16:13'!primitiveHypot	"hypot(x,y) returns sqrt(x^2+y^2) with error less  than 1 ulps"	| rcvr arg result |	self export: true.	self var: #rcvr type: 'double'.	self var: #arg type: 'double'.	self var: #result type: 'double'.	arg := interpreterProxy stackFloatValue: 0.	rcvr := interpreterProxy stackFloatValue: 1.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_hypot(rcvr, arg)' inSmalltalk: [rcvr hypot: arg].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:25'!primitiveLog10	"Computes log10(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	rcvr < 0.0 ifTrue:[^interpreterProxy primitiveFail].	result := self cCode: '__ieee754_log10(rcvr)' inSmalltalk: [rcvr log: 10].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 17:24'!primitiveLogN	"Computes log(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	rcvr < 0.0 ifTrue:[^interpreterProxy primitiveFail].	result := self cCode: '__ieee754_log(rcvr)' inSmalltalk: [rcvr ln].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:23'!primitiveRaisedToPower	"Computes receiver**arg"	| rcvr arg result |	self export: true.	self var: #rcvr type: 'double'.	self var: #arg type: 'double'.	self var: #result type: 'double'.	arg := interpreterProxy stackFloatValue: 0.	rcvr := interpreterProxy stackFloatValue: 1.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_pow(rcvr, arg)' inSmalltalk: [rcvr raisedTo: arg].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:23'!primitiveSin	"Computes sin(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_sin(rcvr)' inSmalltalk: [rcvr sin].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:23'!primitiveSinH	"Computes sinh(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_sinh(rcvr)' inSmalltalk: [rcvr sinH].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:22'!primitiveSqrt	"Computes sqrt(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	rcvr < 0.0 ifTrue:[^interpreterProxy primitiveFail].	result := self cCode: '__ieee754_sqrt(rcvr)' inSmalltalk: [rcvr sqrt].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:23'!primitiveTan	"Computes tan(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_tan(rcvr)' inSmalltalk: [rcvr tan].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 15:23'!primitiveTanH	"Computes tanh(receiver)"	| rcvr result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	rcvr := interpreterProxy stackFloatValue: 0.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_tanh(rcvr)' inSmalltalk: [rcvr tanH].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !!FloatMathPlugin methodsFor: 'float primitives' stamp: 'ar 3/26/2006 14:06'!primitiveTimesTwoPower	"Computes E raised to the receiver power."	| rcvr arg result |	self export: true.	self var: #rcvr type: 'double'.	self var: #result type: 'double'.	arg := interpreterProxy stackIntegerValue: 0.	rcvr := interpreterProxy stackFloatValue: 1.	(interpreterProxy failed) ifTrue:[^nil].	result := self cCode: '__ieee754_ldexp(rcvr, arg)' inSmalltalk: [rcvr timesTwoPower: arg].	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.	interpreterProxy pushFloat: result.! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!FloatMathPlugin class	instanceVariableNames: ''!!FloatMathPlugin class methodsFor: 'as yet unclassified' stamp: 'ar 11/6/2005 02:48'!hasHeaderFile	"If there is a single intrinsic header file to be associated with the plugin, here is where you want to flag"	^true! !!FloatMathPlugin class methodsFor: 'as yet unclassified' stamp: 'ar 11/6/2005 16:20'!requiresCrossPlatformFiles	"default is ok for most, any plugin needing platform specific files must say so"	^true! !