package com.youth.banner;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.apk.Cgoto;
import com.apk.ac0;
import com.apk.bc0;
import com.apk.cc0;
import com.apk.dc0;
import com.apk.ec0;
import com.apk.mg;
import com.apk.sr0;
import com.apk.u;
import com.biquge.ebook.app.R$styleable;
import com.youth.banner.view.BannerViewPager;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes7.dex */
public class Banner extends sr0 implements ViewPager.OnPageChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public ViewPager.OnPageChangeListener f12343a;

    /* renamed from: abstract  reason: not valid java name */
    public BannerViewPager f10492abstract;
    public ac0 b;

    /* renamed from: break  reason: not valid java name */
    public int f10493break;
    public cc0 c;

    /* renamed from: case  reason: not valid java name */
    public int f10494case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f10495catch;

    /* renamed from: class  reason: not valid java name */
    public boolean f10496class;

    /* renamed from: const  reason: not valid java name */
    public int f10497const;

    /* renamed from: continue  reason: not valid java name */
    public TextView f10498continue;
    public DisplayMetrics d;

    /* renamed from: default  reason: not valid java name */
    public List<String> f10499default;
    public LayoutInflater e;

    /* renamed from: else  reason: not valid java name */
    public int f10500else;

    /* renamed from: extends  reason: not valid java name */
    public List f10501extends;
    public bc0 f;

    /* renamed from: final  reason: not valid java name */
    public int f10502final;

    /* renamed from: finally  reason: not valid java name */
    public List<View> f10503finally;

    /* renamed from: for  reason: not valid java name */
    public int f10504for;
    public final Runnable g;

    /* renamed from: goto  reason: not valid java name */
    public int f10505goto;
    public boolean h;

    /* renamed from: if  reason: not valid java name */
    public String f10506if;

    /* renamed from: implements  reason: not valid java name */
    public ImageView f10507implements;

    /* renamed from: import  reason: not valid java name */
    public int f10508import;

    /* renamed from: instanceof  reason: not valid java name */
    public dc0 f10509instanceof;

    /* renamed from: interface  reason: not valid java name */
    public LinearLayout f10510interface;

    /* renamed from: native  reason: not valid java name */
    public int f10511native;

    /* renamed from: new  reason: not valid java name */
    public int f10512new;

    /* renamed from: package  reason: not valid java name */
    public List<ImageView> f10513package;

    /* renamed from: private  reason: not valid java name */
    public Context f10514private;

    /* renamed from: protected  reason: not valid java name */
    public LinearLayout f10515protected;

    /* renamed from: public  reason: not valid java name */
    public int f10516public;

    /* renamed from: return  reason: not valid java name */
    public int f10517return;

    /* renamed from: static  reason: not valid java name */
    public int f10518static;

    /* renamed from: strictfp  reason: not valid java name */
    public TextView f10519strictfp;

    /* renamed from: super  reason: not valid java name */
    public int f10520super;

    /* renamed from: switch  reason: not valid java name */
    public int f10521switch;

    /* renamed from: synchronized  reason: not valid java name */
    public Cif f10522synchronized;

    /* renamed from: this  reason: not valid java name */
    public int f10523this;

    /* renamed from: throw  reason: not valid java name */
    public int f10524throw;

    /* renamed from: throws  reason: not valid java name */
    public int f10525throws;

    /* renamed from: transient  reason: not valid java name */
    public LinearLayout f10526transient;

    /* renamed from: try  reason: not valid java name */
    public int f10527try;

    /* renamed from: volatile  reason: not valid java name */
    public TextView f10528volatile;

    /* renamed from: while  reason: not valid java name */
    public int f10529while;

    /* renamed from: com.youth.banner.Banner$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Banner banner = Banner.this;
            if (banner.f10516public <= 1 || !banner.f10495catch) {
                return;
            }
            boolean z = banner.f10492abstract.f10536if && banner.h;
            if (z) {
                Banner banner2 = Banner.this;
                banner2.f10517return = (banner2.f10517return % (banner2.f10516public + 1)) + 1;
            }
            Banner banner3 = Banner.this;
            int i = banner3.f10517return;
            if (i == 1) {
                if (z) {
                    banner3.f10492abstract.setCurrentItem(i, false);
                }
                Banner banner4 = Banner.this;
                bc0 bc0Var = banner4.f;
                bc0Var.f285do.post(bc0Var.m169if(banner4.g));
                return;
            }
            if (z) {
                banner3.f10492abstract.setCurrentItem(i);
            }
            Banner banner5 = Banner.this;
            bc0 bc0Var2 = banner5.f;
            bc0Var2.f285do.postDelayed(bc0Var2.m169if(banner5.g), banner5.f10523this);
        }
    }

    /* renamed from: com.youth.banner.Banner$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif extends PagerAdapter {

        /* renamed from: com.youth.banner.Banner$if$do  reason: invalid class name */
        /* loaded from: classes7.dex */
        public class Cdo implements View.OnClickListener {

            /* renamed from: do  reason: not valid java name */
            public final /* synthetic */ int f10532do;

            public Cdo(int i) {
                this.f10532do = i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Banner banner = Banner.this;
                banner.c.mo330do(banner.m3725goto(this.f10532do));
            }
        }

        public Cif() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return Banner.this.f10503finally.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            viewGroup.addView(Banner.this.f10503finally.get(i));
            View view = Banner.this.f10503finally.get(i);
            if (Banner.this.c != null) {
                view.setOnClickListener(new Cdo(i));
            }
            return view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    public Banner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10506if = "view_banner";
        this.f10504for = 5;
        this.f10505goto = 1;
        this.f10523this = 2000;
        this.f10493break = 800;
        this.f10495catch = true;
        this.f10496class = true;
        this.f10497const = R.drawable.view_radius_indicator;
        this.f10502final = R.drawable.view_radius_indicator_gray;
        this.f10520super = R.layout.view_banner;
        this.f10516public = 0;
        this.f10518static = -1;
        this.f10521switch = 1;
        this.f10525throws = 1;
        this.f = new bc0();
        this.g = new Cdo();
        this.h = true;
        this.f10514private = context;
        this.f10499default = new ArrayList();
        this.f10501extends = new ArrayList();
        this.f10503finally = new ArrayList();
        this.f10513package = new ArrayList();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.d = displayMetrics;
        this.f10494case = displayMetrics.widthPixels / 80;
        this.f10503finally.clear();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Banner);
            this.f10512new = obtainStyledAttributes.getDimensionPixelSize(8, this.f10494case);
            this.f10527try = obtainStyledAttributes.getDimensionPixelSize(6, this.f10494case);
            this.f10504for = obtainStyledAttributes.getDimensionPixelSize(7, 5);
            this.f10497const = obtainStyledAttributes.getResourceId(4, R.drawable.view_radius_indicator);
            this.f10502final = obtainStyledAttributes.getResourceId(5, R.drawable.view_radius_indicator_gray);
            this.f10525throws = obtainStyledAttributes.getInt(3, this.f10525throws);
            this.f10523this = obtainStyledAttributes.getInt(2, 2000);
            this.f10493break = obtainStyledAttributes.getInt(10, 800);
            this.f10495catch = obtainStyledAttributes.getBoolean(9, true);
            this.f10529while = obtainStyledAttributes.getColor(11, -1);
            this.f10524throw = obtainStyledAttributes.getDimensionPixelSize(12, -1);
            this.f10508import = obtainStyledAttributes.getColor(13, -1);
            this.f10511native = obtainStyledAttributes.getDimensionPixelSize(14, -1);
            this.f10520super = obtainStyledAttributes.getResourceId(1, this.f10520super);
            this.f10500else = obtainStyledAttributes.getResourceId(0, 0);
            obtainStyledAttributes.recycle();
        }
        LayoutInflater from = LayoutInflater.from(context);
        this.e = from;
        View inflate = from.inflate(this.f10520super, (ViewGroup) this, true);
        this.f10507implements = (ImageView) inflate.findViewById(R.id.bannerDefaultImage);
        this.f10492abstract = (BannerViewPager) inflate.findViewById(R.id.bannerViewPager);
        this.f10526transient = (LinearLayout) inflate.findViewById(R.id.titleView);
        this.f10510interface = (LinearLayout) inflate.findViewById(R.id.circleIndicator);
        this.f10515protected = (LinearLayout) inflate.findViewById(R.id.indicatorInside);
        this.f10498continue = (TextView) inflate.findViewById(R.id.bannerTitle);
        this.f10528volatile = (TextView) inflate.findViewById(R.id.numIndicator);
        this.f10519strictfp = (TextView) inflate.findViewById(R.id.numIndicatorInside);
        this.f10507implements.setImageResource(this.f10500else);
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            ac0 ac0Var = new ac0(this.f10492abstract.getContext());
            this.b = ac0Var;
            ac0Var.f80do = this.f10493break;
            declaredField.set(this.f10492abstract, ac0Var);
        } catch (Exception unused) {
        }
    }

    private void setImageList(List<?> list) {
        Object obj;
        if (list != null && list.size() > 0) {
            this.f10507implements.setVisibility(8);
            this.f10503finally.clear();
            int i = this.f10505goto;
            if (i == 1 || i == 4 || i == 5) {
                this.f10513package.clear();
                this.f10510interface.removeAllViews();
                this.f10515protected.removeAllViews();
                for (int i2 = 0; i2 < this.f10516public; i2++) {
                    ec0 ec0Var = new ec0(this.f10514private);
                    ec0Var.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f10512new, this.f10527try);
                    int i3 = this.f10504for;
                    layoutParams.leftMargin = i3;
                    layoutParams.rightMargin = i3;
                    if (i2 == 0) {
                        ec0Var.setImageResource(this.f10497const);
                    } else {
                        ec0Var.setImageResource(this.f10502final);
                    }
                    this.f10513package.add(ec0Var);
                    int i4 = this.f10505goto;
                    if (i4 == 1 || i4 == 4) {
                        this.f10510interface.addView(ec0Var, layoutParams);
                    } else if (i4 == 5) {
                        this.f10515protected.addView(ec0Var, layoutParams);
                    }
                }
            } else if (i == 3) {
                TextView textView = this.f10519strictfp;
                StringBuilder m1016super = Cgoto.m1016super("1/");
                m1016super.append(this.f10516public);
                textView.setText(m1016super.toString());
            } else if (i == 2) {
                TextView textView2 = this.f10528volatile;
                StringBuilder m1016super2 = Cgoto.m1016super("1/");
                m1016super2.append(this.f10516public);
                textView2.setText(m1016super2.toString());
            }
            for (int i5 = 0; i5 <= this.f10516public + 1; i5++) {
                View inflate = this.e.inflate(R.layout.view_banner_item, (ViewGroup) null);
                ImageView imageView = (ImageView) inflate.findViewById(R.id.item_banner_iamgeview);
                if (i5 == 0) {
                    obj = list.get(this.f10516public - 1);
                } else if (i5 == this.f10516public + 1) {
                    obj = list.get(0);
                } else {
                    obj = list.get(i5 - 1);
                }
                this.f10503finally.add(inflate);
                dc0 dc0Var = this.f10509instanceof;
                if (dc0Var != null) {
                    mg mgVar = (mg) dc0Var;
                    if (mgVar != null) {
                        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                        if (mgVar.f3035do) {
                            u.m2659throw((String) obj, imageView, false);
                        } else {
                            u.m2651native((String) obj, imageView, R.drawable.shape_default_head_bg, false);
                        }
                    } else {
                        throw null;
                    }
                }
            }
            return;
        }
        this.f10507implements.setVisibility(0);
    }

    private void setScaleType(View view) {
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            switch (this.f10525throws) {
                case 0:
                    imageView.setScaleType(ImageView.ScaleType.CENTER);
                    return;
                case 1:
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    return;
                case 2:
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    return;
                case 3:
                    imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    return;
                case 4:
                    imageView.setScaleType(ImageView.ScaleType.FIT_END);
                    return;
                case 5:
                    imageView.setScaleType(ImageView.ScaleType.FIT_START);
                    return;
                case 6:
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    return;
                case 7:
                    imageView.setScaleType(ImageView.ScaleType.MATRIX);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: case  reason: not valid java name */
    public void m3722case() {
        this.f.m168do(this.g);
        bc0 bc0Var = this.f;
        Runnable runnable = this.g;
        bc0Var.f285do.postDelayed(bc0Var.m169if(runnable), this.f10523this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f10495catch) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                m3722case();
            } else if (action == 0) {
                m3723else();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.apk.sr0, com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        super.mo101do();
        try {
            if (this.f10516public > 0) {
                onPageSelected(this.f10517return);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: else  reason: not valid java name */
    public void m3723else() {
        this.f.m168do(this.g);
    }

    /* renamed from: for  reason: not valid java name */
    public Banner m3724for(int i) {
        if (i == 5) {
            this.f10518static = 8388627;
        } else if (i == 6) {
            this.f10518static = 17;
        } else if (i == 7) {
            this.f10518static = 8388629;
        }
        return this;
    }

    public ViewPager getBannerPager() {
        return this.f10492abstract;
    }

    /* renamed from: goto  reason: not valid java name */
    public int m3725goto(int i) {
        int i2 = this.f10516public;
        int i3 = (i - 1) % i2;
        return i3 < 0 ? i3 + i2 : i3;
    }

    /* renamed from: if  reason: not valid java name */
    public Banner m3726if(dc0 dc0Var) {
        this.f10509instanceof = dc0Var;
        return this;
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3727new() {
        if (this.f10499default.size() == this.f10501extends.size()) {
            int i = this.f10529while;
            if (i != -1) {
                this.f10526transient.setBackgroundColor(i);
            }
            if (this.f10524throw != -1) {
                this.f10526transient.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.f10524throw));
            }
            int i2 = this.f10508import;
            if (i2 != -1) {
                this.f10498continue.setTextColor(i2);
            }
            int i3 = this.f10511native;
            if (i3 != -1) {
                this.f10498continue.setTextSize(0, i3);
            }
            List<String> list = this.f10499default;
            if (list == null || list.size() <= 0) {
                return;
            }
            this.f10498continue.setText(this.f10499default.get(0));
            this.f10498continue.setVisibility(0);
            this.f10526transient.setVisibility(0);
            return;
        }
        throw new RuntimeException("[Banner] --> The number of titles and images is different");
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f12343a;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
        if (i == 0) {
            int i2 = this.f10517return;
            if (i2 == 0) {
                this.f10492abstract.setCurrentItem(this.f10516public, false);
            } else if (i2 == this.f10516public + 1) {
                this.f10492abstract.setCurrentItem(1, false);
            }
        } else if (i != 1) {
        } else {
            int i3 = this.f10517return;
            int i4 = this.f10516public;
            if (i3 == i4 + 1) {
                this.f10492abstract.setCurrentItem(1, false);
            } else if (i3 == 0) {
                this.f10492abstract.setCurrentItem(i4, false);
            }
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f12343a;
        if (onPageChangeListener != null) {
            int i3 = this.f10516public;
            int i4 = (i - 1) % i3;
            if (i4 < 0) {
                i4 += i3;
            }
            onPageChangeListener.onPageScrolled(i4, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        this.f10517return = i;
        ViewPager.OnPageChangeListener onPageChangeListener = this.f12343a;
        if (onPageChangeListener != null) {
            int i2 = this.f10516public;
            int i3 = (i - 1) % i2;
            if (i3 < 0) {
                i3 += i2;
            }
            onPageChangeListener.onPageSelected(i3);
        }
        int i4 = this.f10505goto;
        if (i4 == 1 || i4 == 4 || i4 == 5) {
            List<ImageView> list = this.f10513package;
            int i5 = this.f10516public;
            list.get(((this.f10521switch - 1) + i5) % i5).setImageResource(this.f10502final);
            List<ImageView> list2 = this.f10513package;
            int i6 = this.f10516public;
            list2.get(((i - 1) + i6) % i6).setImageResource(this.f10497const);
            this.f10521switch = i;
        }
        if (i == 0) {
            i = this.f10516public;
        }
        if (i > this.f10516public) {
            i = 1;
        }
        int i7 = this.f10505goto;
        if (i7 == 2) {
            TextView textView = this.f10528volatile;
            textView.setText(i + "/" + this.f10516public);
        } else if (i7 != 3) {
            if (i7 == 4) {
                this.f10498continue.setText(this.f10499default.get(i - 1));
            } else if (i7 != 5) {
            } else {
                this.f10498continue.setText(this.f10499default.get(i - 1));
            }
        } else {
            TextView textView2 = this.f10519strictfp;
            textView2.setText(i + "/" + this.f10516public);
            this.f10498continue.setText(this.f10499default.get(i - 1));
        }
    }

    public void setEffective(boolean z) {
        this.h = z;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f12343a = onPageChangeListener;
    }

    /* renamed from: try  reason: not valid java name */
    public Banner m3728try() {
        int i = this.f10516public > 1 ? 0 : 8;
        int i2 = this.f10505goto;
        if (i2 == 1) {
            this.f10510interface.setVisibility(i);
        } else if (i2 == 2) {
            this.f10528volatile.setVisibility(i);
        } else if (i2 == 3) {
            this.f10519strictfp.setVisibility(i);
            m3727new();
        } else if (i2 == 4) {
            this.f10510interface.setVisibility(i);
            m3727new();
        } else if (i2 == 5) {
            this.f10515protected.setVisibility(i);
            m3727new();
        }
        setImageList(this.f10501extends);
        this.f10517return = 1;
        if (this.f10522synchronized == null) {
            this.f10522synchronized = new Cif();
            this.f10492abstract.addOnPageChangeListener(this);
        }
        this.f10492abstract.setAdapter(this.f10522synchronized);
        this.f10492abstract.setFocusable(true);
        this.f10492abstract.setCurrentItem(1);
        int i3 = this.f10518static;
        if (i3 != -1) {
            this.f10510interface.setGravity(i3);
        }
        if (this.f10496class && this.f10516public > 1) {
            this.f10492abstract.setScrollable(true);
        } else {
            this.f10492abstract.setScrollable(false);
        }
        if (this.f10495catch) {
            m3722case();
        }
        return this;
    }

    public void update(List<?> list, List<String> list2) {
        this.f10499default.clear();
        this.f10499default.addAll(list2);
        update(list);
    }

    public void update(List<?> list) {
        this.f10501extends.clear();
        this.f10503finally.clear();
        this.f10513package.clear();
        this.f10501extends.addAll(list);
        this.f10516public = this.f10501extends.size();
        m3728try();
    }
}
