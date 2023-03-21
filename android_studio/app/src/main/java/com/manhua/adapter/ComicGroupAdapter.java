package com.manhua.adapter;

import android.app.Activity;
import com.apk.lq0;
import com.apk.tr0;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicCollectBean;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicGroupAdapter extends BaseMultiItemQuickAdapter<ComicCollectBean, BaseViewHolder> {

    /* renamed from: case  reason: not valid java name */
    public int f9610case;

    /* renamed from: do  reason: not valid java name */
    public final boolean f9611do;

    /* renamed from: for  reason: not valid java name */
    public boolean f9612for;

    /* renamed from: if  reason: not valid java name */
    public Map<String, ComicBean> f9613if;

    /* renamed from: new  reason: not valid java name */
    public LinkedHashMap<String, ComicCollectBean> f9614new;

    /* renamed from: try  reason: not valid java name */
    public int f9615try;

    public ComicGroupAdapter(Activity activity, List<ComicCollectBean> list, boolean z, boolean z2, int i) {
        super(list);
        this.f9610case = -1;
        this.f9611do = z;
        addItemType(2, i);
        if (z) {
            if (z2) {
                addItemType(3, R.layout.item_pop_bookgroup_list);
            } else {
                addItemType(3, R.layout.item_pop_bookgroup_list_smal);
            }
        } else if (z2) {
            addItemType(3, R.layout.item_pop_bookgroup_grid);
        } else {
            addItemType(3, R.layout.item_pop_bookgroup_grid_smal);
        }
        this.f9615try = lq0.m1660do(activity, tr0.m2617do(R.color.colorAccent));
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0233 A[Catch: Exception -> 0x026d, TryCatch #0 {Exception -> 0x026d, blocks: (B:56:0x014a, B:58:0x016b, B:60:0x0173, B:77:0x01b5, B:103:0x0208, B:105:0x0233, B:107:0x0239, B:111:0x0246, B:113:0x0259, B:115:0x025f, B:116:0x0263, B:118:0x0269, B:108:0x023d, B:110:0x0243, B:61:0x017a, B:63:0x0181, B:65:0x0189, B:67:0x0192, B:70:0x01a6, B:72:0x01ac, B:68:0x019a, B:69:0x01a0, B:78:0x01b9, B:80:0x01bd, B:82:0x01c1, B:84:0x01c9, B:86:0x01d2, B:89:0x01e6, B:91:0x01ec, B:102:0x0205, B:87:0x01da, B:88:0x01e0, B:92:0x01f0, B:94:0x01f6, B:95:0x01f9, B:99:0x0200, B:73:0x01af), top: B:173:0x014a, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x023d A[Catch: Exception -> 0x026d, TryCatch #0 {Exception -> 0x026d, blocks: (B:56:0x014a, B:58:0x016b, B:60:0x0173, B:77:0x01b5, B:103:0x0208, B:105:0x0233, B:107:0x0239, B:111:0x0246, B:113:0x0259, B:115:0x025f, B:116:0x0263, B:118:0x0269, B:108:0x023d, B:110:0x0243, B:61:0x017a, B:63:0x0181, B:65:0x0189, B:67:0x0192, B:70:0x01a6, B:72:0x01ac, B:68:0x019a, B:69:0x01a0, B:78:0x01b9, B:80:0x01bd, B:82:0x01c1, B:84:0x01c9, B:86:0x01d2, B:89:0x01e6, B:91:0x01ec, B:102:0x0205, B:87:0x01da, B:88:0x01e0, B:92:0x01f0, B:94:0x01f6, B:95:0x01f9, B:99:0x0200, B:73:0x01af), top: B:173:0x014a, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0259 A[Catch: Exception -> 0x026d, TryCatch #0 {Exception -> 0x026d, blocks: (B:56:0x014a, B:58:0x016b, B:60:0x0173, B:77:0x01b5, B:103:0x0208, B:105:0x0233, B:107:0x0239, B:111:0x0246, B:113:0x0259, B:115:0x025f, B:116:0x0263, B:118:0x0269, B:108:0x023d, B:110:0x0243, B:61:0x017a, B:63:0x0181, B:65:0x0189, B:67:0x0192, B:70:0x01a6, B:72:0x01ac, B:68:0x019a, B:69:0x01a0, B:78:0x01b9, B:80:0x01bd, B:82:0x01c1, B:84:0x01c9, B:86:0x01d2, B:89:0x01e6, B:91:0x01ec, B:102:0x0205, B:87:0x01da, B:88:0x01e0, B:92:0x01f0, B:94:0x01f6, B:95:0x01f9, B:99:0x0200, B:73:0x01af), top: B:173:0x014a, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0263 A[Catch: Exception -> 0x026d, TryCatch #0 {Exception -> 0x026d, blocks: (B:56:0x014a, B:58:0x016b, B:60:0x0173, B:77:0x01b5, B:103:0x0208, B:105:0x0233, B:107:0x0239, B:111:0x0246, B:113:0x0259, B:115:0x025f, B:116:0x0263, B:118:0x0269, B:108:0x023d, B:110:0x0243, B:61:0x017a, B:63:0x0181, B:65:0x0189, B:67:0x0192, B:70:0x01a6, B:72:0x01ac, B:68:0x019a, B:69:0x01a0, B:78:0x01b9, B:80:0x01bd, B:82:0x01c1, B:84:0x01c9, B:86:0x01d2, B:89:0x01e6, B:91:0x01ec, B:102:0x0205, B:87:0x01da, B:88:0x01e0, B:92:0x01f0, B:94:0x01f6, B:95:0x01f9, B:99:0x0200, B:73:0x01af), top: B:173:0x014a, inners: #3, #4 }] */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void convert(com.chad.library.adapter.base.BaseViewHolder r18, java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 863
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.manhua.adapter.ComicGroupAdapter.convert(com.chad.library.adapter.base.BaseViewHolder, java.lang.Object):void");
    }

    /* renamed from: do  reason: not valid java name */
    public List<ComicCollectBean> m3609do() {
        ArrayList arrayList = new ArrayList();
        LinkedHashMap<String, ComicCollectBean> linkedHashMap = this.f9614new;
        if (linkedHashMap != null) {
            for (Map.Entry<String, ComicCollectBean> entry : linkedHashMap.entrySet()) {
                arrayList.add(entry.getValue());
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: for  reason: not valid java name */
    public int m3610for(int i) {
        if (this.f9614new == null) {
            this.f9614new = new LinkedHashMap<>();
        }
        try {
            ComicCollectBean comicCollectBean = (ComicCollectBean) getItem(i);
            if (comicCollectBean != null) {
                String collectId = comicCollectBean.getCollectId();
                if (this.f9614new.containsKey(collectId)) {
                    this.f9614new.remove(collectId);
                } else {
                    this.f9614new.put(collectId, getItem(i));
                }
                notifyItemChanged(getHeaderLayoutCount() + i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.f9614new.size();
    }

    /* renamed from: if  reason: not valid java name */
    public int m3611if(boolean z) {
        if (this.f9614new == null) {
            this.f9614new = new LinkedHashMap<>();
        }
        try {
            if (this.f9614new.size() == this.f9610case) {
                this.f9614new.clear();
            } else {
                for (T t : getData()) {
                    if (t.getItemType() != 1 || t.isNew()) {
                        if (z || !t.isGroup()) {
                            this.f9614new.put(t.getCollectId(), t);
                        }
                    }
                }
                this.f9610case = this.f9614new.size();
            }
            notifyDataSetChanged();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.f9614new.size();
    }
}
