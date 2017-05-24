package pl.sdacademy;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

public class BoldTag extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {
        StringWriter stringWriter = new StringWriter();
        getJspBody().invoke(stringWriter);
        getJspContext().getOut().write("<b>" + stringWriter + "</b>");
    }

}