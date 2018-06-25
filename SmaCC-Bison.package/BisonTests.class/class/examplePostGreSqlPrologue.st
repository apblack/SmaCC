examples
examplePostGreSqlPrologue
	<gtExample>
	| ast |
	ast := BisonParser parse: self postGreSqlPrologue.
	^ ast inspect