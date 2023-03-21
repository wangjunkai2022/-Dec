package com.biquge.ebook.app.ui.view;

import android.app.Activity;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cgoto;
import com.apk.eg;
import com.apk.g2;
import com.apk.nz;
import com.apk.vs0;
import com.apk.ze;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.biquge.ebook.app.widget.ExampleFontTextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lxj.xpopup.impl.FullScreenPopupView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
import top.defaults.colorpicker.ColorPickerView;

/* loaded from: classes8.dex */
public class RedBgColorDialog extends FullScreenPopupView implements View.OnClickListener {

    /* renamed from: break  reason: not valid java name */
    public ExampleFontTextView f7755break;

    /* renamed from: catch  reason: not valid java name */
    public ScrollIndicatorView f7756catch;

    /* renamed from: class  reason: not valid java name */
    public ColorPickerView f7757class;

    /* renamed from: const  reason: not valid java name */
    public String f7758const;

    /* renamed from: else  reason: not valid java name */
    public final Activity f7759else;

    /* renamed from: final  reason: not valid java name */
    public String f7760final;

    /* renamed from: goto  reason: not valid java name */
    public LinearLayout f7761goto;

    /* renamed from: this  reason: not valid java name */
    public ImageView f7762this;

    /* renamed from: com.biquge.ebook.app.ui.view.RedBgColorDialog$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Cfor f7763do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ RecyclerView f7765if;

        public Cdo(Cfor cfor, RecyclerView recyclerView) {
            this.f7763do = cfor;
            this.f7765if = recyclerView;
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (i == this.f7763do.getItemCount() - 1) {
                RedBgColorDialog.this.f7761goto.setVisibility(0);
                this.f7765if.setVisibility(8);
                return;
            }
            RedBgImageBean item = this.f7763do.getItem(i);
            if (RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR.equals(item.getType())) {
                if (g2.m909case() == 2) {
                    return;
                }
                g2.m930throws(item.getBgColor(), item.getfColor(), false);
            } else if (g2.m912const() == i) {
                return;
            } else {
                g2.m925package(i);
            }
            this.f7763do.notifyDataSetChanged();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.RedBgColorDialog$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor extends BaseQuickAdapter<RedBgImageBean, BaseViewHolder> {
        public Cfor(Cdo cdo) {
            super((int) R.layout.item_red_bg_color_layout);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, RedBgImageBean redBgImageBean) {
            RedBgImageBean redBgImageBean2 = redBgImageBean;
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_image_color_iv);
            ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.item_image_iv);
            if (redBgImageBean2.getsId() != 0) {
                imageView.setImageResource(redBgImageBean2.getsId());
                imageView.setVisibility(0);
                imageView2.setVisibility(8);
            } else {
                imageView2.setBackgroundColor(Color.parseColor(redBgImageBean2.getBgColor()));
                imageView.setVisibility(8);
                imageView2.setVisibility(0);
            }
            baseViewHolder.setText(R.id.item_name_tv, redBgImageBean2.getName());
            baseViewHolder.setVisible(R.id.item_bg_chose_color_view, false);
            if (RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR.equals(redBgImageBean2.getType())) {
                if (g2.m909case() == 2) {
                    baseViewHolder.setVisible(R.id.item_bg_chose_color_view, true);
                }
            } else if (baseViewHolder.getLayoutPosition() == g2.m912const()) {
                baseViewHolder.setVisible(R.id.item_bg_chose_color_view, true);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.RedBgColorDialog$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements vs0 {
        public Cif() {
        }

        @Override // com.apk.vs0
        /* renamed from: do */
        public void mo2836do(int i, boolean z, boolean z2) {
            if (RedBgColorDialog.this.f7756catch.getCurrentItem() == 0) {
                RedBgColorDialog.this.f7762this.setBackgroundColor(i);
                RedBgColorDialog.this.f7758const = RedBgColorDialog.m3418this(i);
                return;
            }
            RedBgColorDialog.this.f7755break.setFontColor(i);
            RedBgColorDialog.this.f7760final = RedBgColorDialog.m3418this(i);
        }
    }

    public RedBgColorDialog(@NonNull Activity activity) {
        super(activity);
        this.f7758const = "#FFFFFF";
        this.f7760final = "#333333";
        this.f7759else = activity;
    }

    /* renamed from: this  reason: not valid java name */
    public static String m3418this(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        String hexString = Integer.toHexString(Color.red(i));
        String hexString2 = Integer.toHexString(Color.green(i));
        String hexString3 = Integer.toHexString(Color.blue(i));
        if (hexString.length() == 1) {
            hexString = Cgoto.m989case(SpeechSynthesizer.REQUEST_DNS_OFF, hexString);
        }
        if (hexString2.length() == 1) {
            hexString2 = Cgoto.m989case(SpeechSynthesizer.REQUEST_DNS_OFF, hexString2);
        }
        if (hexString3.length() == 1) {
            hexString3 = Cgoto.m989case(SpeechSynthesizer.REQUEST_DNS_OFF, hexString3);
        }
        stringBuffer.append(hexString);
        stringBuffer.append(hexString2);
        stringBuffer.append(hexString3);
        return "#" + stringBuffer.toString();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.dialog_red_bg_custom;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.back_view) {
            dismiss();
        } else if (view.getId() == R.id.custom_bg_reset) {
            ColorPickerView colorPickerView = this.f7757class;
            colorPickerView.f10574do.m3246for(colorPickerView.f10573case, true);
            RedBgImageBean m916else = g2.m916else();
            this.f7758const = m916else.getBgColor();
            this.f7760final = m916else.getfColor();
            this.f7762this.setBackgroundColor(Color.parseColor(this.f7758const));
            this.f7755break.setFontColor(Color.parseColor(this.f7760final));
            this.f7756catch.setCurrentItem(0);
            this.f7757class.setInitialColor(Color.parseColor(this.f7758const));
        } else if (view.getId() == R.id.custom_bg_ok) {
            g2.m930throws(this.f7758const, this.f7760final, true);
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.red_backgroup_rv);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new GridLayoutManager(this.f7759else, 3));
        Cfor cfor = new Cfor(null);
        recyclerView.setAdapter(cfor);
        List find = LitePal.where("type = ?", RedBgImageBean.RED_BG_TYPE_COLOR).find(RedBgImageBean.class);
        if (find != null) {
            RedBgImageBean m924new = g2.m924new();
            if (m924new != null) {
                find.add(m924new);
            }
            RedBgImageBean redBgImageBean = new RedBgImageBean();
            redBgImageBean.setType(RedBgImageBean.RED_BG_TYPE_COLOR);
            redBgImageBean.setsId(R.drawable.icon_custom_color);
            redBgImageBean.setName(ze.q(R.string.read_bg_custom_color_txt));
            find.add(redBgImageBean);
            cfor.setNewData(find);
        }
        cfor.setOnItemClickListener(new Cdo(cfor, recyclerView));
        this.f7761goto = (LinearLayout) findViewById(R.id.dialog_custom_layout);
        this.f7762this = (ImageView) findViewById(R.id.custom_view_bg);
        this.f7755break = (ExampleFontTextView) findViewById(R.id.custom_view_font);
        ScrollIndicatorView scrollIndicatorView = (ScrollIndicatorView) findViewById(R.id.custom_bg_indicator);
        this.f7756catch = scrollIndicatorView;
        scrollIndicatorView.setAdapter(new nz(this.f7759else, new String[]{"背景", "字体"}, eg.m587catch(60.0f)));
        ze.u(getContext(), this.f7756catch, 30, 15);
        this.f7757class = (ColorPickerView) findViewById(R.id.custom_colorPickerView);
        RedBgImageBean m924new2 = g2.m924new();
        if (m924new2 != null) {
            this.f7758const = m924new2.getBgColor();
            this.f7760final = m924new2.getfColor();
        } else {
            RedBgImageBean m916else = g2.m916else();
            this.f7758const = m916else.getBgColor();
            this.f7760final = m916else.getfColor();
        }
        this.f7762this.setBackgroundColor(Color.parseColor(this.f7758const));
        this.f7755break.setFontColor(Color.parseColor(this.f7760final));
        this.f7757class.setInitialColor(Color.parseColor(this.f7758const));
        ColorPickerView colorPickerView = this.f7757class;
        Cif cif = new Cif();
        colorPickerView.f10579new.mo2619if(cif);
        colorPickerView.f10580this.add(cif);
        findViewById(R.id.custom_bg_reset).setOnClickListener(this);
        findViewById(R.id.custom_bg_ok).setOnClickListener(this);
        findViewById(R.id.back_view).setOnClickListener(this);
    }
}
