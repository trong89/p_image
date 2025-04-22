# music learning should be free

library(shiny)
library(dplyr)

NOTES <- c("A", "B" , "C" , "D" , "E" , "F" , "G" ,
           "RA", "RB", "RC", "RD", "RE", "RF", "RG")

A <- list()
B <- list()
C <- list()
D <- list()

for (i in (1:length(NOTES))) {
A[[i]] <- img(src = paste0("https://raw.githubusercontent.com/trong89/p_image/main/",NOTES[[i]],".png"), 
              height = "300px")
B[[i]]<- radioButtons(paste0("choice", NOTES[[i]]), "Notes",
                  c("A" = "A",
                    "B" = "B",
                    "C" = "C",
                    "D" = "D",
                    "E" = "E",
                    "F" = "F",
                    "G" = "G"))
C[[i]] <- actionButton( paste0("sub",NOTES[[i]]), "Submit")
D[[i]] <- textOutput( paste0("txt",NOTES[[i]])) 
}


ui <- fluidPage(
  titlePanel("The free Keys - by TR"),
  tagList(actionButton("SHL","Open To Start left shuffles"),
          actionButton("SHR", "Open To Start right shuffles"),
          uiOutput("VGa"),
          uiOutput("VGb"))

  )

server <- function(input, output, session){
  
  observeEvent(input$SHL,{
    TINATEST <- sample(1:7)
    
    A1 <- TINATEST[[1]]
    A2 <- TINATEST[[2]]
    A3 <- TINATEST[[3]]
    A4 <- TINATEST[[4]]
    A5 <- TINATEST[[5]]
    A6 <- TINATEST[[6]]
    A7 <- TINATEST[[7]]
    
  output$VGa <- renderUI({
      tagList(
      A[[A1]],B[[A1]],C[[A1]],D[[A1]],
      A[[A2]],B[[A2]],C[[A2]],D[[A2]],
      A[[A3]],B[[A3]],C[[A3]],D[[A3]],
      A[[A4]],B[[A4]],C[[A4]],D[[A4]],
      A[[A5]],B[[A5]],C[[A5]],D[[A5]],
      A[[A6]],B[[A6]],C[[A6]],D[[A6]],
      A[[A7]],B[[A7]],C[[A7]],D[[A7]])
    })
  })
  
  
  Global_Params <- "try again"
  
  observeEvent(input$subA, {
    output$txtA <- renderText({
    if (input$choiceA == "A")
      {print("excellent")}
    else if (input$choiceA == "B") 
      {print (Global_Params)} 
    else if (input$choiceA == "C") 
      {print (Global_Params)} 
    else if (input$choiceA == "D") 
      {print (Global_Params)} 
    else if (input$choiceA == "E") 
      {print (Global_Params)} 
    else if (input$choiceA == "F") 
      {print (Global_Params)} 
    else if (input$choiceA == "G") 
      {print (Global_Params)} 
    }) 
    }) 
  # START B
  observeEvent(input$subB, {
    output$txtB <- renderText({
      if (input$choiceB == "A")
      {print(Global_Params)}
      else if (input$choiceB == "B") 
      {print ("Yep")} 
      else if (input$choiceB == "C") 
      {print (Global_Params)} 
      else if (input$choiceB == "D") 
      {print (Global_Params)} 
      else if (input$choiceB == "E") 
      {print (Global_Params)} 
      else if (input$choiceB == "F") 
      {print (Global_Params)} 
      else if (input$choiceB == "G") 
      {print (Global_Params)} 
    }) }) 
  # START C
  observeEvent(input$subC, {
    output$txtC <- renderText({
      if (input$choiceC == "A")
      {print(Global_Params)}
      else if (input$choiceC == "B") 
      {print (Global_Params)} 
      else if (input$choiceC == "C") 
      {print ("Yay")} 
      else if (input$choiceC == "D") 
      {print (Global_Params)} 
      else if (input$choiceC == "E") 
      {print (Global_Params)} 
      else if (input$choiceC == "F") 
      {print (Global_Params)} 
      else if (input$choiceC == "G") 
      {print (Global_Params)} 
    }) }) 
  # START D
  observeEvent(input$subD, {
    output$txtD <- renderText({
      if (input$choiceD == "A")
      {print(Global_Params)}
      else if (input$choiceD == "B") 
      {print (Global_Params)} 
      else if (input$choiceD == "C") 
      {print (Global_Params)} 
      else if (input$choiceD == "D") 
      {print ("what a great journey")} 
      else if (input$choiceD == "E") 
      {print (Global_Params)} 
      else if (input$choiceD == "F") 
      {print (Global_Params)} 
      else if (input$choiceD == "G") 
      {print (Global_Params)} 
    }) }) 
  # START E
  observeEvent(input$subE, {
    output$txtE <- renderText({
      if (input$choiceE == "A")
      {print(Global_Params)}
      else if (input$choiceE == "B") 
      {print (Global_Params)} 
      else if (input$choiceE == "C") 
      {print (Global_Params)} 
      else if (input$choiceE == "D") 
      {print (Global_Params)} 
      else if (input$choiceE == "E") 
      {print ("Hoorah")} 
      else if (input$choiceE == "F") 
      {print (Global_Params)} 
      else if (input$choiceE == "G") 
      {print (Global_Params)} 
    }) }) 
  
  observeEvent(input$subF, {
    output$txtF <- renderText({
      if (input$choiceF == "A")
      {print(Global_Params)}
      else if (input$choiceF == "B") 
      {print (Global_Params)} 
      else if (input$choiceF == "C") 
      {print (Global_Params)} 
      else if (input$choiceF == "D") 
      {print (Global_Params)} 
      else if (input$choiceF == "E") 
      {print (Global_Params)} 
      else if (input$choiceF == "F") 
      {print ("Uh-Huh")} 
      else if (input$choiceF == "G") 
      {print (Global_Params)} 
    }) })
  # note G
  observeEvent(input$subG, {
    output$txtG <- renderText({
      if (input$choiceG == "A")
      {print(Global_Params)}
      else if (input$choiceG == "B") 
      {print (Global_Params)} 
      else if (input$choiceG == "C") 
      {print (Global_Params)} 
      else if (input$choiceG == "D") 
      {print (Global_Params)} 
      else if (input$choiceG == "E") 
      {print (Global_Params)} 
      else if (input$choiceG == "F") 
      {print (Global_Params)} 
      else if (input$choiceG == "G") 
      {print ("Correct")} 
    })
    })
  
  observeEvent(input$SHR,{
    TINATEST2 <- sample(8:14)
    
    A8 <- TINATEST2[[1]]
    A9 <- TINATEST2[[2]]
    A10 <- TINATEST2[[3]]
    A11 <- TINATEST2[[4]]
    A12 <- TINATEST2[[5]]
    A13 <- TINATEST2[[6]]
    A14 <- TINATEST2[[7]]
    
    output$VGb <- renderUI({
      tagList(
        A[[A8]],B[[A8]],C[[A8]],D[[A8]],
        A[[A9]],B[[A9]],C[[A9]],D[[A9]],
        A[[A10]],B[[A10]],C[[A10]],D[[A10]],
        A[[A11]],B[[A11]],C[[A11]],D[[A11]],
        A[[A12]],B[[A12]],C[[A12]],D[[A12]],
        A[[A13]],B[[A13]],C[[A13]],D[[A13]],
        A[[A14]],B[[A14]],C[[A14]],D[[A14]])
    })
  })
  
  
  Global_Params <- "try again"
  observeEvent(input$subRA, {
    output$txtRA <- renderText({
      if (input$choiceRA == "A")
      {print("excellent")}
      else if (input$choiceRA == "B") 
      {print (Global_Params)} 
      else if (input$choiceRA == "C") 
      {print (Global_Params)} 
      else if (input$choiceRA == "D") 
      {print (Global_Params)} 
      else if (input$choiceRA == "E") 
      {print (Global_Params)} 
      else if (input$choiceRA == "F") 
      {print (Global_Params)} 
      else if (input$choiceRA == "G") 
      {print (Global_Params)} 
    }) }) 
  # START B
  observeEvent(input$subRB, {
    output$txtRB <- renderText({
      if (input$choiceRB == "A")
      {print(Global_Params)}
      else if (input$choiceRB == "B") 
      {print ("Yep")} 
      else if (input$choiceRB == "C") 
      {print (Global_Params)} 
      else if (input$choiceRB == "D") 
      {print (Global_Params)} 
      else if (input$choiceRB == "E") 
      {print (Global_Params)} 
      else if (input$choiceRB == "F") 
      {print (Global_Params)} 
      else if (input$choiceRB == "G") 
      {print (Global_Params)} 
    }) }) 
  # START C
  observeEvent(input$subRC, {
    output$txtRC <- renderText({
      if (input$choiceRC == "A")
      {print(Global_Params)}
      else if (input$choiceRC == "B") 
      {print (Global_Params)} 
      else if (input$choiceRC == "C") 
      {print ("Yay")} 
      else if (input$choiceRC == "D") 
      {print (Global_Params)} 
      else if (input$choiceRC == "E") 
      {print (Global_Params)} 
      else if (input$choiceRC == "F") 
      {print (Global_Params)} 
      else if (input$choiceRC == "G") 
      {print (Global_Params)} 
    }) }) 
  # START D
  observeEvent(input$subRD, {
    output$txtRD <- renderText({
      if (input$choiceRD == "A")
      {print(Global_Params)}
      else if (input$choiceRD == "B") 
      {print (Global_Params)} 
      else if (input$choiceRD == "C") 
      {print (Global_Params)} 
      else if (input$choiceRD == "D") 
      {print ("what a great journey")} 
      else if (input$choiceRD == "E") 
      {print (Global_Params)} 
      else if (input$choiceRD == "F") 
      {print (Global_Params)} 
      else if (input$choiceRD == "G") 
      {print (Global_Params)} 
    }) }) 
  # START E
  observeEvent(input$subRE, {
    output$txtRE <- renderText({
      if (input$choiceRE == "A")
      {print(Global_Params)}
      else if (input$choiceRE == "B") 
      {print (Global_Params)} 
      else if (input$choiceRE == "C") 
      {print (Global_Params)} 
      else if (input$choiceRE == "D") 
      {print (Global_Params)} 
      else if (input$choiceRE == "E") 
      {print ("Hoorah")} 
      else if (input$choiceRE == "F") 
      {print (Global_Params)} 
      else if (input$choiceRE == "G") 
      {print (Global_Params)} 
    }) }) 
  
  observeEvent(input$subRF, {
    output$txtRF <- renderText({
      if (input$choiceRF == "A")
      {print(Global_Params)}
      else if (input$choiceRF == "B") 
      {print (Global_Params)} 
      else if (input$choiceRF == "C") 
      {print (Global_Params)} 
      else if (input$choiceRF == "D") 
      {print (Global_Params)} 
      else if (input$choiceRF == "E") 
      {print (Global_Params)} 
      else if (input$choiceRF == "F") 
      {print ("Uh-Huh")} 
      else if (input$choiceRF == "G") 
      {print (Global_Params)} 
    }) })
  # note G
  observeEvent(input$subRG, {
    output$txtRG <- renderText({
      if (input$choiceRG == "A")
      {print(Global_Params)}
      else if (input$choiceRG == "B") 
      {print (Global_Params)} 
      else if (input$choiceRG == "C") 
      {print (Global_Params)} 
      else if (input$choiceRG == "D") 
      {print (Global_Params)} 
      else if (input$choiceRG == "E") 
      {print (Global_Params)} 
      else if (input$choiceRG == "F") 
      {print (Global_Params)} 
      else if (input$choiceRG == "G") 
      {print ("Correct")} 
    })
  })
  
}


shinyApp(ui, server)
