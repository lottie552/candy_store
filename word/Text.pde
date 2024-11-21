class Text {

    Word [] words;
    Letter [] letters;

    Text (String txt) {
        txtFileName= txt;
        //load in text from text.txt
    String [] storelines = loadStrings("text.txt");
    //store all text in one big string
    String text = join(storelines, " ");
        for(int i = 0; i< letters.length; i++) {
    letters[i] = new Letter (myWord.charAt(i), random(20, width-20), random(20,height-20));
    }
    
    }

}
