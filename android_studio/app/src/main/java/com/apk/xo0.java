package com.apk;

import androidx.appcompat.view.SupportMenuInflater;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationCompatJellybean;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Tag.java */
/* loaded from: classes7.dex */
public class xo0 implements Cloneable {

    /* renamed from: break  reason: not valid java name */
    public static final Map<String, xo0> f5703break = new HashMap();

    /* renamed from: catch  reason: not valid java name */
    public static final String[] f5704catch;

    /* renamed from: class  reason: not valid java name */
    public static final String[] f5705class;

    /* renamed from: const  reason: not valid java name */
    public static final String[] f5706const;

    /* renamed from: final  reason: not valid java name */
    public static final String[] f5707final;

    /* renamed from: super  reason: not valid java name */
    public static final String[] f5708super;

    /* renamed from: throw  reason: not valid java name */
    public static final String[] f5709throw;

    /* renamed from: while  reason: not valid java name */
    public static final String[] f5710while;

    /* renamed from: do  reason: not valid java name */
    public String f5712do;

    /* renamed from: if  reason: not valid java name */
    public String f5716if;

    /* renamed from: for  reason: not valid java name */
    public boolean f5714for = true;

    /* renamed from: new  reason: not valid java name */
    public boolean f5717new = true;

    /* renamed from: try  reason: not valid java name */
    public boolean f5719try = false;

    /* renamed from: case  reason: not valid java name */
    public boolean f5711case = false;

    /* renamed from: else  reason: not valid java name */
    public boolean f5713else = false;

    /* renamed from: goto  reason: not valid java name */
    public boolean f5715goto = false;

    /* renamed from: this  reason: not valid java name */
    public boolean f5718this = false;

    static {
        String[] strArr = {"html", "head", "body", "frameset", "script", "noscript", "style", TTDownloadField.TT_META, "link", NotificationCompatJellybean.KEY_TITLE, "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", com.umeng.analytics.pro.ak.ax, "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", "details", SupportMenuInflater.XML_MENU, "plaintext", "template", "article", "main", "svg", "math", "center", "template", "dir", "applet", "marquee", "listing"};
        f5704catch = strArr;
        f5705class = new String[]{"object", "base", "font", "tt", com.umeng.analytics.pro.ak.aC, "b", com.umeng.analytics.pro.ak.aG, "big", "small", "em", "strong", "dfn", PluginConstants.KEY_ERROR_CODE, "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "a", "img", "br", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", "label", "button", "optgroup", "option", "legend", "datalist", "keygen", "output", NotificationCompat.CATEGORY_PROGRESS, "meter", "area", "param", "source", "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track", "data", "bdi", com.umeng.analytics.pro.ak.aB, "strike", "nobr"};
        f5706const = new String[]{TTDownloadField.TT_META, "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"};
        f5707final = new String[]{NotificationCompatJellybean.KEY_TITLE, "a", com.umeng.analytics.pro.ak.ax, "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style", "ins", "del", com.umeng.analytics.pro.ak.aB};
        f5708super = new String[]{"pre", "plaintext", NotificationCompatJellybean.KEY_TITLE, "textarea"};
        f5709throw = new String[]{"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
        f5710while = new String[]{"input", "keygen", "object", "select", "textarea"};
        for (String str : strArr) {
            xo0 xo0Var = new xo0(str);
            f5703break.put(xo0Var.f5712do, xo0Var);
        }
        for (String str2 : f5705class) {
            xo0 xo0Var2 = new xo0(str2);
            xo0Var2.f5714for = false;
            xo0Var2.f5717new = false;
            f5703break.put(xo0Var2.f5712do, xo0Var2);
        }
        for (String str3 : f5706const) {
            xo0 xo0Var3 = f5703break.get(str3);
            sb0.m2418instanceof(xo0Var3);
            xo0Var3.f5719try = true;
        }
        for (String str4 : f5707final) {
            xo0 xo0Var4 = f5703break.get(str4);
            sb0.m2418instanceof(xo0Var4);
            xo0Var4.f5717new = false;
        }
        for (String str5 : f5708super) {
            xo0 xo0Var5 = f5703break.get(str5);
            sb0.m2418instanceof(xo0Var5);
            xo0Var5.f5713else = true;
        }
        for (String str6 : f5709throw) {
            xo0 xo0Var6 = f5703break.get(str6);
            sb0.m2418instanceof(xo0Var6);
            xo0Var6.f5715goto = true;
        }
        for (String str7 : f5710while) {
            xo0 xo0Var7 = f5703break.get(str7);
            sb0.m2418instanceof(xo0Var7);
            xo0Var7.f5718this = true;
        }
    }

    public xo0(String str) {
        this.f5712do = str;
        this.f5716if = sb0.m2437volatile(str);
    }

    /* renamed from: do  reason: not valid java name */
    public static xo0 m3028do(String str, vo0 vo0Var) {
        sb0.m2418instanceof(str);
        xo0 xo0Var = f5703break.get(str);
        if (xo0Var == null) {
            if (vo0Var != null) {
                String trim = str.trim();
                if (!vo0Var.f5185do) {
                    trim = sb0.m2437volatile(trim);
                }
                sb0.m2435transient(trim);
                String m2437volatile = sb0.m2437volatile(trim);
                xo0 xo0Var2 = f5703break.get(m2437volatile);
                if (xo0Var2 == null) {
                    xo0 xo0Var3 = new xo0(trim);
                    xo0Var3.f5714for = false;
                    return xo0Var3;
                } else if (!vo0Var.f5185do || trim.equals(m2437volatile)) {
                    return xo0Var2;
                } else {
                    try {
                        xo0 xo0Var4 = (xo0) super.clone();
                        xo0Var4.f5712do = trim;
                        return xo0Var4;
                    } catch (CloneNotSupportedException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
            throw null;
        }
        return xo0Var;
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            return (xo0) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof xo0) {
            xo0 xo0Var = (xo0) obj;
            return this.f5712do.equals(xo0Var.f5712do) && this.f5719try == xo0Var.f5719try && this.f5717new == xo0Var.f5717new && this.f5714for == xo0Var.f5714for && this.f5713else == xo0Var.f5713else && this.f5711case == xo0Var.f5711case && this.f5715goto == xo0Var.f5715goto && this.f5718this == xo0Var.f5718this;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((this.f5712do.hashCode() * 31) + (this.f5714for ? 1 : 0)) * 31) + (this.f5717new ? 1 : 0)) * 31) + (this.f5719try ? 1 : 0)) * 31) + (this.f5711case ? 1 : 0)) * 31) + (this.f5713else ? 1 : 0)) * 31) + (this.f5715goto ? 1 : 0)) * 31) + (this.f5718this ? 1 : 0);
    }

    public String toString() {
        return this.f5712do;
    }
}
