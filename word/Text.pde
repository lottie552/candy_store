class text {

    Word [] words;
    Letter [] letters;

    public text (String txt) {
        txtFileName= txt;
        
        for(int i = 0; i< letters.length; i++) {
      letters[i] = new Letter (myWord.charAt(i), random(20, width-20), random(20,height-20));
    }
    }

    void loadText(){
        //load in text from text.txt
    String [] storelines = loadStrings("text.txt");
    //store all text in one big string
    String text = join(storelines, " ");
    }

}
