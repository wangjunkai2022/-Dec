package com.baidu.tts.l.a;

import com.baidu.tts.client.model.Conditions;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.client.model.ModelInfo;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* compiled from: GetLocalModelsWork.java */
/* loaded from: classes8.dex */
public class d implements Callable<ModelBags> {

    /* renamed from: a  reason: collision with root package name */
    public Conditions f11238a;
    public com.baidu.tts.database.a b;
    public com.baidu.tts.l.a c;
    public boolean d;

    public d(com.baidu.tts.database.a aVar, Conditions conditions, com.baidu.tts.l.a aVar2, boolean z) {
        this.f11238a = conditions;
        this.b = aVar;
        this.c = aVar2;
        this.d = z;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public ModelBags call() throws Exception {
        List<Map<String, String>> a2 = this.b.a(this.f11238a);
        ModelBags modelBags = new ModelBags();
        modelBags.setList(a2);
        if (this.d) {
            Iterator<ModelInfo> it = modelBags.getModelInfos().iterator();
            while (it.hasNext()) {
                if (!this.c.b(it.next().getServerId())) {
                    it.remove();
                }
            }
        }
        return modelBags;
    }
}
