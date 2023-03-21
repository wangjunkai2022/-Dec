package com.tr.comment.sdk.commons.widget;

import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.d90;
import com.apk.ga0;
import com.apk.ha0;
import com.apk.la0;
import com.apk.r80;
import com.apk.y80;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
import com.tr.comment.sdk.TrCommentSdk;
import java.util.List;
/* loaded from: classes7.dex */
public class TrEmojiLayout extends FrameLayout {

    /* renamed from: do  reason: not valid java name */
    public EditText f10337do;

    /* renamed from: com.tr.comment.sdk.commons.widget.TrEmojiLayout$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo extends y80<ga0> {
        public Cdo(Context context, List<ga0> list, boolean z) {
            super(context, list, z);
        }

        @Override // com.apk.y80
        /* renamed from: native */
        public void mo953native(r80 r80Var, ga0 ga0Var, int i) {
            r80Var.m2253for(R$id.tr_sdk_item_emoji_iv, ga0Var.f1540for);
        }

        @Override // com.apk.y80
        /* renamed from: public */
        public int mo954public() {
            return R$layout.tr_sdk_emoji_item_view;
        }
    }

    public TrEmojiLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater.from(getContext()).inflate(R$layout.tr_sdk_emoji_layout, this);
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.tr_sdk_emoji_layout_rv);
        recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 7));
        recyclerView.setHasFixedSize(true);
        Cdo cdo = new Cdo(getContext(), ha0.f1821if, false);
        recyclerView.setAdapter(cdo);
        cdo.f5875throw = new d90(this, cdo);
    }

    /* renamed from: do  reason: not valid java name */
    public static void m3693do(TrEmojiLayout trEmojiLayout, String str) {
        EditText editText = trEmojiLayout.f10337do;
        if (editText == null) {
            return;
        }
        Editable text = editText.getText();
        if (str.equals("/DEL")) {
            trEmojiLayout.f10337do.dispatchKeyEvent(new KeyEvent(0, 67));
            return;
        }
        int selectionStart = trEmojiLayout.f10337do.getSelectionStart();
        int selectionEnd = trEmojiLayout.f10337do.getSelectionEnd();
        if (selectionStart < 0) {
            selectionStart = 0;
        }
        if (selectionStart < 0) {
            selectionEnd = 0;
        }
        text.replace(selectionStart, selectionEnd, str);
        int selectionEnd2 = trEmojiLayout.f10337do.getSelectionEnd();
        la0.m1619try(TrCommentSdk.getAppContext(), text, 0, text.toString().length());
        trEmojiLayout.f10337do.setText(text);
        trEmojiLayout.f10337do.setSelection(selectionEnd2);
    }
}
