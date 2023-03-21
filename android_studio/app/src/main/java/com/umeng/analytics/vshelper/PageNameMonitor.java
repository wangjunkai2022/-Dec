package com.umeng.analytics.vshelper;

/* loaded from: classes7.dex */
public class PageNameMonitor implements com.umeng.analytics.vshelper.a {
    public static String currentActivity;
    public static String currentCustomPage;
    public static Object lock = new Object();

    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final PageNameMonitor f12238a = new PageNameMonitor();
    }

    public static PageNameMonitor getInstance() {
        return a.f12238a;
    }

    @Override // com.umeng.analytics.vshelper.a
    public void activityPause(String str) {
        synchronized (lock) {
            currentActivity = null;
        }
    }

    @Override // com.umeng.analytics.vshelper.a
    public void activityResume(String str) {
        synchronized (lock) {
            currentActivity = str;
        }
    }

    @Override // com.umeng.analytics.vshelper.a
    public void customPageBegin(String str) {
        synchronized (lock) {
            currentCustomPage = str;
        }
    }

    @Override // com.umeng.analytics.vshelper.a
    public void customPageEnd(String str) {
        synchronized (lock) {
            currentCustomPage = null;
        }
    }

    public String getCurrenPageName() {
        synchronized (lock) {
            if (currentCustomPage != null) {
                return currentCustomPage;
            } else if (currentActivity != null) {
                return currentActivity;
            } else {
                return null;
            }
        }
    }

    public PageNameMonitor() {
    }
}
