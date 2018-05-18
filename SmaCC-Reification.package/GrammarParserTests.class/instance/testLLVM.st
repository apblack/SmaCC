tests
testLLVM
	"The LLVM parser should fail since it uses the other convention of 
		Term ? 'name'
	not allowed in this parser, should use
		Term 'name' ? 
	instead."
	self should: [ self class parseGrammarFrom: LLVMParser ] raise: SmaCCParserError.