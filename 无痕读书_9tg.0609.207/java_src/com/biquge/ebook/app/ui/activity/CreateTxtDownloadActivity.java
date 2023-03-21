package com.biquge.ebook.app.ui.activity;

import android.text.TextUtils;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.multidex.MultiDexExtractor;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cgoto;
import com.apk.f6;
import com.apk.kf;
import com.apk.ze;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.TaskInfo;
import com.biquge.ebook.app.ui.webread.ui.WebReadActivity;
import com.hjq.toast.ToastUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class CreateTxtDownloadActivity extends f6 {
    @BindView(R.id.create_download_title_txt)
    public AppCompatEditText mTitleET;
    @BindView(R.id.create_download_url_txt)
    public AppCompatEditText mUrlET;

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_create_download_txt;
    }

    @Override // com.apk.f6
    public void initData() {
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_create_download_txt_actionbar, R.string.create_txt_download_task_txt);
    }

    @OnClick({R.id.create_download_file_bt})
    public void menuClick() {
        String trim = this.mTitleET.getText().toString().trim();
        String trim2 = this.mUrlET.getText().toString().trim();
        if (TextUtils.isEmpty(trim2)) {
            ToastUtils.show((int) R.string.create_txt_download_txt_notnull_txt);
            return;
        }
        String decode = URLDecoder.decode(trim2);
        if (!decode.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP) && !decode.startsWith("HTTP")) {
            ToastUtils.show((int) R.string.create_txt_download_txt_url_error_txt);
            return;
        }
        if (!ze.I(decode) && !ze.J(decode)) {
            WebReadActivity.j(this, decode, true, false, "txt下载");
            return;
        }
        if (TextUtils.isEmpty(trim)) {
            try {
                trim = decode.substring(decode.contains("/") ? decode.lastIndexOf("/") + 1 : 0, decode.contains(".") ? decode.lastIndexOf(".") : 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (!TextUtils.isEmpty(trim)) {
            try {
                trim = URLDecoder.decode(trim, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        if (ze.I(decode)) {
            if (!ze.I(trim)) {
                trim = Cgoto.m989case(trim, ".txt");
            }
        } else if (!ze.J(trim)) {
            trim = Cgoto.m989case(trim, MultiDexExtractor.EXTRACTED_SUFFIX);
        }
        if (kf.m1486this(new TaskInfo(trim, decode))) {
            setResult(-1);
            ze.m3170goto(this);
            finish();
        }
    }
}
