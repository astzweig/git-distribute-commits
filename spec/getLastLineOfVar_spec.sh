Describe 'getLastLineOfVar'
	It 'returns error when called without arguments'
		When call getLastLineOfVar
		The status should eq 1
	End

	It 'returns error when called with invalid argument'
		When call getLastLineOfVar unknownVariableName
		The status should eq 2
	End

	It 'returns nothing if variable is empty'
		lines=
		When call getLastLineOfVar lines
		The output should be blank
	End

	It 'returns line of single line variable'
		lines=hello
		When call getLastLineOfVar lines
		The output should eq hello
	End

	It 'returns last line of multiline variable'
		lines=hello$'\n'world
		When call getLastLineOfVar lines
		The output should eq world
	End
End
