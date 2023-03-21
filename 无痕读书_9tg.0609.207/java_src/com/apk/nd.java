package com.apk;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.PaintCompat;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.webread.WebChapterBatchBean;
import com.biquge.ebook.app.bean.webread.WebSiteRulesBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.biquge.ebook.app.ui.webread.entity.WebBook;
import com.biquge.ebook.app.ui.webread.entity.WebContentBean;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.LitePal;
/* compiled from: WebModel.java */
/* loaded from: classes8.dex */
public class nd {
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0254, code lost:
        if (android.text.TextUtils.isEmpty(r7) == false) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0256, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x029d, code lost:
        if (android.text.TextUtils.isEmpty(r7) == false) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x012f, code lost:
        if (android.text.TextUtils.isEmpty(r7) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0131, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0181, code lost:
        if (android.text.TextUtils.isEmpty(r7) == false) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0259 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0134 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:120:0x029d -> B:109:0x0256). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:124:0x02a4 -> B:110:0x0257). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x0181 -> B:50:0x0131). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0188 -> B:51:0x0132). Please submit an issue!!! */
    /* renamed from: break  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.biquge.ebook.app.ui.webread.entity.WebContentBean m1850break(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 757
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.nd.m1850break(java.lang.String, java.lang.String, java.lang.String):com.biquge.ebook.app.ui.webread.entity.WebContentBean");
    }

    /* renamed from: case  reason: not valid java name */
    public static String m1851case(String str, WebSiteBean webSiteBean) {
        WebSiteRulesBean m1854const;
        if (webSiteBean != null && !webSiteBean.isSearchBook() && (m1854const = m1854const(str)) != null) {
            String chapter_bookIdExpression = m1854const.getChapter_bookIdExpression();
            String chapter_pcChapterUrl = m1854const.getChapter_pcChapterUrl();
            if (!TextUtils.isEmpty(chapter_bookIdExpression) && !TextUtils.isEmpty(chapter_pcChapterUrl)) {
                String m1818extends = n2.m1818extends(str, chapter_bookIdExpression);
                if (!TextUtils.isEmpty(m1818extends)) {
                    m1818extends = n2.m1818extends(m1818extends, "\\d+");
                }
                if (!TextUtils.isEmpty(m1818extends)) {
                    if (chapter_pcChapterUrl.contains("{path}")) {
                        chapter_pcChapterUrl = chapter_pcChapterUrl.replace("{path}", (Integer.parseInt(m1818extends) / 1000) + "");
                    }
                    return chapter_pcChapterUrl.contains("{id}") ? chapter_pcChapterUrl.replace("{id}", m1818extends) : chapter_pcChapterUrl;
                }
            }
        }
        return str;
    }

    /* renamed from: catch  reason: not valid java name */
    public static WebSiteBean m1852catch(String str, String str2) {
        String str3;
        WebSiteRulesBean m1854const;
        String str4;
        String str5;
        Object[] m1827interface;
        gp0 m1825import;
        WebSiteBean webSiteBean = new WebSiteBean();
        StringBuilder m1016super = Cgoto.m1016super("wap_");
        m1016super.append(str.hashCode());
        webSiteBean.setNovelId(m1016super.toString());
        if (TextUtils.isEmpty(webSiteBean.getChapterUrl())) {
            webSiteBean.setChapterUrl(str);
        }
        WebSiteRulesBean m1854const2 = m1854const(str);
        String str6 = "";
        if (m1854const2 != null) {
            int type = m1854const2.getType();
            if (type == 0) {
                ho0 c = sb0.c(str2, str);
                String m1828native = n2.m1828native(c, m1854const2.getInfo_name());
                String m1828native2 = n2.m1828native(c, m1854const2.getInfo_image());
                if (!TextUtils.isEmpty(m1828native2)) {
                    m1828native2 = n2.m1843transient(m1828native2, c.mo1378else());
                }
                String m1828native3 = n2.m1828native(c, m1854const2.getInfo_author());
                if (!TextUtils.isEmpty(m1828native3)) {
                    m1828native3 = m1828native3.replace("作者：", "");
                }
                String m1828native4 = n2.m1828native(c, m1854const2.getInfo_desc());
                String m1828native5 = n2.m1828native(c, m1854const2.getInfo_firstChapterUrl());
                if (!TextUtils.isEmpty(m1828native5)) {
                    m1828native5 = n2.m1843transient(m1828native5, c.mo1378else());
                }
                String m1828native6 = n2.m1828native(c, m1854const2.getInfo_lastChapterName());
                String m1828native7 = n2.m1828native(c, m1854const2.getInfo_lastChapterUrl());
                if (!TextUtils.isEmpty(m1828native7)) {
                    m1828native7 = n2.m1843transient(m1828native7, c.mo1378else());
                }
                ArrayList arrayList = new ArrayList();
                if (!TextUtils.isEmpty(m1854const2.getInfo_lastChapters()) && (m1825import = n2.m1825import(c, m1854const2.getInfo_lastChapters())) != null && m1825import.size() > 0) {
                    Iterator<jo0> it = m1825import.iterator();
                    while (it.hasNext()) {
                        jo0 next = it.next();
                        Iterator<jo0> it2 = it;
                        str4 = str6;
                        arrayList.add(m1858for(webSiteBean.getNovelId(), c.mo1378else(), n2.m1828native(next, m1854const2.getChapter_name()), n2.m1843transient(n2.m1828native(next, m1854const2.getChapter_url()), c.mo1378else())));
                        if (arrayList.size() >= 5) {
                            break;
                        }
                        it = it2;
                        str6 = str4;
                    }
                }
                str4 = str6;
                if (!TextUtils.isEmpty(m1828native)) {
                    webSiteBean.setTitle(m1828native);
                    webSiteBean.setImg(m1828native2);
                    webSiteBean.setAuthor(m1828native3);
                    webSiteBean.setDesc(m1828native4);
                    webSiteBean.setFirstChapterUrl(m1828native5);
                    webSiteBean.setLastChapterName(m1828native6);
                    webSiteBean.setLastChapterUrl(m1828native7);
                    webSiteBean.setLastList(arrayList);
                }
            } else {
                str4 = "";
                if (type == 1) {
                    kn0 m3221new = new zm0().m3221new(str2);
                    String m1808abstract = n2.m1808abstract(m3221new, m1854const2.getInfo_name());
                    try {
                        str5 = n2.m1831private(m3221new, m1854const2.getInfo_image(), "src");
                        if (!TextUtils.isEmpty(str5)) {
                            str5 = n2.m1843transient(str5, str);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        str5 = null;
                    }
                    String m1808abstract2 = n2.m1808abstract(m3221new, m1854const2.getInfo_author());
                    if (TextUtils.isEmpty(m1808abstract2)) {
                        str3 = str4;
                    } else {
                        str3 = str4;
                        m1808abstract2 = m1808abstract2.replace("作者：", str3);
                    }
                    String m1845volatile = n2.m1845volatile(m3221new, m1854const2.getInfo_desc());
                    String m1814continue = n2.m1814continue(m3221new, m1854const2.getInfo_firstChapterUrl(), str);
                    String m1808abstract3 = n2.m1808abstract(m3221new, m1854const2.getInfo_lastChapterName());
                    String m1814continue2 = n2.m1814continue(m3221new, m1854const2.getInfo_lastChapterUrl(), str);
                    ArrayList arrayList2 = new ArrayList();
                    if (!TextUtils.isEmpty(m1854const2.getInfo_lastChapters()) && (m1827interface = n2.m1827interface(m3221new, m1854const2.getInfo_lastChapters())) != null && m1827interface.length > 0) {
                        int length = m1827interface.length;
                        int i = 0;
                        while (i < length) {
                            kn0 kn0Var = (kn0) m1827interface[i];
                            Object[] objArr = m1827interface;
                            int i2 = length;
                            arrayList2.add(m1858for(webSiteBean.getNovelId(), str, n2.m1808abstract(kn0Var, m1854const2.getChapter_name()), n2.m1814continue(kn0Var, m1854const2.getChapter_url(), str)));
                            if (arrayList2.size() >= 5) {
                                break;
                            }
                            i++;
                            m1827interface = objArr;
                            length = i2;
                        }
                    }
                    if (!TextUtils.isEmpty(m1808abstract)) {
                        webSiteBean.setTitle(m1808abstract);
                        webSiteBean.setImg(str5);
                        webSiteBean.setAuthor(m1808abstract2);
                        webSiteBean.setDesc(m1845volatile);
                        webSiteBean.setFirstChapterUrl(m1814continue);
                        webSiteBean.setLastChapterName(m1808abstract3);
                        webSiteBean.setLastChapterUrl(m1814continue2);
                        webSiteBean.setLastList(arrayList2);
                    }
                }
            }
            str3 = str4;
        } else {
            str3 = "";
        }
        WebSiteRulesBean m1859goto = m1859goto(str, webSiteBean);
        if (m1859goto != null) {
            webSiteBean.setChapterUrl(m1859goto.getBaseUrl());
            String firstChapterUrl = webSiteBean.getFirstChapterUrl();
            if (!webSiteBean.isSearchBook() && (m1854const = m1854const(firstChapterUrl)) != null) {
                String content_bookIdRegex = m1854const.getContent_bookIdRegex();
                String content_chapterIdRegex = m1854const.getContent_chapterIdRegex();
                String content_pcContentUrl = m1854const.getContent_pcContentUrl();
                if (!TextUtils.isEmpty(content_pcContentUrl) && !TextUtils.isEmpty(content_bookIdRegex)) {
                    String m1818extends = n2.m1818extends(firstChapterUrl, content_bookIdRegex);
                    if (!TextUtils.isEmpty(m1818extends)) {
                        m1818extends = n2.m1818extends(m1818extends, "\\d+");
                    }
                    String m1818extends2 = n2.m1818extends(firstChapterUrl, content_chapterIdRegex);
                    if (!TextUtils.isEmpty(m1818extends2)) {
                        m1818extends2 = n2.m1818extends(m1818extends2, "\\d+");
                    }
                    if (!TextUtils.isEmpty(m1818extends)) {
                        if (content_pcContentUrl.contains("{path}")) {
                            content_pcContentUrl = content_pcContentUrl.replace("{path}", (Integer.parseInt(m1818extends) / 1000) + str3);
                        }
                        firstChapterUrl = content_pcContentUrl.contains("{id}") ? content_pcContentUrl.replace("{id}", m1818extends) : content_pcContentUrl;
                        if (firstChapterUrl.contains("{cid}")) {
                            firstChapterUrl = firstChapterUrl.replace("{cid}", m1818extends2);
                        }
                    }
                }
            }
            webSiteBean.setFirstChapterUrl(firstChapterUrl);
        }
        return webSiteBean;
    }

    /* renamed from: class  reason: not valid java name */
    public static WebSiteBean m1853class(String str) {
        String n = ze.n("SP_READ_WEBSITEBEAN_KEY" + str);
        if (TextUtils.isEmpty(n)) {
            return null;
        }
        return (WebSiteBean) (TextUtils.isEmpty(n) ? null : Convert.fromJson(n, (Class<Object>) WebSiteBean.class));
    }

    /* renamed from: const  reason: not valid java name */
    public static WebSiteRulesBean m1854const(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        da m419else = da.m419else();
        String m1846while = n2.m1846while(str);
        if (m419else != null) {
            if (TextUtils.isEmpty(m1846while)) {
                return null;
            }
            String replace = m1846while.replace(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS, "").replace(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP, "");
            gg<String, WebSiteRulesBean> ggVar = m419else.f842if;
            WebSiteRulesBean webSiteRulesBean = ggVar != null ? ggVar.get(replace) : null;
            if (webSiteRulesBean == null) {
                m419else.m440catch(LitePal.findAll(WebSiteRulesBean.class, new long[0]));
                gg<String, WebSiteRulesBean> ggVar2 = m419else.f842if;
                if (ggVar2 == null || ggVar2.size() == 0) {
                    m0.m1683new();
                }
                gg<String, WebSiteRulesBean> ggVar3 = m419else.f842if;
                if (ggVar3 != null) {
                    WebSiteRulesBean webSiteRulesBean2 = ggVar3.get(replace);
                    if (webSiteRulesBean2 == null) {
                        String h0 = ze.h0(replace, 0, TextUtils.indexOf(replace, "."));
                        Iterator it = ((HashSet) m419else.f842if.entrySet()).iterator();
                        while (it.hasNext()) {
                            WebSiteRulesBean webSiteRulesBean3 = (WebSiteRulesBean) ((Map.Entry) it.next()).getValue();
                            String replace2 = webSiteRulesBean3.getBaseUrl().replace(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS, "").replace(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP, "");
                            if (h0.equals(ze.h0(replace2, 0, replace2.lastIndexOf(".")))) {
                                return webSiteRulesBean3;
                            }
                        }
                        return webSiteRulesBean2;
                    }
                    return webSiteRulesBean2;
                }
                return webSiteRulesBean;
            }
            return webSiteRulesBean;
        }
        throw null;
    }

    /* renamed from: do  reason: not valid java name */
    public static boolean m1855do(String str, String str2) {
        WebSiteRulesBean m1854const;
        boolean z = !TextUtils.isEmpty(str) && str.equals(str2);
        if (z || (m1854const = m1854const(str)) == null || n2.m1822goto(str, m1854const.getContent_urlExpression())) {
            return z;
        }
        return true;
    }

    /* renamed from: else  reason: not valid java name */
    public static WebContentBean m1856else(String str, WebSiteBean webSiteBean) {
        WebSiteRulesBean m1854const;
        if (webSiteBean.isSearchBook() || (m1854const = m1854const(str)) == null) {
            return null;
        }
        String content_bookIdRegex = m1854const.getContent_bookIdRegex();
        String content_chapterIdRegex = m1854const.getContent_chapterIdRegex();
        String content_pcContentUrl = m1854const.getContent_pcContentUrl();
        if (TextUtils.isEmpty(content_pcContentUrl) || TextUtils.isEmpty(content_bookIdRegex)) {
            return null;
        }
        String m1818extends = n2.m1818extends(str, content_bookIdRegex);
        if (!TextUtils.isEmpty(m1818extends)) {
            m1818extends = n2.m1818extends(m1818extends, "\\d+");
        }
        String m1818extends2 = n2.m1818extends(str, content_chapterIdRegex);
        if (!TextUtils.isEmpty(m1818extends2)) {
            m1818extends2 = n2.m1818extends(m1818extends2, "\\d+");
        }
        if (TextUtils.isEmpty(m1818extends)) {
            return null;
        }
        if (content_pcContentUrl.contains("{path}")) {
            content_pcContentUrl = content_pcContentUrl.replace("{path}", (Integer.parseInt(m1818extends) / 1000) + "");
        }
        if (content_pcContentUrl.contains("{id}")) {
            content_pcContentUrl = content_pcContentUrl.replace("{id}", m1818extends);
        }
        if (content_pcContentUrl.contains("{cid}")) {
            content_pcContentUrl = content_pcContentUrl.replace("{cid}", m1818extends2);
        }
        try {
            String m1868while = m1868while(content_pcContentUrl);
            if (TextUtils.isEmpty(m1868while)) {
                return null;
            }
            return m1850break(content_pcContentUrl, m1868while, webSiteBean.getChapterUrl());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: final  reason: not valid java name */
    public static WebSiteRulesBean m1857final(JSONArray jSONArray) {
        JSONObject optJSONObject;
        if (jSONArray.length() > 0) {
            WebSiteRulesBean webSiteRulesBean = new WebSiteRulesBean();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject2 = jSONArray.optJSONObject(i);
                webSiteRulesBean.setType(optJSONObject2.optInt("et"));
                String optString = optJSONObject2.optString("rt");
                if ("1".equals(optString)) {
                    JSONObject optJSONObject3 = optJSONObject2.optJSONObject("rs");
                    if (optJSONObject3 != null) {
                        String optString2 = optJSONObject3.optString("l");
                        String optString3 = optJSONObject3.optString(com.umeng.analytics.pro.ak.aH);
                        String optString4 = optJSONObject3.optString("lk");
                        String optString5 = optJSONObject3.optString(com.umeng.analytics.pro.ak.ax);
                        String optString6 = optJSONObject3.optString("n");
                        String optString7 = optJSONObject3.optString("ue");
                        String optString8 = optJSONObject3.optString("bl");
                        String optString9 = optJSONObject3.optString("bn");
                        String optString10 = optJSONObject3.optString("pu");
                        String optString11 = optJSONObject3.optString("bu");
                        String optString12 = optJSONObject3.optString("ie");
                        webSiteRulesBean.setChapter_list(optString2);
                        webSiteRulesBean.setChapter_name(optString3);
                        webSiteRulesBean.setChapter_url(optString4);
                        webSiteRulesBean.setChapter_prePage(optString5);
                        webSiteRulesBean.setChapter_nextPage(optString6);
                        webSiteRulesBean.setChapter_urlExpression(optString7);
                        webSiteRulesBean.setChapter_batch_list(optString8);
                        webSiteRulesBean.setChapter_batch_list_name(optString9);
                        webSiteRulesBean.setChapter_pcChapterUrl(optString10);
                        webSiteRulesBean.setChapter_bookIdExpression(optString12);
                        webSiteRulesBean.setChapter_batch_list_url(optString11);
                    }
                } else if ("2".equals(optString)) {
                    JSONObject optJSONObject4 = optJSONObject2.optJSONObject("rs");
                    if (optJSONObject4 != null) {
                        String optString13 = optJSONObject4.optString(com.umeng.analytics.pro.ak.aF);
                        String optString14 = optJSONObject4.optString(com.umeng.analytics.pro.ak.ax);
                        String optString15 = optJSONObject4.optString("n");
                        String optString16 = optJSONObject4.optString(com.umeng.analytics.pro.ak.aH);
                        String optString17 = optJSONObject4.optString("d");
                        String optString18 = optJSONObject4.optString("ue");
                        String optString19 = optJSONObject4.optString("pp");
                        String optString20 = optJSONObject4.optString("pn");
                        String optString21 = optJSONObject4.optString("id");
                        String optString22 = optJSONObject4.optString("cr");
                        String optString23 = optJSONObject4.optString("pu");
                        webSiteRulesBean.setContent_name(optString16);
                        webSiteRulesBean.setContent_Content(optString13);
                        webSiteRulesBean.setContent_PagePre(optString14);
                        webSiteRulesBean.setContent_PageNext(optString15);
                        webSiteRulesBean.setContent_directory(optString17);
                        webSiteRulesBean.setContent_urlExpression(optString18);
                        webSiteRulesBean.setContent_pagePreName(optString19);
                        webSiteRulesBean.setContent_pageNextName(optString20);
                        webSiteRulesBean.setContent_bookIdRegex(optString21);
                        webSiteRulesBean.setContent_chapterIdRegex(optString22);
                        webSiteRulesBean.setContent_pcContentUrl(optString23);
                    }
                } else if ("3".equals(optString) && (optJSONObject = optJSONObject2.optJSONObject("rs")) != null) {
                    String optString24 = optJSONObject.optString("n");
                    String optString25 = optJSONObject.optString(PaintCompat.EM_STRING);
                    String optString26 = optJSONObject.optString("a");
                    String optString27 = optJSONObject.optString("d");
                    String optString28 = optJSONObject.optString("lc");
                    String optString29 = optJSONObject.optString("fu");
                    String optString30 = optJSONObject.optString("lu");
                    String optString31 = optJSONObject.optString("ln");
                    String optString32 = optJSONObject.optString("ue");
                    webSiteRulesBean.setInfo_name(optString24);
                    webSiteRulesBean.setInfo_image(optString25);
                    webSiteRulesBean.setInfo_author(optString26);
                    webSiteRulesBean.setInfo_desc(optString27);
                    webSiteRulesBean.setInfo_lastChapters(optString28);
                    webSiteRulesBean.setInfo_firstChapterUrl(optString29);
                    webSiteRulesBean.setInfo_lastChapterName(optString31);
                    webSiteRulesBean.setInfo_lastChapterUrl(optString30);
                    webSiteRulesBean.setInfo_urlExpression(optString32);
                }
            }
            return webSiteRulesBean;
        }
        return null;
    }

    /* renamed from: for  reason: not valid java name */
    public static ChapterBean m1858for(String str, String str2, String str3, String str4) {
        ChapterBean chapterBean = new ChapterBean();
        chapterBean.setNovelId(str);
        chapterBean.setName(str3);
        chapterBean.setUrl(str4);
        chapterBean.setOid(m1863new(str, str4));
        chapterBean.setHasContent(true);
        chapterBean.setWebSite(true);
        chapterBean.setWebChapterUrl(str2);
        return chapterBean;
    }

    /* renamed from: goto  reason: not valid java name */
    public static WebSiteRulesBean m1859goto(String str, WebSiteBean webSiteBean) {
        WebSiteRulesBean m1854const;
        if (webSiteBean == null || webSiteBean.isSearchBook() || (m1854const = m1854const(str)) == null) {
            return null;
        }
        String chapter_bookIdExpression = m1854const.getChapter_bookIdExpression();
        String chapter_pcChapterUrl = m1854const.getChapter_pcChapterUrl();
        if (TextUtils.isEmpty(chapter_bookIdExpression) || TextUtils.isEmpty(chapter_pcChapterUrl)) {
            return null;
        }
        String m1818extends = n2.m1818extends(str, chapter_bookIdExpression);
        if (!TextUtils.isEmpty(m1818extends)) {
            m1818extends = n2.m1818extends(m1818extends, "\\d+");
        }
        if (TextUtils.isEmpty(m1818extends)) {
            return null;
        }
        if (chapter_pcChapterUrl.contains("{path}")) {
            chapter_pcChapterUrl = chapter_pcChapterUrl.replace("{path}", (Integer.parseInt(m1818extends) / 1000) + "");
        }
        if (chapter_pcChapterUrl.contains("{id}")) {
            chapter_pcChapterUrl = chapter_pcChapterUrl.replace("{id}", m1818extends);
        }
        WebSiteRulesBean m1854const2 = m1854const(chapter_pcChapterUrl);
        if (m1854const2 != null) {
            m1854const2.setBaseUrl(chapter_pcChapterUrl);
        }
        return m1854const2;
    }

    /* renamed from: if  reason: not valid java name */
    public static boolean m1860if(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        boolean contains = str.contains("下一页");
        if (contains || TextUtils.isEmpty(str3) || !str3.substring(0, str3.lastIndexOf(".")).contains(str2.substring(0, str2.lastIndexOf(".")))) {
            return contains;
        }
        return true;
    }

    /* renamed from: import  reason: not valid java name */
    public static void m1861import(String str, WebSiteBean webSiteBean) {
        String json = Convert.toJson(webSiteBean);
        tt.f4763do.putString(Cgoto.m989case("SP_READ_WEBSITEBEAN_KEY", str), json);
    }

    /* renamed from: native  reason: not valid java name */
    public static Book m1862native(WebSiteBean webSiteBean) {
        if (webSiteBean != null) {
            Book book = new Book();
            book.setId(webSiteBean.getNovelId());
            book.setName(webSiteBean.getTitle());
            book.setImg(webSiteBean.getImg());
            book.setAuthor(webSiteBean.getAuthor());
            book.setDesc(webSiteBean.getDesc());
            book.setFirstChapterId(m1863new(webSiteBean.getNovelId(), webSiteBean.getChapterUrl()));
            book.setLastChapterId(webSiteBean.getLastChapterUrl());
            book.setWebSite(true);
            book.setChapterUrl(webSiteBean.getChapterUrl());
            book.setLastChapterId(webSiteBean.getLastChapterUrl());
            book.setLastChapter(webSiteBean.getLastChapterName());
            return book;
        }
        return null;
    }

    /* renamed from: new  reason: not valid java name */
    public static String m1863new(String str, String str2) {
        StringBuilder m1025while = Cgoto.m1025while(str, "_");
        boolean isEmpty = TextUtils.isEmpty(str2);
        Object obj = str2;
        if (!isEmpty) {
            obj = Integer.valueOf(str2.hashCode());
        }
        m1025while.append(obj);
        return m1025while.toString();
    }

    /* renamed from: super  reason: not valid java name */
    public static String m1864super(WebSiteBean webSiteBean, String str, String str2, String str3) {
        try {
            WebContentBean m1856else = m1856else(str3, webSiteBean);
            if (m1856else == null) {
                String m1868while = m1868while(str3);
                if (!TextUtils.isEmpty(m1868while)) {
                    m1856else = m1850break(str3, m1868while, webSiteBean.getChapterUrl());
                }
            }
            if (m1856else != null) {
                String preUrl = m1856else.getPreUrl();
                String m1863new = !TextUtils.isEmpty(preUrl) ? m1863new(str, preUrl) : null;
                String nextUrl = m1856else.getNextUrl();
                String m1863new2 = !TextUtils.isEmpty(nextUrl) ? m1863new(str, nextUrl) : null;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                    jSONObject.put("info", "success");
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", str);
                    jSONObject2.put("name", webSiteBean.getTitle());
                    jSONObject2.put("cid", str2);
                    jSONObject2.put("cname", m1856else.getName());
                    jSONObject2.put("pre_url", preUrl);
                    jSONObject2.put("pid", m1863new);
                    jSONObject2.put("next_url", nextUrl);
                    jSONObject2.put("nid", m1863new2);
                    jSONObject2.put("content", m1856else.getContent());
                    jSONObject2.put("hasContent", 1);
                    jSONObject.put("data", jSONObject2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return jSONObject.toString();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    /* renamed from: this  reason: not valid java name */
    public static WebChapterBatchBean m1865this(String str, String str2, WebSiteRulesBean webSiteRulesBean, WebSiteBean webSiteBean) {
        String novelId;
        kn0 m3221new;
        Object[] m1827interface;
        Object[] m1827interface2;
        WebChapterBatchBean webChapterBatchBean = null;
        r3 = null;
        gp0 gp0Var = null;
        try {
            novelId = webSiteBean.getNovelId();
        } catch (Exception e) {
            e = e;
        }
        if (webSiteRulesBean != null) {
            int type = webSiteRulesBean.getType();
            if (type == 0) {
                ho0 c = sb0.c(str2, str);
                gp0 m1825import = n2.m1825import(c, webSiteRulesBean.getChapter_list());
                if (m1825import == null || m1825import.size() <= 0) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<jo0> it = m1825import.iterator();
                while (it.hasNext()) {
                    jo0 next = it.next();
                    String m1828native = n2.m1828native(next, webSiteRulesBean.getChapter_name());
                    String m1828native2 = n2.m1828native(next, webSiteRulesBean.getChapter_url());
                    if (!TextUtils.isEmpty(m1828native2)) {
                        m1828native2 = n2.m1843transient(m1828native2, c.mo1378else());
                    }
                    arrayList.add(m1858for(novelId, str, m1828native, m1828native2));
                }
                List<ChapterBean> m1866throw = m1866throw(arrayList);
                WebChapterBatchBean webChapterBatchBean2 = new WebChapterBatchBean();
                try {
                    webChapterBatchBean2.setNovelId(novelId);
                    webChapterBatchBean2.setUrl(str);
                    if (!TextUtils.isEmpty(webSiteRulesBean.getChapter_prePage())) {
                        String m1828native3 = n2.m1828native(c, webSiteRulesBean.getChapter_prePage());
                        if (!TextUtils.isEmpty(m1828native3)) {
                            webChapterBatchBean2.setPreUrl(n2.m1843transient(m1828native3, c.mo1378else()));
                        }
                    }
                    if (!TextUtils.isEmpty(webSiteRulesBean.getChapter_nextPage())) {
                        String m1828native4 = n2.m1828native(c, webSiteRulesBean.getChapter_nextPage());
                        if (!TextUtils.isEmpty(m1828native4)) {
                            webChapterBatchBean2.setNextUrl(n2.m1843transient(m1828native4, c.mo1378else()));
                        }
                    }
                    if (!TextUtils.isEmpty(webSiteRulesBean.getChapter_batch_list())) {
                        String chapter_batch_list = webSiteRulesBean.getChapter_batch_list();
                        if (c != null && !TextUtils.isEmpty(chapter_batch_list.trim())) {
                            gp0Var = c.c(chapter_batch_list);
                        }
                        if (gp0Var != null && gp0Var.size() > 0) {
                            ArrayList arrayList2 = new ArrayList();
                            for (int i = 0; i < gp0Var.size(); i++) {
                                jo0 jo0Var = gp0Var.get(i);
                                if (jo0Var != null) {
                                    String m1828native5 = n2.m1828native(jo0Var, webSiteRulesBean.getChapter_batch_list_name());
                                    String m1828native6 = n2.m1828native(jo0Var, webSiteRulesBean.getChapter_batch_list_url());
                                    if (!TextUtils.isEmpty(m1828native6)) {
                                        m1828native6 = n2.m1843transient(m1828native6, c.mo1378else());
                                    }
                                    WebBook.ChaptersBean chaptersBean = new WebBook.ChaptersBean();
                                    chaptersBean.setName(m1828native5);
                                    chaptersBean.setUrl(m1828native6);
                                    arrayList2.add(chaptersBean);
                                }
                            }
                            webSiteBean.setBatchOptionList(arrayList2);
                        }
                    }
                    da.m428package(novelId);
                    LitePal.deleteAll(ChapterBean.class, "novelId = ?", novelId);
                    LitePal.saveAll(m1866throw);
                    LitePal.deleteAll(WebChapterBatchBean.class, "novelId = ? and url = ?", novelId, str);
                    webChapterBatchBean2.save();
                    return webChapterBatchBean2;
                } catch (Exception e2) {
                    e = e2;
                    webChapterBatchBean = webChapterBatchBean2;
                }
            } else if (type != 1 || (m1827interface = n2.m1827interface((m3221new = new zm0().m3221new(str2)), webSiteRulesBean.getChapter_list())) == null || m1827interface.length <= 0) {
                return null;
            } else {
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : m1827interface) {
                    kn0 kn0Var = (kn0) obj;
                    arrayList3.add(m1858for(novelId, str, n2.m1808abstract(kn0Var, webSiteRulesBean.getChapter_name()), n2.m1814continue(kn0Var, webSiteRulesBean.getChapter_url(), str)));
                }
                List<ChapterBean> m1866throw2 = m1866throw(arrayList3);
                WebChapterBatchBean webChapterBatchBean3 = new WebChapterBatchBean();
                try {
                    webChapterBatchBean3.setNovelId(novelId);
                    webChapterBatchBean3.setUrl(str);
                    if (!TextUtils.isEmpty(webSiteRulesBean.getChapter_prePage())) {
                        String m1814continue = n2.m1814continue(m3221new, webSiteRulesBean.getChapter_prePage(), str);
                        if (!TextUtils.isEmpty(m1814continue)) {
                            webChapterBatchBean3.setPreUrl(m1814continue);
                        }
                    }
                    if (!TextUtils.isEmpty(webSiteRulesBean.getChapter_nextPage())) {
                        String m1814continue2 = n2.m1814continue(m3221new, webSiteRulesBean.getChapter_nextPage(), str);
                        if (!TextUtils.isEmpty(m1814continue2)) {
                            webChapterBatchBean3.setNextUrl(m1814continue2);
                        }
                    }
                    if (!TextUtils.isEmpty(webSiteRulesBean.getChapter_batch_list()) && (m1827interface2 = n2.m1827interface(m3221new, webSiteRulesBean.getChapter_batch_list())) != null && m1827interface2.length > 0) {
                        ArrayList arrayList4 = new ArrayList();
                        for (Object obj2 : m1827interface2) {
                            kn0 kn0Var2 = (kn0) obj2;
                            String m1808abstract = n2.m1808abstract(kn0Var2, webSiteRulesBean.getChapter_batch_list_name());
                            String m1836strictfp = n2.m1836strictfp(kn0Var2, webSiteRulesBean.getChapter_batch_list_url(), webSiteRulesBean.getChapter_batch_list_url(), str);
                            WebBook.ChaptersBean chaptersBean2 = new WebBook.ChaptersBean();
                            chaptersBean2.setName(m1808abstract);
                            chaptersBean2.setUrl(m1836strictfp);
                            arrayList4.add(chaptersBean2);
                        }
                        webSiteBean.setBatchOptionList(arrayList4);
                    }
                    da.m428package(novelId);
                    LitePal.deleteAll(ChapterBean.class, "novelId = ?", novelId);
                    LitePal.saveAll(m1866throw2);
                    LitePal.deleteAll(WebChapterBatchBean.class, "novelId = ? and url = ?", novelId, str);
                    webChapterBatchBean3.save();
                    return webChapterBatchBean3;
                } catch (Exception e3) {
                    e = e3;
                    webChapterBatchBean = webChapterBatchBean3;
                }
            }
            e.printStackTrace();
            return webChapterBatchBean;
        }
        return null;
    }

    /* renamed from: throw  reason: not valid java name */
    public static List<ChapterBean> m1866throw(List<ChapterBean> list) {
        try {
            int size = list.size();
            int i = 0;
            for (int i2 = 0; i2 < size && list.get(i2).getOid().equals(list.get((list.size() - 1) - i2).getOid()); i2++) {
                i++;
            }
            if (i > 0) {
                list = list.subList(i, list.size());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            String str = "-1";
            if (list.size() > 0) {
                String str2 = "-1";
                for (ChapterBean chapterBean : list) {
                    chapterBean.setPid(str2);
                    str2 = chapterBean.getOid();
                }
                list.get(list.size() - 1).setPid("-1");
            }
            if (list.size() > 0) {
                Collections.reverse(list);
                for (ChapterBean chapterBean2 : list) {
                    chapterBean2.setNid(str);
                    str = chapterBean2.getOid();
                }
                Collections.reverse(list);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return list;
    }

    /* renamed from: try  reason: not valid java name */
    public static List<ChapterBean> m1867try(String str, boolean z) {
        List<ChapterBean> find = LitePal.where("webChapterUrl = ?", str).find(ChapterBean.class);
        if (find != null && z) {
            for (ChapterBean chapterBean : find) {
                chapterBean.setCache(g2.m932while(chapterBean));
            }
        }
        return find;
    }

    /* renamed from: while  reason: not valid java name */
    public static String m1868while(String str) {
        xw xwVar = xw.ALWAYS_FIRST_CACHE_THEN_REQUEST;
        ky kyVar = new ky(str);
        kyVar.m2190catch(x4.m2954final(str));
        kyVar.f3965goto = 180000L;
        kyVar.f3957case = xwVar;
        kyVar.f3963final = new ox();
        iy<T> m2197try = kyVar.m2197try();
        if (m2197try == 0 || !m2197try.m1293for()) {
            return null;
        }
        return (String) m2197try.f2262do;
    }
}
