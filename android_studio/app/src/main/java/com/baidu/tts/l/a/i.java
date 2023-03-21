package com.baidu.tts.l.a;

import com.baidu.tts.client.model.BasicHandler;
import com.baidu.tts.client.model.Conditions;
import com.baidu.tts.client.model.LibEngineParams;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import java.util.Set;
import java.util.concurrent.FutureTask;
import org.json.JSONArray;

/* compiled from: ModelInfoManager.java */
/* loaded from: classes8.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public com.baidu.tts.l.a f11243a;

    public i(com.baidu.tts.l.a aVar) {
        this.f11243a = aVar;
    }

    public BasicHandler<ModelBags> a(Conditions conditions) {
        BasicHandler<ModelBags> basicHandler = new BasicHandler<>(new FutureTask(new h(conditions)));
        basicHandler.start();
        return basicHandler;
    }

    public BasicHandler<ModelFileBags> b(Set<String> set) {
        BasicHandler<ModelFileBags> basicHandler = new BasicHandler<>(new FutureTask(new c(this.f11243a.e(), set)));
        basicHandler.start();
        return basicHandler;
    }

    public BasicHandler<ModelBags> a(Conditions conditions, boolean z) {
        BasicHandler<ModelBags> basicHandler = new BasicHandler<>(new FutureTask(new d(this.f11243a.e(), conditions, this.f11243a, z)));
        basicHandler.start();
        return basicHandler;
    }

    public BasicHandler<ModelBags> b() {
        BasicHandler<ModelBags> basicHandler = new BasicHandler<>(new FutureTask(new f()));
        basicHandler.start();
        return basicHandler;
    }

    public LibEngineParams a() {
        return new LibEngineParams(EmbeddedSynthesizerEngine.bdTTSGetEngineParam());
    }

    public BasicHandler<ModelFileBags> a(Set<String> set) {
        BasicHandler<ModelFileBags> basicHandler = new BasicHandler<>(new FutureTask(new g(set)));
        basicHandler.start();
        return basicHandler;
    }

    public BasicHandler<String> a(JSONArray jSONArray) {
        BasicHandler<String> basicHandler = new BasicHandler<>(new FutureTask(new a(jSONArray)));
        basicHandler.start();
        return basicHandler;
    }
}
