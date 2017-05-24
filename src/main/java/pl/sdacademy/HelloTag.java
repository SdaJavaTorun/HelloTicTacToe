package pl.sdacademy;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class HelloTag extends SimpleTagSupport {

    private String who;

    public void setWho(String who) {
        this.who = who;
    }

    @Override
    public void doTag() throws JspException, IOException {
        getJspContext().getOut().write("Hello " + who);
    }

}