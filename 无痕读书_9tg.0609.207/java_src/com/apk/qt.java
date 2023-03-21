package com.apk;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.Serializable;
import java.net.NetworkInterface;
import java.util.Collections;
/* compiled from: DeviceInfoBean.java */
/* loaded from: classes8.dex */
public class qt implements Serializable {

    /* renamed from: case  reason: not valid java name */
    public String f3935case;

    /* renamed from: do  reason: not valid java name */
    public String f3936do;

    /* renamed from: else  reason: not valid java name */
    public String f3937else;

    /* renamed from: for  reason: not valid java name */
    public String f3938for;

    /* renamed from: if  reason: not valid java name */
    public String f3939if;

    /* renamed from: new  reason: not valid java name */
    public String f3940new;

    /* renamed from: try  reason: not valid java name */
    public String f3941try;

    /* renamed from: do  reason: not valid java name */
    public static String m2185do() {
        String readLine;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
            do {
                readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    return null;
                }
            } while (!readLine.contains("Hardware"));
            return readLine.split(":")[1];
        } catch (IOException unused) {
            return null;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static String m2186for(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }

    /* renamed from: if  reason: not valid java name */
    public static String m2187if() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    int length = hardwareAddress.length;
                    for (int i = 0; i < length; i++) {
                        sb.append(String.format("%02X:", Byte.valueOf(hardwareAddress[i])));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString().toLowerCase();
                }
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }
}
