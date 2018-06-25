examples
examplePostGreSql
	<gtExample>
	| ast |
	ast := BisonParser parse: self postGreSqlGrammar.
	^ ast inspect