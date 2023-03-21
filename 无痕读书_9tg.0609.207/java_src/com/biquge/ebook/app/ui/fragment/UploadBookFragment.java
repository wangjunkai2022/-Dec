package com.biquge.ebook.app.ui.fragment;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompatJellybean;
import androidx.multidex.MultiDexExtractor;
import androidx.recyclerview.widget.ItemTouchHelper;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cgoto;
import com.apk.b40;
import com.apk.eg;
import com.apk.fc;
import com.apk.ft;
import com.apk.g6;
import com.apk.i6;
import com.apk.nz;
import com.apk.u;
import com.apk.u5;
import com.apk.v3;
import com.apk.wu;
import com.apk.yu;
import com.apk.ze;
import com.biquge.ebook.app.ui.activity.SelectFileActivity;
import com.biquge.ebook.app.widget.ClearEditText;
import com.hjq.toast.ToastUtils;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class UploadBookFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public boolean f7600do;

    /* renamed from: for  reason: not valid java name */
    public final u5 f7601for = new Cif();

    /* renamed from: if  reason: not valid java name */
    public v3 f7602if;
    @BindView(R.id.upload_file_indicator)
    public ScrollIndicatorView indicatorView;
    @BindView(R.id.upload_book_writer_txt)
    public ClearEditText mAuthorEt;
    @BindView(R.id.upload_book_cover)
    public ImageView mCoverIv;
    @BindView(R.id.upload_book_address_txt)
    public ClearEditText mLinkEt;
    @BindView(R.id.upload_book_name_txt)
    public ClearEditText mNameEt;
    @BindView(R.id.upload_book_select_file)
    public TextView mSelectFileTv;
    @BindView(R.id.upload_book_txt)
    public TextView mTxtTagView;

    /* renamed from: com.biquge.ebook.app.ui.fragment.UploadBookFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements b40.Cnew {
        public Cdo() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            if (i == 0) {
                UploadBookFragment.this.mLinkEt.setHint(ze.q(R.string.upload_book_input_linkurl));
                UploadBookFragment.this.mLinkEt.setVisibility(0);
                UploadBookFragment.this.mLinkEt.setFocusable(true);
                UploadBookFragment.this.mLinkEt.requestFocus();
                UploadBookFragment.this.mSelectFileTv.setVisibility(8);
                return;
            }
            UploadBookFragment.this.mSelectFileTv.setVisibility(0);
            UploadBookFragment.this.mNameEt.clearFocus();
            UploadBookFragment.this.mAuthorEt.clearFocus();
            UploadBookFragment.this.mLinkEt.setVisibility(8);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.UploadBookFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends u5 {

        /* renamed from: com.biquge.ebook.app.ui.fragment.UploadBookFragment$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements ft {
            public Cdo() {
            }

            @Override // com.apk.ft
            public void onClick() {
                UploadBookFragment.this.getSupportActivity().finish();
            }
        }

        public Cif() {
        }

        @Override // com.apk.u5
        /* renamed from: public */
        public void mo2683public(String str) {
            eg.j(UploadBookFragment.this.getSupportActivity(), str, new Cdo(), false, false);
        }
    }

    public static UploadBookFragment a(boolean z) {
        UploadBookFragment uploadBookFragment = new UploadBookFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("isBookSource", z);
        uploadBookFragment.setArguments(bundle);
        return uploadBookFragment;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3385synchronized(UploadBookFragment uploadBookFragment) {
        if (uploadBookFragment != null) {
            uploadBookFragment.startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 1);
            return;
        }
        throw null;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_upload_book;
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f7600do = arguments.getBoolean("isBookSource");
        }
        this.f7602if = new v3(getSupportActivity(), this.f7601for);
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        this.indicatorView.setAdapter(new nz(getSupportActivity(), new String[]{ze.q(R.string.upload_book_switch_input_url), ze.q(R.string.upload_book_switch_import)}, eg.m587catch(100.0f)));
        ze.u(getSupportActivity(), this.indicatorView, 30, 14);
        this.indicatorView.setOnItemSelectListener(new Cdo());
    }

    @OnClick({R.id.upload_book_file_bt, R.id.upload_book_select_file, R.id.upload_book_cover_layout})
    public void menuClick(View view) {
        final String trim;
        if (view.getId() == R.id.upload_book_file_bt) {
            final String m1022transient = Cgoto.m1022transient(this.mNameEt);
            final String m1022transient2 = Cgoto.m1022transient(this.mAuthorEt);
            if (TextUtils.isEmpty(m1022transient)) {
                ToastUtils.show((int) R.string.upload_book_name_txt_notnull_txt);
            } else if (TextUtils.isEmpty(m1022transient2)) {
                ToastUtils.show((int) R.string.upload_book_writer_txt_url_error_txt);
            } else {
                if (this.indicatorView.getCurrentItem() == 0) {
                    trim = Cgoto.m1022transient(this.mLinkEt);
                    if (!eg.m608protected("^([hH][tT]{2}[pP]:/*|[hH][tT]{2}[pP][sS]:/*|[fF][tT][pP]:/*)(([A-Za-z0-9-~]+).)+([A-Za-z0-9-~\\/])+(\\?{0,1}(([A-Za-z0-9-~]+\\={0,1})([A-Za-z0-9-~]*)\\&{0,1})*)$", trim)) {
                        ToastUtils.show((int) R.string.upload_book_name_txt_url_error_txt);
                        return;
                    }
                } else {
                    trim = this.mSelectFileTv.getText().toString().trim();
                    if (TextUtils.isEmpty(trim)) {
                        ToastUtils.show((int) R.string.upload_book_select_file_error_txt);
                        return;
                    }
                }
                final v3 v3Var = this.f7602if;
                if (v3Var != null) {
                    v3Var.m2017if();
                    new Handler().postDelayed(new Runnable() { // from class: com.apk.u2
                        @Override // java.lang.Runnable
                        public final void run() {
                            v3.this.m2767native(m1022transient, m1022transient2, trim);
                        }
                    }, ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
                }
            }
        } else if (view.getId() == R.id.upload_book_select_file) {
            Intent intent = new Intent(getSupportActivity(), SelectFileActivity.class);
            intent.putExtra(NotificationCompatJellybean.KEY_TITLE, ze.q(R.string.please_select_bt_txt));
            if (!this.f7600do) {
                intent.putExtra("fileType", MultiDexExtractor.EXTRACTED_SUFFIX);
            }
            startActivityForResult(intent, 11);
        } else if (view.getId() == R.id.upload_book_cover_layout) {
            yu yuVar = new yu(getSupportActivity());
            yuVar.m3120if(wu.f5403do);
            yuVar.m3119for(new fc(this));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        Uri data;
        int columnIndex;
        super.onActivityResult(i, i2, intent);
        if (i == 11 && i2 == -1) {
            if (intent != null) {
                String stringExtra = intent.getStringExtra("filePath");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                this.mSelectFileTv.setText(stringExtra);
            }
        } else if (i != 1 || intent == null || (data = intent.getData()) == null) {
        } else {
            i6 supportActivity = getSupportActivity();
            String str = null;
            String scheme = data.getScheme();
            if (scheme == null) {
                str = data.getPath();
            } else if ("file".equals(scheme)) {
                str = data.getPath();
            } else if ("content".equals(scheme)) {
                Cursor query = supportActivity.getContentResolver().query(data, new String[]{"_data"}, null, null, null);
                if (query != null) {
                    if (query.moveToFirst() && (columnIndex = query.getColumnIndex("_data")) > -1) {
                        str = query.getString(columnIndex);
                    }
                    query.close();
                }
                if (str == null) {
                    str = eg.m601import(supportActivity, data);
                }
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            u.m2660throws(str, this.mCoverIv);
            this.mTxtTagView.setVisibility(8);
        }
    }
}
