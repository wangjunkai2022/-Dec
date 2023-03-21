package com.baidu.tts.d;

import com.baidu.tts.client.model.OnDownloadListener;
import com.baidu.tts.tools.StringTool;
/* compiled from: DownloadParams.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public String f11189a;
    public OnDownloadListener b;

    public String a() {
        return this.f11189a;
    }

    public boolean b() {
        return !StringTool.isEmpty(this.f11189a);
    }

    public OnDownloadListener c() {
        return this.b;
    }

    public void a(String str) {
        this.f11189a = str;
    }

    public void a(OnDownloadListener onDownloadListener) {
        this.b = onDownloadListener;
    }
}
