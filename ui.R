#setwd("C:/course/open_courses/developing data products/project")
library(shiny)

#BMI = ( Weight in Pounds / ( Height in inches x Height in inches ) ) x 703
shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("BMI Caculator"),
        
        sidebarPanel(
            numericInput('Weight', 'Weight  lbs', 150, min = 20, max = 500, step = 5),
            numericInput('Height', 'Height  inch', 70, min = 5, max = 100, step = 1),
            submitButton('Submit'),
            h3("                   "),
            h3("                   "),
            h3("BMI Explanation:"),
            p("The body mass index (BMI), is a measure of relative weight based on an individual's mass and height. Its mathematical formula is {Weight/Height^2)*703}. If your BMI <= 18.5, you are underweight; if your BMI >= 25, you are overweight; if your BMI is in between, you are normal. 
              
              To caculate your BMI, simply put your weight in pounds and height in inches in the two input boxes above.") 
        ),
        
        
        mainPanel(
            h3('Results of Your BMI'),
            h4('Your Weight entered in Pounds:'),
            verbatimTextOutput("WeightValue"),
            h4('Your Height entered in Inches:'),
            verbatimTextOutput("HeightValue"),
            h4('Your BMI is:'),
            verbatimTextOutput("BMI"),
            h4('Your BMI category is:'),
            verbatimTextOutput("BMI_message")
        )
    )
)









