'Show the message in jenkins console.

Sub showMessageInJenkinsConsole(ByVal TestCaseNumber, ByVal TestCaseDescription)
	Environment.Value("JenkinsFlag") = "Y"
	Environment.Value("JenkinsTestCaseResult") = ""
	Environment.Value("JenkinsTestCaseNumber") = TestCaseNumber
	Environment.Value("JenkinsTestCaseDescription") = TestCaseDescription
	Wait 1
End Sub

Sub showTestCaseStatusInJenkinsConsole(ByVal Status)
	If Status Then
		Environment.Value("JenkinsTestCaseResult") = "PASS"
	Else
		Environment.Value("JenkinsTestCaseResult") = "FAIL"
	End If
	Wait 1
End Sub
