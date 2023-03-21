package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.bean.User;
/* compiled from: CommentLoader.java */
/* loaded from: classes8.dex */
public class x implements m80 {
    /* renamed from: do  reason: not valid java name */
    public String m2945do() {
        v0 m2736try = v0.m2736try();
        User user = m2736try.f4976do;
        if (user != null) {
            String nickName = user.getNickName();
            return TextUtils.isEmpty(nickName) ? m2736try.f4976do.getName() : nickName;
        }
        return "";
    }
}
