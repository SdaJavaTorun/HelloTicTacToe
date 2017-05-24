package pl.sdacademy;

import org.apache.log4j.Logger;

import javax.servlet.*;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;

public class LogFilter implements Filter {

    final static Logger logger = Logger.getLogger(LogFilter.class);

    public void init(FilterConfig config)
            throws ServletException {
    }

    public void doFilter(ServletRequest request,
                         ServletResponse response,
                         FilterChain chain)
            throws java.io.IOException, ServletException {

//        logger.error("IP " + ipAddress + ", Time " + new Date().toString());

        chain.doFilter(request, response);
    }

    public void destroy() {

    }
}