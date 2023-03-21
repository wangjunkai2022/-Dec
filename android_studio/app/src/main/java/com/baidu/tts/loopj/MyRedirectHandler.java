package com.baidu.tts.loopj;

import com.apk.Cgoto;
import com.qq.e.comm.adevent.AdEventType;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.client.CircularRedirectException;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.impl.client.RedirectLocations;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes8.dex */
public class MyRedirectHandler extends DefaultRedirectHandler {
    public static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    public final boolean enableRedirects;

    public MyRedirectHandler(boolean z) {
        this.enableRedirects = z;
    }

    public URI getLocationURI(HttpResponse httpResponse, HttpContext httpContext) throws ProtocolException {
        URI rewriteURI;
        if (httpResponse != null) {
            Header firstHeader = httpResponse.getFirstHeader("location");
            if (firstHeader != null) {
                String replaceAll = firstHeader.getValue().replaceAll(" ", "%20");
                try {
                    URI uri = new URI(replaceAll);
                    HttpParams params = httpResponse.getParams();
                    if (!uri.isAbsolute()) {
                        if (!params.isParameterTrue("http.protocol.reject-relative-redirect")) {
                            HttpHost httpHost = (HttpHost) httpContext.getAttribute("http.target_host");
                            if (httpHost != null) {
                                try {
                                    uri = URIUtils.resolve(URIUtils.rewriteURI(new URI(((HttpRequest) httpContext.getAttribute("http.request")).getRequestLine().getUri()), httpHost, true), uri);
                                } catch (URISyntaxException e) {
                                    throw new ProtocolException(e.getMessage(), e);
                                }
                            } else {
                                throw new IllegalStateException("Target host not available in the HTTP context");
                            }
                        } else {
                            throw new ProtocolException("Relative redirect location '" + uri + "' not allowed");
                        }
                    }
                    if (params.isParameterFalse("http.protocol.allow-circular-redirects")) {
                        RedirectLocations redirectLocations = (RedirectLocations) httpContext.getAttribute(REDIRECT_LOCATIONS);
                        if (redirectLocations == null) {
                            redirectLocations = new RedirectLocations();
                            httpContext.setAttribute(REDIRECT_LOCATIONS, redirectLocations);
                        }
                        if (uri.getFragment() != null) {
                            try {
                                rewriteURI = URIUtils.rewriteURI(uri, new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme()), true);
                            } catch (URISyntaxException e2) {
                                throw new ProtocolException(e2.getMessage(), e2);
                            }
                        } else {
                            rewriteURI = uri;
                        }
                        if (!redirectLocations.contains(rewriteURI)) {
                            redirectLocations.add(rewriteURI);
                        } else {
                            throw new CircularRedirectException("Circular redirect to '" + rewriteURI + "'");
                        }
                    }
                    return uri;
                } catch (URISyntaxException e3) {
                    throw new ProtocolException(Cgoto.m989case("Invalid redirect URI: ", replaceAll), e3);
                }
            }
            StringBuilder m1016super = Cgoto.m1016super("Received redirect response ");
            m1016super.append(httpResponse.getStatusLine());
            m1016super.append(" but no location header");
            throw new ProtocolException(m1016super.toString());
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }

    public boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
        if (this.enableRedirects) {
            if (httpResponse != null) {
                int statusCode = httpResponse.getStatusLine().getStatusCode();
                if (statusCode != 307) {
                    switch (statusCode) {
                        case 301:
                        case AdEventType.VIDEO_PAGE_CLOSE /* 302 */:
                        case AdEventType.LEFT_APPLICATION /* 303 */:
                            return true;
                        default:
                            return false;
                    }
                }
                return true;
            }
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        return false;
    }
}
