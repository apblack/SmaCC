examples
examplePostGreSqlRules
	<gtExample>
	| ast |
	ast := BisonParser parse: self postGreSqlRules.
	^ ast inspect