import java.applet.Applet;
import java.awt.Graphics;

public class HelloApplet extends Applet {
    @Override
    public void paint(Graphics g) {
        g.drawString("Hello World!", 50, 25);
    }
}
