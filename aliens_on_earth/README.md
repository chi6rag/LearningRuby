##Aliens on Earth

####Problem Statement
A treaty of friendship has been signed between Aliens and Humans. The aliens are now welcome on Earth and can stay as long as they wish with the Humans. You are the person responsible to register the aliens. 

######Part A
Create a console based application that accepts alien details like Code Name, Blood Color, No.of Antennas, No. of Legs and Home Planet and then export these details into one of the 2 formats, depending on user’s choice - “plain text” or “PDF”.

######Part B
Make the code extensible so that it is easy to ‘plug in’ a new format called ‘foobar’ without making changes to the application code

####How to include new export formats
 - Under the formats directory, make a new script - format_<format_name>.rb
 - Inside the script file, create a module by the name of Format<format_name>
 - Define a new method - export_details_as_<format_name>