package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes8.dex */
public final class CompositePageTransformer implements ViewPager2.PageTransformer {
    public final List<ViewPager2.PageTransformer> mTransformers = new ArrayList();

    public void addTransformer(@NonNull ViewPager2.PageTransformer pageTransformer) {
        this.mTransformers.add(pageTransformer);
    }

    public void removeTransformer(@NonNull ViewPager2.PageTransformer pageTransformer) {
        this.mTransformers.remove(pageTransformer);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(@NonNull View view, float f) {
        for (ViewPager2.PageTransformer pageTransformer : this.mTransformers) {
            pageTransformer.transformPage(view, f);
        }
    }
}
