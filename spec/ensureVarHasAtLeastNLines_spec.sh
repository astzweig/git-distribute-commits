Describe 'ensureVarHasAtLeastNLines'
	It 'does nothing for negative lines'
		someVar=""
		When call ensureVarHasAtLeastNLines someVar -1
		The variable someVar should be blank
	End

	It 'does nothing for zero lines'
		someVar=""
		When call ensureVarHasAtLeastNLines someVar 0
		The variable someVar should be blank
	End

	It 'does nothing if line matches already'
		someVar="Hallo"
		When call ensureVarHasAtLeastNLines someVar 1
		The variable someVar should eq "Hallo"
	End

	It 'repeats the content if more lines are needed'
		someVar="Hallo"
		When call ensureVarHasAtLeastNLines someVar 2
		The variable someVar should eq "Hallo"$'\n'"Hallo"
	End
End
