package com.biquge.ebook.app.ui.view;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cgoto;
import com.apk.a6;
import com.apk.da;
import com.apk.ed;
import com.apk.eg;
import com.apk.fd;
import com.apk.g2;
import com.apk.kf;
import com.apk.mf;
import com.apk.nz;
import com.apk.rl0;
import com.apk.rt;
import com.apk.tt;
import com.apk.u;
import com.apk.vs0;
import com.apk.wu;
import com.apk.yu;
import com.apk.ze;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.DownloadFileModel;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.biquge.ebook.app.widget.ExampleFontTextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lxj.xpopup.impl.FullScreenPopupView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
import top.defaults.colorpicker.ColorPickerView;
/* loaded from: classes8.dex */
public class RedBgImageDialog extends FullScreenPopupView implements View.OnClickListener {

    /* renamed from: break  reason: not valid java name */
    public String f7767break;

    /* renamed from: catch  reason: not valid java name */
    public String f7768catch;

    /* renamed from: else  reason: not valid java name */
    public final Activity f7769else;

    /* renamed from: goto  reason: not valid java name */
    public LinearLayout f7770goto;

    /* renamed from: this  reason: not valid java name */
    public Cnew f7771this;

    /* renamed from: com.biquge.ebook.app.ui.view.RedBgImageDialog$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemClickListener {
        public Cdo() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (i == RedBgImageDialog.this.f7771this.getItemCount() - 1) {
                RedBgImageDialog redBgImageDialog = RedBgImageDialog.this;
                yu yuVar = new yu(redBgImageDialog.f7769else);
                yuVar.m3120if(wu.f5403do);
                yuVar.m3119for(new fd(redBgImageDialog));
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.RedBgImageDialog$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements vs0 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ExampleFontTextView f7773do;

        public Cfor(ExampleFontTextView exampleFontTextView) {
            this.f7773do = exampleFontTextView;
        }

        @Override // com.apk.vs0
        /* renamed from: do */
        public void mo2836do(int i, boolean z, boolean z2) {
            this.f7773do.setFontColor(i);
            RedBgImageDialog.this.f7767break = RedBgImageDialog.m3420catch(i);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.RedBgImageDialog$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.OnItemChildClickListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            try {
                RedBgImageBean item = RedBgImageDialog.this.f7771this.getItem(i);
                if (item != null) {
                    if (RedBgImageBean.RED_BG_TYPE_CUSTOM_IMAGE.equals(item.getType())) {
                        if (g2.m909case() == 4) {
                            return;
                        }
                        g2.m914default(item.getBgImage(), item.getfColor(), false);
                        RedBgImageDialog.this.f7771this.notifyDataSetChanged();
                        return;
                    }
                    String bgImage = item.getBgImage();
                    String fileName = item.getFileName();
                    String m2620do = tt.m2620do("SP_READ_BG_IMAGE_ID_KEY" + item.getBgImage(), "");
                    if (!TextUtils.isEmpty(m2620do) && new File(m2620do).exists()) {
                        if (g2.m918final() == i) {
                            return;
                        }
                        g2.m913continue(i);
                        g2.m907abstract(-1);
                        da.m434switch(false);
                        da.m432static(false);
                        g2.m926private(3);
                        mf mfVar = new mf();
                        mfVar.f3028do = "backgorund_view_id";
                        rl0.m2304if().m2310else(mfVar);
                        RedBgImageDialog.this.f7771this.notifyDataSetChanged();
                        return;
                    }
                    RedBgImageDialog.m3421this(RedBgImageDialog.this, bgImage, fileName);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.RedBgImageDialog$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cnew extends BaseQuickAdapter<RedBgImageBean, BaseViewHolder> {

        /* renamed from: do  reason: not valid java name */
        public final String f7776do;

        /* renamed from: for  reason: not valid java name */
        public final String f7777for;

        /* renamed from: if  reason: not valid java name */
        public final String f7778if;

        /* renamed from: new  reason: not valid java name */
        public final String f7779new;

        public Cnew(Cdo cdo) {
            super((int) R.layout.item_red_bg_image_layout);
            this.f7776do = ze.q(R.string.download_txt);
            this.f7778if = ze.q(R.string.txt_download_task_downloading_txt);
            this.f7777for = ze.q(R.string.read_set_font_begin_start_txt);
            this.f7779new = ze.q(R.string.read_set_font_in_txt);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00a6  */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void convert(@androidx.annotation.NonNull com.chad.library.adapter.base.BaseViewHolder r9, com.biquge.ebook.app.bean.RedBgImageBean r10) {
            /*
                r8 = this;
                com.biquge.ebook.app.bean.RedBgImageBean r10 = (com.biquge.ebook.app.bean.RedBgImageBean) r10
                r0 = 2131297016(0x7f0902f8, float:1.8211965E38)
                android.view.View r0 = r9.getView(r0)
                android.widget.ImageView r0 = (android.widget.ImageView) r0
                r1 = 2131297119(0x7f09035f, float:1.8212174E38)
                android.view.View r2 = r9.getView(r1)
                android.widget.TextView r2 = (android.widget.TextView) r2
                java.lang.String r3 = r10.getName()
                r4 = 2131297029(0x7f090305, float:1.8211991E38)
                r9.setText(r4, r3)
                java.lang.String r3 = r10.getType()
                java.lang.String r4 = "6"
                boolean r3 = r4.equals(r3)
                r4 = 1
                r5 = 0
                if (r3 == 0) goto L41
                java.lang.String r3 = r10.getBgImage()
                com.apk.u.m2660throws(r3, r0)
                r2.setVisibility(r5)
                int r0 = com.apk.g2.m909case()
                r3 = 4
                if (r0 != r3) goto L3f
                r0 = 1
                goto L92
            L3f:
                r0 = 0
                goto L92
            L41:
                int r3 = r10.getsId()
                if (r3 == 0) goto L54
                int r3 = r10.getsId()
                r0.setImageResource(r3)
                r0 = 8
                r2.setVisibility(r0)
                goto L62
            L54:
                java.lang.String r3 = r10.getIcon()
                r6 = 2131231267(0x7f080223, float:1.807861E38)
                r7 = 0
                com.apk.u.m2654return(r3, r0, r6, r7, r5)
                r2.setVisibility(r5)
            L62:
                int r0 = r9.getLayoutPosition()
                int r3 = com.apk.g2.m918final()
                if (r0 != r3) goto L6e
                r0 = 1
                goto L6f
            L6e:
                r0 = 0
            L6f:
                java.lang.String r3 = "SP_READ_BG_IMAGE_ID_KEY"
                java.lang.StringBuilder r3 = com.apk.Cgoto.m1016super(r3)
                java.lang.String r6 = r10.getBgImage()
                r3.append(r6)
                java.lang.String r3 = r3.toString()
                java.lang.String r6 = ""
                java.lang.String r3 = com.apk.tt.m2620do(r3, r6)
                boolean r6 = android.text.TextUtils.isEmpty(r3)
                if (r6 != 0) goto L94
                boolean r3 = com.apk.Cgoto.m1024volatile(r3)
                if (r3 == 0) goto L94
            L92:
                r3 = 1
                goto L95
            L94:
                r3 = 0
            L95:
                r6 = 2131231178(0x7f0801ca, float:1.807843E38)
                if (r0 == 0) goto La6
                r2.setBackgroundResource(r6)
                r2.setEnabled(r5)
                java.lang.String r10 = r8.f7779new
                r2.setText(r10)
                goto Ld6
            La6:
                if (r3 == 0) goto Lb7
                r10 = 2131231084(0x7f08016c, float:1.807824E38)
                r2.setBackgroundResource(r10)
                r2.setEnabled(r4)
                java.lang.String r10 = r8.f7777for
                r2.setText(r10)
                goto Ld6
            Lb7:
                r2.setBackgroundResource(r6)
                r2.setEnabled(r4)
                com.apk.kf r3 = com.apk.kf.m1487try()
                java.lang.String r10 = r10.getBgImage()
                boolean r10 = r3.m1489else(r10)
                if (r10 == 0) goto Ld1
                java.lang.String r10 = r8.f7778if
                r2.setText(r10)
                goto Ld6
            Ld1:
                java.lang.String r10 = r8.f7776do
                r2.setText(r10)
            Ld6:
                r10 = 2131296947(0x7f0902b3, float:1.8211825E38)
                r9.setVisible(r10, r0)
                int[] r10 = new int[r4]
                r10[r5] = r1
                r9.addOnClickListener(r10)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.view.RedBgImageDialog.Cnew.convert(com.chad.library.adapter.base.BaseViewHolder, java.lang.Object):void");
        }
    }

    public RedBgImageDialog(@NonNull Activity activity) {
        super(activity);
        this.f7767break = "#333333";
        this.f7769else = activity;
    }

    /* renamed from: break  reason: not valid java name */
    public static void m3419break(RedBgImageDialog redBgImageDialog) {
        if (redBgImageDialog != null) {
            redBgImageDialog.f7769else.startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 1023);
            return;
        }
        throw null;
    }

    /* renamed from: catch  reason: not valid java name */
    public static String m3420catch(int i) {
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

    /* renamed from: this  reason: not valid java name */
    public static void m3421this(RedBgImageDialog redBgImageDialog, String str, String str2) {
        if (redBgImageDialog != null) {
            if (kf.m1487try().m1489else(str)) {
                return;
            }
            DownloadFileModel downloadFileModel = new DownloadFileModel();
            downloadFileModel.url = str;
            downloadFileModel.name = str2;
            downloadFileModel.isShowNotice = false;
            downloadFileModel.isShowToast = false;
            downloadFileModel.isInstall = false;
            kf.m1484if(redBgImageDialog.f7769else, downloadFileModel, new ed(redBgImageDialog, str));
            kf m1487try = kf.m1487try();
            if (m1487try.f2526do == null) {
                m1487try.f2526do = new HashMap();
            }
            m1487try.f2526do.put(str, null);
            Cnew cnew = redBgImageDialog.f7771this;
            if (cnew != null) {
                cnew.notifyDataSetChanged();
                return;
            }
            return;
        }
        throw null;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.dialog_red_bg_custom;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.back_view) {
            dismiss();
        } else if (view.getId() == R.id.custom_bg_ok) {
            try {
                File file = new File(a6.m18else().m25try(), rt.m2362if(this.f7768catch));
                ze.m3157break(new File(this.f7768catch), file);
                g2.m914default(file.getAbsolutePath(), this.f7767break, true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.red_backgroup_rv);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new GridLayoutManager(this.f7769else, 2));
        Cnew cnew = new Cnew(null);
        this.f7771this = cnew;
        recyclerView.setAdapter(cnew);
        this.f7771this.setOnItemClickListener(new Cdo());
        this.f7771this.setOnItemChildClickListener(new Cif());
        this.f7770goto = (LinearLayout) findViewById(R.id.dialog_custom_layout);
        findViewById(R.id.back_view).setOnClickListener(this);
        findViewById(R.id.custom_bg_ok).setOnClickListener(this);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onShow() {
        super.onShow();
        List find = LitePal.where("type = ?", "3").find(RedBgImageBean.class);
        if (find != null) {
            RedBgImageBean m931try = g2.m931try();
            if (m931try != null) {
                find.add(m931try);
            }
            RedBgImageBean redBgImageBean = new RedBgImageBean();
            redBgImageBean.setType("3");
            redBgImageBean.setsId(R.drawable.bg_red_personality);
            redBgImageBean.setBgColor("#50000000");
            redBgImageBean.setName(ze.q(R.string.read_bg_custom_image_txt));
            find.add(redBgImageBean);
            Cnew cnew = this.f7771this;
            if (cnew != null) {
                cnew.setNewData(find);
            }
        }
    }

    public void setCotomImage(String str) {
        this.f7768catch = str;
        u.m2657switch(str, this.f7770goto);
        this.f7770goto.setVisibility(0);
        ExampleFontTextView exampleFontTextView = (ExampleFontTextView) findViewById(R.id.custom_view_font);
        exampleFontTextView.setFontColor(ViewCompat.MEASURED_STATE_MASK);
        ScrollIndicatorView scrollIndicatorView = (ScrollIndicatorView) findViewById(R.id.custom_bg_indicator);
        scrollIndicatorView.setAdapter(new nz(this.f7769else, new String[]{"字体"}, eg.m587catch(60.0f)));
        ze.u(this.f7769else, scrollIndicatorView, 30, 15);
        ColorPickerView colorPickerView = (ColorPickerView) findViewById(R.id.custom_colorPickerView);
        Cfor cfor = new Cfor(exampleFontTextView);
        colorPickerView.f10579new.mo2619if(cfor);
        colorPickerView.f10580this.add(cfor);
        colorPickerView.setInitialColor(Color.parseColor("#E8D8B7"));
        findViewById(R.id.custom_bg_reset).setVisibility(8);
    }
}
