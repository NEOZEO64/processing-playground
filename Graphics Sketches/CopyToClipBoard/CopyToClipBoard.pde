import java.awt.*;
import java.awt.datatransfer.*;

String textToCopy = "hello, world!";

void copyToClipBoard(String copyText) {
  StringSelection data = new StringSelection(copyText);
  Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
  clipboard.setContents(data, data);
}

String getClipboardText() {
  Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
  DataFlavor flavor = DataFlavor.stringFlavor;
  if (clipboard.isDataFlavorAvailable(flavor)) {
    try {
      String text = (String) clipboard.getData(flavor);
      return text;
    } catch (UnsupportedFlavorException e) {
      println(e);
      return "error";
    } catch (IOException e) {
      println(e);
      return "error";
    }
  }
  return "no text copied";
}

boolean collideRect(int x, int y, int w, int h, int pX, int pY) {
  return x<=pX && pX<=x+w && y<=pY && pY<=y+h;
}

void setup() {
  size(300,120);
  
  textSize(20);
  textAlign(CENTER);
  noStroke();
}

void draw() {
  background(255);
  
  if (collideRect(0,0,width,40,mouseX, mouseY)) {
    if (mousePressed) {
      copyToClipBoard(textToCopy);
      fill(180);
      rect(0,0,width,60);
      fill(0);
      text("Copied",width/2, 40);
    } else {
      fill(200);
      rect(0,0,width,60);
      fill(0);
      text("Copy",width/2, 40);
    }
    
    
  }
  fill(0);
  text(textToCopy,width/2,20);
  
  text("Copied text: " + getClipboardText(), width/2, 100);
}
