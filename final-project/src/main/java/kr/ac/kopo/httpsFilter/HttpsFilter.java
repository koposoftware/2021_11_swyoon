package kr.ac.kopo.httpsFilter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HttpsFilter implements Filter {

    public HttpsFilter() {
    }


    @Override
    public void destroy() {
    }


    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpsRequestWrapper httpsRequest = new HttpsRequestWrapper((HttpServletRequest) request);

        httpsRequest.setResponse((HttpServletResponse) response);

        chain.doFilter(httpsRequest, response);

    }


    @Override
    public void init(FilterConfig arg0) throws ServletException {
    }

}
