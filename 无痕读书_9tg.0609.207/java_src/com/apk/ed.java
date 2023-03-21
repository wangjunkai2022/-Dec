package com.apk;

import com.biquge.ebook.app.bean.NewReadFont;
import com.biquge.ebook.app.ui.view.RedBgImageDialog;
import com.hjq.toast.ToastUtils;
import java.io.File;
import java.util.Map;
import kimi.wuhends.ebooks.R;
/* compiled from: RedBgImageDialog.java */
/* loaded from: classes8.dex */
public class ed implements z5 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f1033do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ RedBgImageDialog f1034if;

    public ed(RedBgImageDialog redBgImageDialog, String str) {
        this.f1034if = redBgImageDialog;
        this.f1033do = str;
    }

    @Override // com.apk.z5
    /* renamed from: do  reason: not valid java name */
    public void mo581do(File file, String str) {
        tt.f4763do.putString(Cgoto.m989case("SP_READ_BG_IMAGE_ID_KEY", str), file.getAbsolutePath());
        RedBgImageDialog.Cnew cnew = this.f1034if.f7771this;
        if (cnew != null) {
            cnew.notifyDataSetChanged();
        }
    }

    @Override // com.apk.z5
    /* renamed from: for  reason: not valid java name */
    public void mo582for(int i, int i2, String str) {
    }

    @Override // com.apk.z5
    /* renamed from: if  reason: not valid java name */
    public void mo583if(String str, String str2) {
        ToastUtils.show((int) R.string.download_faild_txt);
        kf m1487try = kf.m1487try();
        String str3 = this.f1033do;
        Map<String, NewReadFont> map = m1487try.f2526do;
        if (map != null) {
            map.remove(str3);
        }
        RedBgImageDialog.Cnew cnew = this.f1034if.f7771this;
        if (cnew != null) {
            cnew.notifyDataSetChanged();
        }
    }
}
