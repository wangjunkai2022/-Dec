package com.baidu.tts.client.model;

import com.baidu.tts.tools.StringTool;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes8.dex */
public class AvailableConditions {

    /* renamed from: a  reason: collision with root package name */
    public Set<String> f11168a;
    public Set<String> b;

    public void appendGender(String str) {
        if (StringTool.isEmpty(str)) {
            return;
        }
        if (this.f11168a == null) {
            this.f11168a = new HashSet();
        }
        this.f11168a.add(str);
    }

    public void appendSpeaker(String str) {
        if (StringTool.isEmpty(str)) {
            return;
        }
        if (this.b == null) {
            this.b = new HashSet();
        }
        this.b.add(str);
    }

    public Set<String> getGenders() {
        return this.f11168a;
    }

    public Set<String> getSpeakers() {
        return this.b;
    }

    public void setGenders(Set<String> set) {
        this.f11168a = set;
    }

    public void setSpeakers(Set<String> set) {
        this.b = set;
    }
}
