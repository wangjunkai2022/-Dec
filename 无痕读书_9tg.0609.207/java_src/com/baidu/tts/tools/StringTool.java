package com.baidu.tts.tools;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes8.dex */
public class StringTool {
    public static String addDivider(List<String> list, String str) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        if (it.hasNext()) {
            sb.append(it.next());
        }
        while (it.hasNext()) {
            sb.append(str);
            sb.append(it.next());
        }
        return sb.toString();
    }

    public static boolean isAllNumber(String str) {
        if (str != null) {
            return str.matches("^[0-9]{1,20}$");
        }
        return false;
    }

    public static boolean isEmpty(String str) {
        return str == null || str.trim().length() <= 0;
    }

    public static boolean isEqual(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    public static String addDivider(int[] iArr, String str) {
        if (iArr != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(iArr[0]);
            for (int i = 1; i < iArr.length; i++) {
                sb.append(str);
                sb.append(iArr[i]);
            }
            return sb.toString();
        }
        return null;
    }
}
