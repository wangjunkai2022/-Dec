package com.manhua.ui.activity;

import android.os.Bundle;
import androidx.viewpager.widget.ViewPager;
import com.apk.e40;
import com.apk.eg;
import com.apk.f6;
import com.apk.kg;
import com.apk.nz;
import com.apk.y30;
import com.apk.ze;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.manhua.ui.fragment.ComicUpdateFragment;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicUpdateActivity extends f6 {

    /* renamed from: for  reason: not valid java name */
    public static final Map<String, String> f9857for;

    /* renamed from: do  reason: not valid java name */
    public ScrollIndicatorView f9858do;

    /* renamed from: if  reason: not valid java name */
    public ViewPager f9859if;

    static {
        HashMap hashMap = new HashMap();
        f9857for = hashMap;
        hashMap.put("周一", "1");
        f9857for.put("周二", "2");
        f9857for.put("周三", "3");
        f9857for.put("周四", RedBgImageBean.RED_BG_TYPE_COLOR);
        f9857for.put("周五", RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR);
        f9857for.put("周六", RedBgImageBean.RED_BG_TYPE_CUSTOM_IMAGE);
        f9857for.put("周日", "7");
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.comic_update_activity;
    }

    @Override // com.apk.f6
    public void initData() {
        String str;
        ArrayList<String> m1492case = kg.m1492case(7);
        int size = m1492case.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        for (int i = 0; i < size; i++) {
            String str2 = "";
            try {
                str2 = new SimpleDateFormat("EEEE").format(new SimpleDateFormat("yyyy-MM-dd").parse(m1492case.get(i)));
                str = str2.replaceAll("星期", "周");
            } catch (ParseException e) {
                e.printStackTrace();
                str = str2;
            }
            strArr[i] = str;
            strArr2[i] = f9857for.get(str);
        }
        strArr[size - 1] = ze.q(R.string.comic_update_today_txt);
        strArr[size - 2] = ze.q(R.string.comic_update_yesterday_txt);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < size; i2++) {
            String str3 = strArr2[i2];
            ComicUpdateFragment comicUpdateFragment = new ComicUpdateFragment();
            Bundle bundle = new Bundle();
            bundle.putString("UPDATE_DATE_KEY", str3);
            comicUpdateFragment.setArguments(bundle);
            arrayList.add(comicUpdateFragment);
        }
        int m587catch = eg.m587catch(60.0f);
        int m614switch = eg.m614switch() / size;
        if (m614switch > m587catch && m614switch < eg.m587catch(75.0f)) {
            m587catch = m614switch;
        }
        this.f9858do.setAdapter(new nz(this, new String[7], m587catch));
        new e40(this.f9858do, this.f9859if).m536do(new y30(getSupportFragmentManager(), strArr, arrayList));
        this.f9859if.setCurrentItem(arrayList.size() - 1);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.comic_update_actionbar, R.string.comic_update_title);
        ScrollIndicatorView scrollIndicatorView = (ScrollIndicatorView) findViewById(R.id.comic_update_indicator);
        this.f9858do = scrollIndicatorView;
        scrollIndicatorView.setSplitAuto(true);
        ze.u(this, this.f9858do, 35, 14);
        ViewPager viewPager = (ViewPager) findViewById(R.id.comic_update_viewPager);
        this.f9859if = viewPager;
        viewPager.setOffscreenPageLimit(7);
    }
}
