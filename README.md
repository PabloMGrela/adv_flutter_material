# Advanced Flutter material design library

Develop to make your life easier.

## Getting Started

//TODO

# Documentation

## Buttons

Using AdvButton you can easily create a material button. 

AdvButton(text: "Button text", buttonType: ButtonType.PRIMARY, onPressed: (){});

Fields:
  -text: pass the text you want to use in the button.
  -buttonType: Yoy can choose between ButtonType.PRIMARY or ButtonType.SECONDARY.
  -onPressed: function to call when users tap the button.
 
//TODO add loader state
 
## CardView

Using AdvCardView you'll create a Card with image obtained from network, title and subtitle.

AdvCardView(title: "Title", subtitle: "subtitle", imageUrl: "mockUrl.png", onPressed: (){});

Fields:
  -title: Title of the card.
  -subtitle: Subtitle of the card. Limited to one row, if text is bigger it applies an ellipsize.
  -imageUrl: Url to load the image.
  -onPressed: function to call when users tap the card.
  
## Input fields

Using AdvInputText you'll be able to create an input text quickly.

AdvInputText(hint: "Hint", inputType: InputType.NUMBER);

Fields:
  -hint: the hint for the input text field.
  -inputType:
    +NUMBER
    +MAIL
    +TEXT
    +PASSWORD: if you use PASSWORD type, the toggle password feature will be enabled :)
    
## Texts

Using AdvText you'll standarize your texts styles among your app.

AdvText(text: "Hello World", textStyle: AdvTextStyle.HEADING1);

Fields:
  -text
  -textStyle
    +HEADING1
    +HEADING2
    +TITLE
    +BODY
    +BODY_BOLD
    +CAPTION
   
