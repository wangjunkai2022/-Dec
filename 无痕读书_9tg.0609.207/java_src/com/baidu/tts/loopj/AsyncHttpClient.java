package com.baidu.tts.loopj;

import android.content.Context;
import android.os.Looper;
import androidx.exifinterface.media.ExifInterface;
import com.apk.Cgoto;
import com.baidu.tts.client.SpeechSynthesizer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.lang.reflect.Field;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.SyncBasicHttpContext;
/* loaded from: classes8.dex */
public class AsyncHttpClient {
    public static final int DEFAULT_MAX_CONNECTIONS = 10;
    public static final int DEFAULT_MAX_RETRIES = 5;
    public static final int DEFAULT_RETRY_SLEEP_TIME_MILLIS = 1500;
    public static final int DEFAULT_SOCKET_BUFFER_SIZE = 8192;
    public static final int DEFAULT_SOCKET_TIMEOUT = 10000;
    public static final String ENCODING_GZIP = "gzip";
    public static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
    public static final String HEADER_CONTENT_DISPOSITION = "Content-Disposition";
    public static final String HEADER_CONTENT_ENCODING = "Content-Encoding";
    public static final String HEADER_CONTENT_RANGE = "Content-Range";
    public static final String HEADER_CONTENT_TYPE = "Content-Type";
    public static final String LOG_TAG = "AsyncHttpClient";
    public static LogInterface log = new LogHandler();
    public final Map<String, String> clientHeaderMap;
    public int connectTimeout;
    public final DefaultHttpClient httpClient;
    public final HttpContext httpContext;
    public boolean isUrlEncodingEnabled;
    public int maxConnections;
    public final Map<Context, List<RequestHandle>> requestMap;
    public int responseTimeout;
    public ExecutorService threadPool;

    /* loaded from: classes8.dex */
    public static class InflatingEntity extends HttpEntityWrapper {
        public GZIPInputStream gzippedStream;
        public PushbackInputStream pushbackStream;
        public InputStream wrappedStream;

        public InflatingEntity(HttpEntity httpEntity) {
            super(httpEntity);
        }

        public void consumeContent() throws IOException {
            AsyncHttpClient.silentCloseInputStream(this.wrappedStream);
            AsyncHttpClient.silentCloseInputStream(this.pushbackStream);
            AsyncHttpClient.silentCloseInputStream(this.gzippedStream);
            super.consumeContent();
        }

        public InputStream getContent() throws IOException {
            this.wrappedStream = ((HttpEntityWrapper) this).wrappedEntity.getContent();
            PushbackInputStream pushbackInputStream = new PushbackInputStream(this.wrappedStream, 2);
            this.pushbackStream = pushbackInputStream;
            if (AsyncHttpClient.isInputStreamGZIPCompressed(pushbackInputStream)) {
                GZIPInputStream gZIPInputStream = new GZIPInputStream(this.pushbackStream);
                this.gzippedStream = gZIPInputStream;
                return gZIPInputStream;
            }
            return this.pushbackStream;
        }

        public long getContentLength() {
            HttpEntity httpEntity = ((HttpEntityWrapper) this).wrappedEntity;
            if (httpEntity == null) {
                return 0L;
            }
            return httpEntity.getContentLength();
        }
    }

    public AsyncHttpClient() {
        this(false, 80, 443);
    }

    private HttpEntityEnclosingRequestBase addEntityToRequestBase(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, HttpEntity httpEntity) {
        if (httpEntity != null) {
            httpEntityEnclosingRequestBase.setEntity(httpEntity);
        }
        return httpEntityEnclosingRequestBase;
    }

    public static void allowRetryExceptionClass(Class<?> cls) {
        if (cls != null) {
            RetryHandler.addClassToWhitelist(cls);
        }
    }

    public static void blockRetryExceptionClass(Class<?> cls) {
        if (cls != null) {
            RetryHandler.addClassToBlacklist(cls);
        }
    }

    public static void endEntityViaReflection(HttpEntity httpEntity) {
        if (httpEntity instanceof HttpEntityWrapper) {
            Field field = null;
            try {
                Field[] declaredFields = HttpEntityWrapper.class.getDeclaredFields();
                int length = declaredFields.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    Field field2 = declaredFields[i];
                    if (field2.getName().equals("wrappedEntity")) {
                        field = field2;
                        break;
                    }
                    i++;
                }
                if (field != null) {
                    field.setAccessible(true);
                    HttpEntity httpEntity2 = (HttpEntity) field.get(httpEntity);
                    if (httpEntity2 != null) {
                        httpEntity2.consumeContent();
                    }
                }
            } catch (Throwable th) {
                log.e(LOG_TAG, "wrappedEntity consume", th);
            }
        }
    }

    public static SchemeRegistry getDefaultSchemeRegistry(boolean z, int i, int i2) {
        SSLSocketFactory socketFactory;
        if (i < 1) {
            i = 80;
            log.d(LOG_TAG, "Invalid HTTP port number specified, defaulting to 80");
        }
        if (i2 < 1) {
            i2 = 443;
            log.d(LOG_TAG, "Invalid HTTPS port number specified, defaulting to 443");
        }
        if (z) {
            socketFactory = MySSLSocketFactory.getFixedSocketFactory();
        } else {
            socketFactory = SSLSocketFactory.getSocketFactory();
        }
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP, PlainSocketFactory.getSocketFactory(), i));
        schemeRegistry.register(new Scheme(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS, socketFactory, i2));
        return schemeRegistry;
    }

    public static String getUrlWithQueryString(boolean z, String str, RequestParams requestParams) {
        if (str == null) {
            return null;
        }
        if (z) {
            try {
                URL url = new URL(URLDecoder.decode(str, "UTF-8"));
                str = new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef()).toASCIIString();
            } catch (Exception e) {
                log.e(LOG_TAG, "getUrlWithQueryString encoding URL", e);
            }
        }
        if (requestParams != null) {
            String trim = requestParams.getParamString().trim();
            if (trim.equals("")) {
                return str;
            }
            if (trim.equals("?")) {
                return str;
            }
            StringBuilder m1016super = Cgoto.m1016super(str);
            m1016super.append(str.contains("?") ? "&" : "?");
            return Cgoto.m989case(m1016super.toString(), trim);
        }
        return str;
    }

    public static boolean isInputStreamGZIPCompressed(PushbackInputStream pushbackInputStream) throws IOException {
        if (pushbackInputStream == null) {
            return false;
        }
        byte[] bArr = new byte[2];
        int read = pushbackInputStream.read(bArr);
        pushbackInputStream.unread(bArr);
        return read == 2 && 35615 == ((bArr[0] & ExifInterface.MARKER) | ((bArr[1] << 8) & 65280));
    }

    private HttpEntity paramsToEntity(RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        if (requestParams != null) {
            try {
                return requestParams.getEntity(responseHandlerInterface);
            } catch (IOException e) {
                if (responseHandlerInterface != null) {
                    responseHandlerInterface.sendFailureMessage(0, null, null, e);
                    return null;
                }
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static void silentCloseInputStream(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                log.w(LOG_TAG, "Cannot close input stream", e);
            }
        }
    }

    public static void silentCloseOutputStream(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
                log.w(LOG_TAG, "Cannot close output stream", e);
            }
        }
    }

    public void addHeader(String str, String str2) {
        this.clientHeaderMap.put(str, str2);
    }

    public void cancelAllRequests(boolean z) {
        for (List<RequestHandle> list : this.requestMap.values()) {
            if (list != null) {
                for (RequestHandle requestHandle : list) {
                    requestHandle.cancel(z);
                }
            }
        }
        this.requestMap.clear();
    }

    public void cancelRequests(Context context, final boolean z) {
        if (context == null) {
            log.e(LOG_TAG, "Passed null Context to cancelRequests");
            return;
        }
        final List<RequestHandle> list = this.requestMap.get(context);
        this.requestMap.remove(context);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.threadPool.submit(new Runnable() { // from class: com.baidu.tts.loopj.AsyncHttpClient.4
                @Override // java.lang.Runnable
                public void run() {
                    AsyncHttpClient.this.cancelRequests(list, z);
                }
            });
            return;
        }
        cancelRequests(list, z);
    }

    public void cancelRequestsByTAG(Object obj, boolean z) {
        if (obj == null) {
            log.d(LOG_TAG, "cancelRequestsByTAG, passed TAG is null, cannot proceed");
            return;
        }
        for (List<RequestHandle> list : this.requestMap.values()) {
            if (list != null) {
                for (RequestHandle requestHandle : list) {
                    if (obj.equals(requestHandle.getTag())) {
                        requestHandle.cancel(z);
                    }
                }
            }
        }
    }

    public void clearCredentialsProvider() {
        this.httpClient.getCredentialsProvider().clear();
    }

    public ClientConnectionManager createConnectionManager(SchemeRegistry schemeRegistry, BasicHttpParams basicHttpParams) {
        return new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
    }

    public RequestHandle delete(String str, ResponseHandlerInterface responseHandlerInterface) {
        return delete((Context) null, str, responseHandlerInterface);
    }

    public RequestHandle get(String str, ResponseHandlerInterface responseHandlerInterface) {
        return get(null, str, null, responseHandlerInterface);
    }

    public int getConnectTimeout() {
        return this.connectTimeout;
    }

    public ExecutorService getDefaultThreadPool() {
        return Executors.newCachedThreadPool();
    }

    public HttpClient getHttpClient() {
        return this.httpClient;
    }

    public HttpContext getHttpContext() {
        return this.httpContext;
    }

    public LogInterface getLogInterface() {
        return log;
    }

    public int getLoggingLevel() {
        return log.getLoggingLevel();
    }

    public int getMaxConnections() {
        return this.maxConnections;
    }

    public int getResponseTimeout() {
        return this.responseTimeout;
    }

    public ExecutorService getThreadPool() {
        return this.threadPool;
    }

    public URI getURI(String str) {
        return URI.create(str).normalize();
    }

    public RequestHandle head(String str, ResponseHandlerInterface responseHandlerInterface) {
        return head(null, str, null, responseHandlerInterface);
    }

    public boolean isLoggingEnabled() {
        return log.isLoggingEnabled();
    }

    public boolean isUrlEncodingEnabled() {
        return this.isUrlEncodingEnabled;
    }

    public AsyncHttpRequest newAsyncHttpRequest(DefaultHttpClient defaultHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, String str, ResponseHandlerInterface responseHandlerInterface, Context context) {
        return new AsyncHttpRequest(defaultHttpClient, httpContext, httpUriRequest, responseHandlerInterface);
    }

    public RequestHandle patch(String str, ResponseHandlerInterface responseHandlerInterface) {
        return patch(null, str, null, responseHandlerInterface);
    }

    public RequestHandle post(String str, ResponseHandlerInterface responseHandlerInterface) {
        return post(null, str, null, responseHandlerInterface);
    }

    public RequestHandle put(String str, ResponseHandlerInterface responseHandlerInterface) {
        return put(null, str, null, responseHandlerInterface);
    }

    public void removeAllHeaders() {
        this.clientHeaderMap.clear();
    }

    public void removeHeader(String str) {
        this.clientHeaderMap.remove(str);
    }

    public RequestHandle sendRequest(DefaultHttpClient defaultHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, String str, ResponseHandlerInterface responseHandlerInterface, Context context) {
        List<RequestHandle> list;
        if (httpUriRequest != null) {
            if (responseHandlerInterface != null) {
                if (responseHandlerInterface.getUseSynchronousMode() && !responseHandlerInterface.getUsePoolThread()) {
                    throw new IllegalArgumentException("Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead.");
                }
                if (str != null) {
                    if ((httpUriRequest instanceof HttpEntityEnclosingRequestBase) && ((HttpEntityEnclosingRequestBase) httpUriRequest).getEntity() != null && httpUriRequest.containsHeader(HEADER_CONTENT_TYPE)) {
                        log.w(LOG_TAG, "Passed contentType will be ignored because HttpEntity sets content type");
                    } else {
                        httpUriRequest.setHeader(HEADER_CONTENT_TYPE, str);
                    }
                }
                responseHandlerInterface.setRequestHeaders(httpUriRequest.getAllHeaders());
                responseHandlerInterface.setRequestURI(httpUriRequest.getURI());
                AsyncHttpRequest newAsyncHttpRequest = newAsyncHttpRequest(defaultHttpClient, httpContext, httpUriRequest, str, responseHandlerInterface, context);
                this.threadPool.submit(newAsyncHttpRequest);
                RequestHandle requestHandle = new RequestHandle(newAsyncHttpRequest);
                if (context != null) {
                    synchronized (this.requestMap) {
                        list = this.requestMap.get(context);
                        if (list == null) {
                            list = Collections.synchronizedList(new LinkedList());
                            this.requestMap.put(context, list);
                        }
                    }
                    list.add(requestHandle);
                    Iterator<RequestHandle> it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next().shouldBeGarbageCollected()) {
                            it.remove();
                        }
                    }
                }
                return requestHandle;
            }
            throw new IllegalArgumentException("ResponseHandler must not be null");
        }
        throw new IllegalArgumentException("HttpUriRequest must not be null");
    }

    public void setAuthenticationPreemptive(boolean z) {
        if (z) {
            this.httpClient.addRequestInterceptor(new PreemptiveAuthorizationHttpRequestInterceptor(), 0);
        } else {
            this.httpClient.removeRequestInterceptorByClass(PreemptiveAuthorizationHttpRequestInterceptor.class);
        }
    }

    public void setBasicAuth(String str, String str2) {
        setBasicAuth(str, str2, false);
    }

    public void setConnectTimeout(int i) {
        if (i < 1000) {
            i = 10000;
        }
        this.connectTimeout = i;
        HttpParams params = this.httpClient.getParams();
        ConnManagerParams.setTimeout(params, this.connectTimeout);
        HttpConnectionParams.setConnectionTimeout(params, this.connectTimeout);
    }

    public void setCookieStore(CookieStore cookieStore) {
        this.httpContext.setAttribute("http.cookie-store", cookieStore);
    }

    public void setCredentials(AuthScope authScope, Credentials credentials) {
        if (credentials == null) {
            log.d(LOG_TAG, "Provided credentials are null, not setting");
            return;
        }
        CredentialsProvider credentialsProvider = this.httpClient.getCredentialsProvider();
        if (authScope == null) {
            authScope = AuthScope.ANY;
        }
        credentialsProvider.setCredentials(authScope, credentials);
    }

    public void setEnableRedirects(boolean z, boolean z2, boolean z3) {
        this.httpClient.getParams().setBooleanParameter("http.protocol.reject-relative-redirect", !z2);
        this.httpClient.getParams().setBooleanParameter("http.protocol.allow-circular-redirects", z3);
        this.httpClient.setRedirectHandler(new MyRedirectHandler(z));
    }

    public void setLogInterface(LogInterface logInterface) {
        if (logInterface != null) {
            log = logInterface;
        }
    }

    public void setLoggingEnabled(boolean z) {
        log.setLoggingEnabled(z);
    }

    public void setLoggingLevel(int i) {
        log.setLoggingLevel(i);
    }

    public void setMaxConnections(int i) {
        if (i < 1) {
            i = 10;
        }
        this.maxConnections = i;
        ConnManagerParams.setMaxConnectionsPerRoute(this.httpClient.getParams(), new ConnPerRouteBean(this.maxConnections));
    }

    public void setMaxRetriesAndTimeout(int i, int i2) {
        this.httpClient.setHttpRequestRetryHandler(new RetryHandler(i, i2));
    }

    public void setProxy(String str, int i) {
        this.httpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(str, i));
    }

    public void setRedirectHandler(RedirectHandler redirectHandler) {
        this.httpClient.setRedirectHandler(redirectHandler);
    }

    public void setResponseTimeout(int i) {
        if (i < 1000) {
            i = 10000;
        }
        this.responseTimeout = i;
        HttpConnectionParams.setSoTimeout(this.httpClient.getParams(), this.responseTimeout);
    }

    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.httpClient.getConnectionManager().getSchemeRegistry().register(new Scheme(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS, sSLSocketFactory, 443));
    }

    public void setThreadPool(ExecutorService executorService) {
        this.threadPool = executorService;
    }

    public void setTimeout(int i) {
        if (i < 1000) {
            i = 10000;
        }
        setConnectTimeout(i);
        setResponseTimeout(i);
    }

    public void setURLEncodingEnabled(boolean z) {
        this.isUrlEncodingEnabled = z;
    }

    public void setUserAgent(String str) {
        HttpProtocolParams.setUserAgent(this.httpClient.getParams(), str);
    }

    public AsyncHttpClient(int i) {
        this(false, i, 443);
    }

    public RequestHandle delete(Context context, String str, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, new HttpDelete(getURI(str)), null, responseHandlerInterface, context);
    }

    public RequestHandle get(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return get(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle head(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return head(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle patch(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return patch(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle post(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return post(null, str, requestParams, responseHandlerInterface);
    }

    public RequestHandle put(String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return put(null, str, requestParams, responseHandlerInterface);
    }

    public void setBasicAuth(String str, String str2, boolean z) {
        setBasicAuth(str, str2, null, z);
    }

    public AsyncHttpClient(int i, int i2) {
        this(false, i, i2);
    }

    public RequestHandle get(Context context, String str, ResponseHandlerInterface responseHandlerInterface) {
        return get(context, str, null, responseHandlerInterface);
    }

    public RequestHandle head(Context context, String str, ResponseHandlerInterface responseHandlerInterface) {
        return head(context, str, null, responseHandlerInterface);
    }

    public RequestHandle patch(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return patch(context, str, paramsToEntity(requestParams, responseHandlerInterface), null, responseHandlerInterface);
    }

    public RequestHandle post(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return post(context, str, paramsToEntity(requestParams, responseHandlerInterface), null, responseHandlerInterface);
    }

    public RequestHandle put(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return put(context, str, paramsToEntity(requestParams, responseHandlerInterface), null, responseHandlerInterface);
    }

    public void setBasicAuth(String str, String str2, AuthScope authScope) {
        setBasicAuth(str, str2, authScope, false);
    }

    public AsyncHttpClient(boolean z, int i, int i2) {
        this(getDefaultSchemeRegistry(z, i, i2));
    }

    public RequestHandle delete(Context context, String str, Header[] headerArr, ResponseHandlerInterface responseHandlerInterface) {
        HttpDelete httpDelete = new HttpDelete(getURI(str));
        if (headerArr != null) {
            httpDelete.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpDelete, null, responseHandlerInterface, context);
    }

    public RequestHandle get(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, new HttpGet(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams)), null, responseHandlerInterface, context);
    }

    public RequestHandle head(Context context, String str, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, new HttpHead(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams)), null, responseHandlerInterface, context);
    }

    public RequestHandle patch(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPatch(getURI(str)), httpEntity), str2, responseHandlerInterface, context);
    }

    public RequestHandle post(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPost(getURI(str)), httpEntity), str2, responseHandlerInterface, context);
    }

    public RequestHandle put(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPut(getURI(str)), httpEntity), str2, responseHandlerInterface, context);
    }

    public void setBasicAuth(String str, String str2, AuthScope authScope, boolean z) {
        setCredentials(authScope, new UsernamePasswordCredentials(str, str2));
        setAuthenticationPreemptive(z);
    }

    public void setEnableRedirects(boolean z, boolean z2) {
        setEnableRedirects(z, z2, true);
    }

    public void setProxy(String str, int i, String str2, String str3) {
        this.httpClient.getCredentialsProvider().setCredentials(new AuthScope(str, i), new UsernamePasswordCredentials(str2, str3));
        this.httpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(str, i));
    }

    public AsyncHttpClient(SchemeRegistry schemeRegistry) {
        this.maxConnections = 10;
        this.connectTimeout = 10000;
        this.responseTimeout = 10000;
        this.isUrlEncodingEnabled = true;
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        ConnManagerParams.setTimeout(basicHttpParams, this.connectTimeout);
        ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(this.maxConnections));
        ConnManagerParams.setMaxTotalConnections(basicHttpParams, 10);
        HttpConnectionParams.setSoTimeout(basicHttpParams, this.responseTimeout);
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, this.connectTimeout);
        HttpConnectionParams.setTcpNoDelay(basicHttpParams, true);
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        ClientConnectionManager createConnectionManager = createConnectionManager(schemeRegistry, basicHttpParams);
        Utils.asserts(createConnectionManager != null, "Custom implementation of #createConnectionManager(SchemeRegistry, BasicHttpParams) returned null");
        this.threadPool = getDefaultThreadPool();
        this.requestMap = Collections.synchronizedMap(new WeakHashMap());
        this.clientHeaderMap = new HashMap();
        this.httpContext = new SyncBasicHttpContext(new BasicHttpContext());
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(createConnectionManager, basicHttpParams);
        this.httpClient = defaultHttpClient;
        defaultHttpClient.addRequestInterceptor(new HttpRequestInterceptor() { // from class: com.baidu.tts.loopj.AsyncHttpClient.1
            public void process(HttpRequest httpRequest, HttpContext httpContext) {
                if (!httpRequest.containsHeader(AsyncHttpClient.HEADER_ACCEPT_ENCODING)) {
                    httpRequest.addHeader(AsyncHttpClient.HEADER_ACCEPT_ENCODING, AsyncHttpClient.ENCODING_GZIP);
                }
                for (String str : AsyncHttpClient.this.clientHeaderMap.keySet()) {
                    if (httpRequest.containsHeader(str)) {
                        Header firstHeader = httpRequest.getFirstHeader(str);
                        AsyncHttpClient.log.d(AsyncHttpClient.LOG_TAG, String.format("Headers were overwritten! (%s | %s) overwrites (%s | %s)", str, AsyncHttpClient.this.clientHeaderMap.get(str), firstHeader.getName(), firstHeader.getValue()));
                        httpRequest.removeHeader(firstHeader);
                    }
                    httpRequest.addHeader(str, (String) AsyncHttpClient.this.clientHeaderMap.get(str));
                }
            }
        });
        this.httpClient.addResponseInterceptor(new HttpResponseInterceptor() { // from class: com.baidu.tts.loopj.AsyncHttpClient.2
            public void process(HttpResponse httpResponse, HttpContext httpContext) {
                Header contentEncoding;
                HttpEntity entity = httpResponse.getEntity();
                if (entity == null || (contentEncoding = entity.getContentEncoding()) == null) {
                    return;
                }
                for (HeaderElement headerElement : contentEncoding.getElements()) {
                    if (headerElement.getName().equalsIgnoreCase(AsyncHttpClient.ENCODING_GZIP)) {
                        httpResponse.setEntity(new InflatingEntity(entity));
                        return;
                    }
                }
            }
        });
        this.httpClient.addRequestInterceptor(new HttpRequestInterceptor() { // from class: com.baidu.tts.loopj.AsyncHttpClient.3
            public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
                Credentials credentials;
                AuthState authState = (AuthState) httpContext.getAttribute("http.auth.target-scope");
                CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute("http.auth.credentials-provider");
                HttpHost httpHost = (HttpHost) httpContext.getAttribute("http.target_host");
                if (authState.getAuthScheme() != null || (credentials = credentialsProvider.getCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort()))) == null) {
                    return;
                }
                authState.setAuthScheme(new BasicScheme());
                authState.setCredentials(credentials);
            }
        }, 0);
        this.httpClient.setHttpRequestRetryHandler(new RetryHandler(5, 1500));
    }

    public RequestHandle get(Context context, String str, Header[] headerArr, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        HttpGet httpGet = new HttpGet(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams));
        if (headerArr != null) {
            httpGet.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpGet, null, responseHandlerInterface, context);
    }

    public RequestHandle head(Context context, String str, Header[] headerArr, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        HttpHead httpHead = new HttpHead(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams));
        if (headerArr != null) {
            httpHead.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpHead, null, responseHandlerInterface, context);
    }

    public RequestHandle patch(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        HttpEntityEnclosingRequestBase addEntityToRequestBase = addEntityToRequestBase(new HttpPatch(getURI(str)), httpEntity);
        if (headerArr != null) {
            addEntityToRequestBase.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase, str2, responseHandlerInterface, context);
    }

    public RequestHandle post(Context context, String str, Header[] headerArr, RequestParams requestParams, String str2, ResponseHandlerInterface responseHandlerInterface) {
        HttpPost httpPost = new HttpPost(getURI(str));
        if (requestParams != null) {
            httpPost.setEntity(paramsToEntity(requestParams, responseHandlerInterface));
        }
        if (headerArr != null) {
            httpPost.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpPost, str2, responseHandlerInterface, context);
    }

    public RequestHandle put(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        HttpEntityEnclosingRequestBase addEntityToRequestBase = addEntityToRequestBase(new HttpPut(getURI(str)), httpEntity);
        if (headerArr != null) {
            addEntityToRequestBase.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase, str2, responseHandlerInterface, context);
    }

    public void setEnableRedirects(boolean z) {
        setEnableRedirects(z, z, z);
    }

    public void delete(String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        sendRequest(this.httpClient, this.httpContext, new HttpDelete(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams)), null, asyncHttpResponseHandler, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelRequests(List<RequestHandle> list, boolean z) {
        if (list != null) {
            for (RequestHandle requestHandle : list) {
                requestHandle.cancel(z);
            }
        }
    }

    public RequestHandle get(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpGet(URI.create(str).normalize()), httpEntity), str2, responseHandlerInterface, context);
    }

    public RequestHandle delete(Context context, String str, Header[] headerArr, RequestParams requestParams, ResponseHandlerInterface responseHandlerInterface) {
        HttpDelete httpDelete = new HttpDelete(getUrlWithQueryString(this.isUrlEncodingEnabled, str, requestParams));
        if (headerArr != null) {
            httpDelete.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, httpDelete, null, responseHandlerInterface, context);
    }

    public RequestHandle post(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        HttpEntityEnclosingRequestBase addEntityToRequestBase = addEntityToRequestBase(new HttpPost(getURI(str)), httpEntity);
        if (headerArr != null) {
            addEntityToRequestBase.setHeaders(headerArr);
        }
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase, str2, responseHandlerInterface, context);
    }

    public RequestHandle delete(Context context, String str, HttpEntity httpEntity, String str2, ResponseHandlerInterface responseHandlerInterface) {
        return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpDelete(URI.create(str).normalize()), httpEntity), str2, responseHandlerInterface, context);
    }
}
