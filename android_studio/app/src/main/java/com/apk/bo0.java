package com.apk;

import com.umeng.commonsdk.debug.UMLog;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;
import java.util.regex.Pattern;

/* compiled from: StringUtil.java */
/* loaded from: classes7.dex */
public final class bo0 {

    /* renamed from: do  reason: not valid java name */
    public static final String[] f399do = {"", " ", "  ", "   ", "    ", UMLog.INDENT, "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};

    /* renamed from: if  reason: not valid java name */
    public static final Pattern f401if = Pattern.compile("^/((\\.{1,2}/)+)");

    /* renamed from: for  reason: not valid java name */
    public static final Pattern f400for = Pattern.compile("^[a-zA-Z][a-zA-Z0-9+-.]*:");

    /* renamed from: new  reason: not valid java name */
    public static final ThreadLocal<Stack<StringBuilder>> f402new = new Cdo();

    /* compiled from: StringUtil.java */
    /* renamed from: com.apk.bo0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo extends ThreadLocal<Stack<StringBuilder>> {
        @Override // java.lang.ThreadLocal
        public Stack<StringBuilder> initialValue() {
            return new Stack<>();
        }
    }

    /* renamed from: break  reason: not valid java name */
    public static String m244break(int i) {
        if (i >= 0) {
            String[] strArr = f399do;
            if (i < strArr.length) {
                return strArr[i];
            }
            int min = Math.min(i, 30);
            char[] cArr = new char[min];
            for (int i2 = 0; i2 < min; i2++) {
                cArr[i2] = ' ';
            }
            return String.valueOf(cArr);
        }
        throw new IllegalArgumentException("width must be > 0");
    }

    /* renamed from: case  reason: not valid java name */
    public static boolean m245case(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.codePointAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: catch  reason: not valid java name */
    public static String m246catch(StringBuilder sb) {
        sb0.m2418instanceof(sb);
        String sb2 = sb.toString();
        if (sb.length() > 8192) {
            sb = new StringBuilder(8192);
        } else {
            sb.delete(0, sb.length());
        }
        Stack<StringBuilder> stack = f402new.get();
        stack.push(sb);
        while (stack.size() > 8) {
            stack.pop();
        }
        return sb2;
    }

    /* renamed from: class  reason: not valid java name */
    public static String m247class(String str, String str2) {
        try {
            try {
                return m248const(new URL(str), str2).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(str2).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return f400for.matcher(str2).find() ? str2 : "";
        }
    }

    /* renamed from: const  reason: not valid java name */
    public static URL m248const(URL url, String str) throws MalformedURLException {
        if (str.startsWith("?")) {
            str = url.getPath() + str;
        }
        URL url2 = new URL(url, str);
        String replaceFirst = f401if.matcher(url2.getFile()).replaceFirst("/");
        if (url2.getRef() != null) {
            StringBuilder m1025while = Cgoto.m1025while(replaceFirst, "#");
            m1025while.append(url2.getRef());
            replaceFirst = m1025while.toString();
        }
        return new URL(url2.getProtocol(), url2.getHost(), url2.getPort(), replaceFirst);
    }

    /* renamed from: do  reason: not valid java name */
    public static void m249do(StringBuilder sb, String str, boolean z) {
        int length = str.length();
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (!(codePointAt == 32 || codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13 || codePointAt == 160)) {
                if (!(codePointAt == 8203 || codePointAt == 173)) {
                    sb.appendCodePoint(codePointAt);
                    z2 = true;
                    z3 = false;
                }
            } else if ((!z || z2) && !z3) {
                sb.append(' ');
                z3 = true;
            }
            i += Character.charCount(codePointAt);
        }
    }

    /* renamed from: else  reason: not valid java name */
    public static boolean m250else(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13;
    }

    /* renamed from: for  reason: not valid java name */
    public static boolean m251for(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: goto  reason: not valid java name */
    public static String m252goto(Collection<?> collection, String str) {
        Iterator<?> it = collection.iterator();
        if (it.hasNext()) {
            String obj = it.next().toString();
            if (it.hasNext()) {
                StringBuilder m253if = m253if();
                sb0.m2418instanceof(m253if);
                m253if.append((Object) obj);
                while (it.hasNext()) {
                    Object next = it.next();
                    sb0.m2418instanceof(m253if);
                    m253if.append(str);
                    m253if.append(next);
                }
                return m246catch(m253if);
            }
            return obj;
        }
        return "";
    }

    /* renamed from: if  reason: not valid java name */
    public static StringBuilder m253if() {
        Stack<StringBuilder> stack = f402new.get();
        if (stack.empty()) {
            return new StringBuilder(8192);
        }
        return stack.pop();
    }

    /* renamed from: new  reason: not valid java name */
    public static boolean m254new(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }

    /* renamed from: this  reason: not valid java name */
    public static String m255this(String str) {
        StringBuilder m253if = m253if();
        m249do(m253if, str, false);
        return m246catch(m253if);
    }

    /* renamed from: try  reason: not valid java name */
    public static boolean m256try(String str) {
        if (str != null && str.length() != 0) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                if (!m250else(str.codePointAt(i))) {
                    return false;
                }
            }
        }
        return true;
    }
}
