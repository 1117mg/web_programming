package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

@WebFilter(urlPatterns = "/event",
			initParams = {@WebInitParam(name = "charset", value = "UTF-8")})
public class SecondFilter implements Filter {

    public SecondFilter() {
    	System.out.println("SecondFilter 생성자");
    }
    
    public void init(FilterConfig fConfig) throws ServletException {
    	System.out.println("SecondFilter init");
	}
    
	public void destroy() {
		System.out.println("SecondFilter destroy");
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("SecondFilter pre-loading");
		chain.doFilter(request, response);
		System.out.println("SecondFilter post-loading");
	}

}
