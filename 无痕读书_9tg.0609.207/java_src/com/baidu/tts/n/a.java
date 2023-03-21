package com.baidu.tts.n;
/* compiled from: APrototype.java */
/* loaded from: classes8.dex */
public abstract class a<T> implements b<T> {
    public T G() {
        try {
            return (T) super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }
}
