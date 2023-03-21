package com.bytedance.pangle.transform;

import androidx.annotation.Keep;
import androidx.fragment.app.FragmentActivity;

@Keep
/* loaded from: classes8.dex */
public class HostPartUtils {
    public Class fragmentActivityClazz;

    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final HostPartUtils f11383a;

        static {
            System.out.println("HostPartUtils SingletonHolder");
            f11383a = new HostPartUtils();
        }
    }

    public HostPartUtils() {
        try {
            this.fragmentActivityClazz = FragmentActivity.class;
        } catch (Throwable unused) {
        }
    }

    public static FragmentActivity getFragmentActivity(Object obj, String str) {
        return (FragmentActivity) ZeusTransformUtils._getActivity(obj, str);
    }

    public static final Class getFragmentActivityClass() {
        System.out.println("HostPartUtils getFragmentActivityClass");
        return a.f11383a.fragmentActivityClazz;
    }
}
