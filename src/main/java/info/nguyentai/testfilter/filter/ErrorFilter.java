package info.nguyentai.testfilter.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.log4j.Logger;

import info.nguyentai.testfilter.common.Constants;

public class ErrorFilter implements Filter{
	
	private static final Logger logger = Logger.getLogger(ErrorFilter.class);

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		logger.info("================================== SAMPLE FILTER INITIATION ==================================");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		try {
			logger.info("================================== SAMPLE FILTER FILTERRING ==================================");
			logger.info("=Current locale is: " + request.getLocale());
			chain.doFilter(request, response);
		} catch (Exception e) {
			request.setAttribute(Constants.ERROR_MESSAGE, e);
			request.getRequestDispatcher("WEB-INF/views/error.jsp").forward(request, response);
		}
		
	}

	@Override
	public void destroy() {
		logger.info("================================== SAMPLE FILTER DESTRUCTION ==================================");
	}

}
