package com.baidu.tts.l.a;

import com.baidu.tts.client.model.ModelFileBags;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
/* compiled from: GetLocalModelFileInfosWork.java */
/* loaded from: classes8.dex */
public class c implements Callable<ModelFileBags> {

    /* renamed from: a  reason: collision with root package name */
    public Set<String> f11237a;
    public com.baidu.tts.database.a b;

    public c(com.baidu.tts.database.a aVar, Set<String> set) {
        this.f11237a = set;
        this.b = aVar;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public ModelFileBags call() throws Exception {
        List<Map<String, String>> a2 = this.b.a(this.f11237a);
        ModelFileBags modelFileBags = new ModelFileBags();
        modelFileBags.setList(a2);
        return modelFileBags;
    }
}
