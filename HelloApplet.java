import java.applet.Applet;
import java.awt.Graphics;

// Every applet must extend the Applet class
public class HelloApplet extends Applet {
    
    // The paint method is used to display graphics and text
    @Override
    public void paint(Graphics g) {
        // Draw the string "Hello World!" at the X, Y coordinates (50, 25)
        g.drawString("Hello World!", 50, 25);
    }
}
