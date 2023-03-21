package com.apk;

import java.io.File;
import java.util.HashMap;

/* compiled from: BaiDuVoiceUtils.java */
/* loaded from: classes8.dex */
public class a0 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ c0 f1do;

    public a0(c0 c0Var) {
        this.f1do = c0Var;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        HashMap hashMap = new HashMap();
        try {
            String[] list = this.f1do.f476do.getAssets().list("tts");
            if (list != null && list.length > 0) {
                for (String str : list) {
                    hashMap.put(str, "");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(a6.m18else().m24this());
        File file = new File(Cgoto.m991class(sb, File.separator, "BaiduPlugin"));
        if (file.exists() && file.listFiles().length > 0) {
            for (File file2 : file.listFiles()) {
                String name = file2.getName();
                if (hashMap.containsKey(name)) {
                    hashMap.remove(name);
                }
            }
        }
        if (!(hashMap.size() == 0)) {
            c0.m296for(this.f1do.f476do, "tts", file.getAbsolutePath());
        }
        c0 c0Var = this.f1do;
        c0Var.f478for = new f0(c0Var.f476do, c0Var.f479if);
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        e1 e1Var = this.f1do.f479if;
        if (e1Var != null) {
            e1Var.mo534for(true, true);
        }
    }
}
