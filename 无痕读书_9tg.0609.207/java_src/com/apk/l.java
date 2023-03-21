package com.apk;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.biquge.ebook.app.bean.DiscoverBean;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.ui.activity.MainActivity;
import com.biquge.ebook.app.ui.fragment.HomeFragment;
import com.biquge.ebook.app.ui.fragment.InfoFragment;
import com.biquge.ebook.app.ui.fragment.LocalWebShareFragment;
import com.biquge.ebook.app.ui.fragment.MainCategoryFragment;
import com.biquge.ebook.app.ui.fragment.MainStoreFragment;
import com.biquge.ebook.app.ui.fragment.WebViewFragment;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BaseFragmentPagerAdapter.java */
/* loaded from: classes8.dex */
public abstract class l<T extends Fragment> extends FragmentPagerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final List<T> f2733do;

    /* renamed from: if  reason: not valid java name */
    public T f2734if;

    public l(FragmentManager fragmentManager) {
        super(fragmentManager);
        ArrayList arrayList = new ArrayList();
        this.f2733do = arrayList;
        w7 w7Var = (w7) this;
        w7Var.f5239for.f6683break = new HomeFragment();
        arrayList.add(w7Var.f5239for.f6683break);
        w7Var.f5239for.f6685catch = new MainStoreFragment();
        arrayList.add(w7Var.f5239for.f6685catch);
        w7Var.f5239for.f6686class = new MainCategoryFragment();
        arrayList.add(w7Var.f5239for.f6686class);
        MainActivity mainActivity = w7Var.f5239for;
        DiscoverBean discoverBean = mainActivity.f6690goto;
        if (discoverBean != null) {
            arrayList.add(WebViewFragment.a(discoverBean.getDiscoverTitle(), w7Var.f5239for.f6690goto.getDiscoverUrl(), false, true, true));
            MainActivity mainActivity2 = w7Var.f5239for;
            mainActivity2.f6688else = mainActivity2.f6690goto.getDiscoverTitle();
        } else {
            NewShareDisBean newShareDisBean = mainActivity.f6698this;
            if (newShareDisBean != null && newShareDisBean.is_tab_show()) {
                arrayList.add(new LocalWebShareFragment());
                MainActivity mainActivity3 = w7Var.f5239for;
                mainActivity3.f6688else = mainActivity3.f6698this.getTab_name();
            }
        }
        w7Var.f5239for.f6687const = new InfoFragment();
        arrayList.add(w7Var.f5239for.f6687const);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f2733do.size();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public T getItem(int i) {
        return this.f2733do.get(i);
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        if (this.f2734if != obj) {
            this.f2734if = (T) obj;
        }
        super.setPrimaryItem(viewGroup, i, obj);
    }
}
