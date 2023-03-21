package com.bun.miitmdid.content;

import android.text.TextUtils;
import com.google.android.material.internal.ManufacturerUtils;

/* loaded from: classes8.dex */
public class ProviderList {

    /* loaded from: classes8.dex */
    public enum DEVICE_PROVIDER {
        UNSUPPORT(-1, "unsupport"),
        HUA_WEI(0, "HUAWEI"),
        XIAOMI(1, "Xiaomi"),
        VIVO(2, "vivo"),
        OPPO(3, "oppo"),
        MOTO(4, "motorola"),
        LENOVO(5, "lenovo"),
        ASUS(6, "asus"),
        SAMSUNG(7, ManufacturerUtils.SAMSUNG),
        MEIZU(8, ManufacturerUtils.MEIZU),
        NUBIA(10, "nubia"),
        ZTE(11, "ZTE"),
        ONEPLUS(12, "OnePlus"),
        BLACKSHARK(13, "blackshark"),
        FREEMEOS(30, "freemeos"),
        SSUIOS(31, "ssui");
        
        public int index;
        public String name;

        DEVICE_PROVIDER(int i, String str) {
            this.index = i;
            this.name = str;
        }

        public static DEVICE_PROVIDER fromName(String str) {
            DEVICE_PROVIDER[] values;
            if (TextUtils.isEmpty(str)) {
                return UNSUPPORT;
            }
            for (DEVICE_PROVIDER device_provider : values()) {
                if (device_provider.name.equalsIgnoreCase(str)) {
                    return device_provider;
                }
            }
            return UNSUPPORT;
        }
    }
}
