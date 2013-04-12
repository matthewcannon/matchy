Feature: getting things

	Scenario: get nothing

		Given no things
		 When i ask for pencil
		 Then i get nothing

	#Scenario: Get one thing

		#Given Pencil
		 #When I ask for Pencil
		 #Then I get Pencil

	#Scenario: Get only what is asked for

		#Given Pencil
		  #And Tea
		 #When I ask for Tea
		 #Then I get Tea
		  #And I do not get Pencil
