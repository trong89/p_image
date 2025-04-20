# pathway which seems to work better is github, load website then add in the image there
# make sure to take the raw path cheap cheap cheap

library(shiny)

ui <- fluidPage(
  titlePanel("The left hand - by TR"),
  
  tagList(
    # start A
  img(src = "https://raw.githubusercontent.com/trong89/p_image/main/A.png", height = "300px"),
  radioButtons("choiceA", "Notes",
                c("A" = "A",
                "B" = "B",
                "C" = "C",
                "D" = "D",
                "E" = "E",
                "F" = "F",
                "G" ="G")),
  actionButton("subA", "Sumbit"),
  textOutput("txtA"),
  # start B
  img(src = "https://raw.githubusercontent.com/trong89/p_image/main/B.png", height = "300px"),
  radioButtons("choiceB", "Notes",
               c("A" = "A",
                 "B" = "B",
                 "C" = "C",
                 "D" = "D",
                 "E" = "E",
                 "F" = "F",
                 "G" ="G")),
  actionButton("subB", "Sumbit this Note"),
  textOutput("txtB"),
  
  # start C
  img(src = "https://raw.githubusercontent.com/trong89/p_image/main/C.png", height = "300px"),
  radioButtons("choiceC", "Notes",
               c("A" = "A",
                 "B" = "B",
                 "C" = "C",
                 "D" = "D",
                 "E" = "E",
                 "F" = "F",
                 "G" ="G")),
  actionButton("subC", "Sumbit this Note"),
  textOutput("txtC"),
  
  # start D
  img(src = "https://raw.githubusercontent.com/trong89/p_image/main/D.png", height = "300px"),
  radioButtons("choiceD", "Notes",
               c("A" = "A",
                 "B" = "B",
                 "C" = "C",
                 "D" = "D",
                 "E" = "E",
                 "F" = "F",
                 "G" ="G")),
  actionButton("subD", "Sumbit this Note"),
  textOutput("txtD"),
  
  # start E
  img(src = "https://raw.githubusercontent.com/trong89/p_image/main/E.png", height = "300px"),
  radioButtons("choiceE", "Notes",
               c("A" = "A",
                 "B" = "B",
                 "C" = "C",
                 "D" = "D",
                 "E" = "E",
                 "F" = "F",
                 "G" ="G")),
  actionButton("subE", "Sumbit this Note"),
  textOutput("txtE"),
  
  # start F
  img(src = "https://raw.githubusercontent.com/trong89/p_image/main/F.png", height = "300px"),
  radioButtons("choiceF", "Notes",
               c("A" = "A",
                 "B" = "B",
                 "C" = "C",
                 "D" = "D",
                 "E" = "E",
                 "F" = "F",
                 "G" = "G")),
  actionButton("subF", "Sumbit this Note"),
  textOutput("txtF"),
  
  # start G
  img(src = "https://raw.githubusercontent.com/trong89/p_image/main/G.png", height = "300px"),
  radioButtons("choiceG", "Notes",
               c("A" = "A",
                 "B" = "B",
                 "C" = "C",
                 "D" = "D",
                 "E" = "E",
                 "F" = "F",
                 "G" ="G")),
  actionButton("subG", "Sumbit this Note"),
  textOutput("txtG")
  
  )
)

server <- function(input, output, session){
  # START A
  observeEvent(input$subA, {
    output$txtA <- renderText({
    if (input$choiceA == "A")
      {print("excellent")}
    else if (input$choiceA == "B") 
      {print ("try again")} 
    else if (input$choiceA == "C") 
      {print ("try again")} 
    else if (input$choiceA == "D") 
      {print ("try again")} 
    else if (input$choiceA == "E") 
      {print ("try again")} 
    else if (input$choiceA == "F") 
      {print ("try again")} 
    else if (input$choiceA == "G") 
      {print ("try again")} 
    }) }) 
  # START B
  observeEvent(input$subB, {
    output$txtB <- renderText({
      if (input$choiceB == "A")
      {print("try again")}
      else if (input$choiceB == "B") 
      {print ("you got it")} 
      else if (input$choiceB == "C") 
      {print ("try again")} 
      else if (input$choiceB == "D") 
      {print ("try again")} 
      else if (input$choiceB == "E") 
      {print ("try again")} 
      else if (input$choiceB == "F") 
      {print ("try again")} 
      else if (input$choiceB == "G") 
      {print ("try again")} 
    }) }) 
  # START C
  observeEvent(input$subC, {
    output$txtC <- renderText({
      if (input$choiceC == "A")
      {print("try again")}
      else if (input$choiceC == "B") 
      {print ("try again")} 
      else if (input$choiceC == "C") 
      {print ("awesome")} 
      else if (input$choiceC == "D") 
      {print ("try again")} 
      else if (input$choiceC == "E") 
      {print ("try again")} 
      else if (input$choiceC == "F") 
      {print ("try again")} 
      else if (input$choiceC == "G") 
      {print ("try again")} 
    }) }) 
  # START D
  observeEvent(input$subD, {
    output$txtD <- renderText({
      if (input$choiceD == "A")
      {print("try again")}
      else if (input$choiceD == "B") 
      {print ("try again")} 
      else if (input$choiceD == "C") 
      {print ("try again")} 
      else if (input$choiceD == "D") 
      {print ("what a great journey")} 
      else if (input$choiceD == "E") 
      {print ("try again")} 
      else if (input$choiceD == "F") 
      {print ("try again")} 
      else if (input$choiceD == "G") 
      {print ("try again")} 
    }) }) 
  # START E
  observeEvent(input$subE, {
    output$txtE <- renderText({
      if (input$choiceE == "A")
      {print("try again")}
      else if (input$choiceE == "B") 
      {print ("try again")} 
      else if (input$choiceE == "C") 
      {print ("try again")} 
      else if (input$choiceE == "D") 
      {print ("try again")} 
      else if (input$choiceE == "E") 
      {print ("chaos journey = fun")} 
      else if (input$choiceE == "F") 
      {print ("try again")} 
      else if (input$choiceE == "G") 
      {print ("try again")} 
    }) }) 
  
  observeEvent(input$subF, {
    output$txtF <- renderText({
      if (input$choiceF == "A")
      {print("try again")}
      else if (input$choiceF == "B") 
      {print ("try again")} 
      else if (input$choiceF == "C") 
      {print ("try again")} 
      else if (input$choiceF == "D") 
      {print ("try again")} 
      else if (input$choiceF == "E") 
      {print ("try again")} 
      else if (input$choiceF == "F") 
      {print ("this is the different one!")} 
      else if (input$choiceF == "G") 
      {print ("try again")} 
    }) })
  
  # note G
  
  observeEvent(input$subG, {
    output$txtG <- renderText({
      if (input$choiceG == "A")
      {print("try again")}
      else if (input$choiceG == "B") 
      {print ("try again")} 
      else if (input$choiceG == "C") 
      {print ("try again")} 
      else if (input$choiceG == "D") 
      {print ("try again")} 
      else if (input$choiceG == "E") 
      {print ("try again")} 
      else if (input$choiceG == "F") 
      {print ("this is the different one!")} 
      else if (input$choiceG == "G") 
      {print ("try again")} 
    }) }) 
  }


shinyApp(ui, server)
