package com.apk;

import android.view.View;
import java.util.Calendar;
import kimi.wuhends.ebooks.R;
/* compiled from: NoDoubleClickListener.java */
/* loaded from: classes8.dex */
public abstract class bg implements View.OnClickListener {
    public static int MIN_CLICK_DELAY_TIME = 500;
    public long lastClickTime = 0;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = MIN_CLICK_DELAY_TIME;
        if (view.getId() == R.id.book_read_menu_novel_list_bt) {
            i = MIN_CLICK_DELAY_TIME;
        } else if (view.getId() == R.id.edit_select_all_bt || view.getId() == R.id.edit_delete_bt || view.getId() == R.id.read_menu_day_night_switch_bt || view.getId() == R.id.read_menu_web_day_night_switch_bt) {
            i = 80;
        }
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (timeInMillis - this.lastClickTime > i) {
            this.lastClickTime = timeInMillis;
            onNoDoubleClick(view);
        }
    }

    public abstract void onNoDoubleClick(View view);

    public void setTimeOut(int i) {
        MIN_CLICK_DELAY_TIME = i;
    }
}
