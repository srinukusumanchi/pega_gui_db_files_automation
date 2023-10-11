@ValidatePDF

  Feature:  Validate a PDF file with  export
    Scenario: Open  and read and validate pdf file content
      Given  As user Navigate to the  Site "http://www.pdf995.com/samples/"
      And User click on PDF link and navigate to pdf contents
      When As user  select PDF  and read content from 1 page
      Then Read the  data from 2 page  and dispaly in the report