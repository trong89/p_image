# music learning should be free

library(shiny)
library(dplyr)

ui <- fluidPage(
  titlePanel("Free the Keys - by TR"),
  tagList(radioButtons("C1",
                       "Choice:",
                        c("L" = "Left",
                          "R" = "Right")),
          actionButton("SH","Open To Start shuffles"),
          uiOutput("VGa")
          ))

server <- function(input, output, session){

  A <- list()
  B <- list()
  C <- list()
  D <- list()
  
  NOTES <- c("A", "B" , "C" , "D" , "E" , "F" , "G")
  
  AR <- reactive(input$C1)

  for (i in (1:length(NOTES))) {
    
    if (isolate(AR()) == "Left") {
    A[[i]] <- img(src = paste0("https://raw.githubusercontent.com/trong89/p_image/main/",
                               NOTES[[i]],".png"), 
                  height = "300px")
    B[[i]]<- radioButtons(paste0("choice" , NOTES[[i]]), "Notes",
                          c("A" = "A",
                            "B" = "B",
                            "C" = "C",
                            "D" = "D",
                            "E" = "E",
                            "F" = "F",
                            "G" = "G"))
    C[[i]] <- actionButton( paste0("sub", NOTES[[i]]), "Submit")
    D[[i]] <- textOutput( paste0("txt", NOTES[[i]])) 
    }
    
    else if (isolate(AR()) == "Right") {
      A[[i]] <- img(src = paste0("https://raw.githubusercontent.com/trong89/p_image/main/","R",
                                 NOTES[[i]],".png"),
                    height = "300px")
      B[[i]]<- radioButtons(paste0("choice" , NOTES[[i]]), "Notes",
                            c("A" = "A",
                              "B" = "B",
                              "C" = "C",
                              "D" = "D",
                              "E" = "E",
                              "F" = "F",
                              "G" = "G"))
      C[[i]] <- actionButton( paste0("sub", NOTES[[i]]), "Submit")
      D[[i]] <- textOutput( paste0("txt", NOTES[[i]]))
    }
    }
  
  
  observeEvent(input$SH,{
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
    if (input$choiceA == "A" & isolate(AR()) == "Left")
      {print("excellent")}
    else if (input$choiceA == "B")
      {print (Global_Params)} 
    else if (input$choiceA == "C") 
      {print (Global_Params)} 
    else if (input$choiceA == "D") 
      {print (Global_Params)} 
    else if (input$choiceA == "E") 
      {print (Global_Params)} 
    else if (input$choiceA == "F" & isolate(AR()) == "Right") 
    {print ("Free Music!")} 
    else if (input$choiceA == "G") 
      {print (Global_Params)}
    }) 
    })
    
  # START B
  observeEvent(input$subB, {
    output$txtB <- renderText({
      if (input$choiceB == "A")
      {print(Global_Params)}
      else if (input$choiceB == "B" & isolate(AR()) == "Left")
      {print ("Yep")} 
      else if (input$choiceB == "C") 
      {print (Global_Params)} 
      else if (input$choiceB == "D") 
      {print (Global_Params)} 
      else if (input$choiceB == "E") 
      {print (Global_Params)} 
      else if (input$choiceB == "F") 
      {print (Global_Params)} 
      else if (input$choiceB == "G" & isolate(AR()) == "Right") 
      {print ("Yah")} 
    }) }) 
  # START C
  observeEvent(input$subC, {
    output$txtC <- renderText({
      if (input$choiceC == "A" & isolate(AR()) == "Right")
      {print ("Great") }
      else if (input$choiceC == "B") 
      {print (Global_Params)} 
      else if (input$choiceC == "C" & isolate(AR()) == "Left") 
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
      else if (input$choiceD == "B" & isolate(AR()) == "Right") 
      {print ("Burps")} 
      else if (input$choiceD == "C") 
      {print (Global_Params)} 
      else if (input$choiceD == "D" & isolate(AR()) == "Left") 
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
      else if (input$choiceE == "C" & isolate(AR()) == "Right") 
      {print ("Surrender to the immaturity")} 
      else if (input$choiceE == "D") 
      {print (Global_Params)} 
      else if (input$choiceE == "E" & isolate(AR()) == "Left") 
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
      else if (input$choiceF == "D" & isolate(AR()) == "Right") 
      {print ("Free Pizza!") } 
      else if (input$choiceF == "E") 
      {print (Global_Params)} 
      else if (input$choiceF == "F" & isolate(AR()) == "Left") 
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
      else if (input$choiceG == "E" & isolate(AR()) == "Right") 
      {print ("5 dollar tiramisu")} 
      else if (input$choiceG == "F") 
      {print (Global_Params)} 
      else if (input$choiceG == "G" & isolate(AR()) == "Left") 
      {print ("what kind of tiramisu costs 5 dollars?")} 
    })
  })
  }

 
shinyApp(ui, server)
