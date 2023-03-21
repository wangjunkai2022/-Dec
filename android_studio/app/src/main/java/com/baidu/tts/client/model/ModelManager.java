package com.baidu.tts.client.model;

import android.content.Context;
import com.baidu.tts.d.b;
import com.baidu.tts.f.g;
import com.baidu.tts.l.a;
import java.util.Set;

/* loaded from: classes8.dex */
public class ModelManager {

    /* renamed from: a  reason: collision with root package name */
    public a f11177a;
    public Context mContext;

    public ModelManager(Context context) {
        this.f11177a = new a(context);
        this.mContext = context;
    }

    private Conditions a(AvailableConditions availableConditions) {
        Conditions a2 = a();
        if (a2 != null && availableConditions != null) {
            a2.setSpeakers(availableConditions.getSpeakers());
            a2.setGenders(availableConditions.getGenders());
        }
        return a2;
    }

    public String checkModelsUpdate(Set<String> set) {
        return this.f11177a.c(set);
    }

    public DownloadHandler download(String str, OnDownloadListener onDownloadListener) {
        b bVar = new b();
        bVar.a(str);
        bVar.a(onDownloadListener);
        return this.f11177a.a(bVar);
    }

    public LibEngineParams getEngineParams() {
        return this.f11177a.a();
    }

    public BasicHandler<ModelFileBags> getLocalModelFileInfos(Set<String> set) {
        return this.f11177a.b(set);
    }

    public BasicHandler<ModelBags> getLocalModels(Conditions conditions) {
        return this.f11177a.a(conditions, false);
    }

    public BasicHandler<ModelBags> getLocalModelsAvailable(AvailableConditions availableConditions) {
        return this.f11177a.a(a(availableConditions), true);
    }

    public BasicHandler<ModelBags> getServerDefaultModels() {
        return this.f11177a.b();
    }

    public BasicHandler<ModelFileBags> getServerModelFileInfos(Set<String> set) {
        return this.f11177a.a(set);
    }

    public BasicHandler<ModelBags> getServerModels(Conditions conditions) {
        return this.f11177a.a(conditions);
    }

    public BasicHandler<ModelBags> getServerModelsAvailable(AvailableConditions availableConditions) {
        return getServerModels(a(availableConditions));
    }

    public String getSpeechModelFileAbsPath(String str) {
        return this.f11177a.a(g.SPEECH_DATA_ID.b(), str);
    }

    public String getTextModelFileAbsPath(String str) {
        return this.f11177a.a(g.TEXT_DATA_ID.b(), str);
    }

    public boolean isModelFileValid(String str) {
        return this.f11177a.a(str);
    }

    public boolean isModelValid(String str) {
        return this.f11177a.b(str);
    }

    public int stop() {
        this.f11177a.c();
        return 0;
    }

    private Conditions a() {
        Conditions conditions = new Conditions();
        LibEngineParams engineParams = getEngineParams();
        conditions.setVersion(engineParams.getVersion());
        conditions.setDomains(engineParams.getDomain());
        conditions.setLanguages(engineParams.getLanguage());
        conditions.setQualitys(engineParams.getQuality());
        return conditions;
    }
}
