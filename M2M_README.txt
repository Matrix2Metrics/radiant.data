Contact: Leonardo Lopez | leonardo.rath@gmail.com


*Repository: Radiant.Data

*m2m files path:
	inst/app/m2mdata/

*radiant files modified:
	inst/app/tools/data/manage_ui.R

*m2m_dataset function:
	-This function determines which dataset to load by using the switch function in order to determine what dataset and year it is.


*m2m_ext function:
	-Here it takes the name of the dataset as a string and it creates the extensions needed to be loaded on the radiant environment variable.
	-It is also where you can add conditions to create a specific dataframe description if needed.



HOW TO ADD M2M DATASETS

STEP 1

-Data frames need to be placed on the m2mdata folder in rda format

-Navigate to output$ui_Manage located on the file manage_ui.R

-Add the datasets name and nameid for the select inputs to be displayed
	E.g: 
		lines 165 - 188 
		"Behavioral Risk Factor Surveillance System 2019" = "brfss19"

-Set conditions for specific radaint use of the variable dataType 
	E.g:

		lines 208 - 228
		"input.dataType != 'brfss19' &&"

		AND

		lines 258 - 277
		"input.dataType == 'brfss19' ||"


STEP 2

-Navigate to the observeEvent that handles the m2m datasets on manage_ui.R from line 652 - 721 

-The input$dataType variable is used to filter through the m2m functions in order to determine what dataset should be loaded and how it will be named.
	This varaible is references the changes we made on the previous step.

-From lines 656 - 688 the m2m datasets are prepared for deployment for the radiant environment variable and are then updated on the selectinput



