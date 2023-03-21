package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import android.os.SystemClock;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.f0;
import com.apk.Cgoto;
import com.apk.eg;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.error.AdBreakError;
import com.bytedance.msdk.api.error.AdFreqError;
import com.bytedance.msdk.api.error.AdPacingError;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.base.TTBaseAd;
import com.google.zxing.maxicode.decoder.DecodedBitStreamParser;
import com.umeng.analytics.pro.ak;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AdEventUtil.java */
/* loaded from: classes8.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static int f10959a;
    public static int b;
    public static int c;

    public static void a() {
        d b2 = d.b();
        b2.e("apm_sdk_init");
        HashMap hashMap = new HashMap();
        JSONArray c2 = c0.c();
        if (c2 != null) {
            c2.length();
            hashMap.put("sp_v3_bug", c2);
        }
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, hashMap);
    }

    public static void a(int i, int i2, long j, boolean z) {
        d b2 = d.b();
        boolean a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c.J().a("is_config_from_assert");
        if (i != 1) {
            i = (z || (i == 0 && a2)) ? 2 : 0;
        }
        b2.e(i).a(j).e("get_config_final").g(i2);
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, null);
    }

    public static void a(long j) {
        d b2 = d.b();
        b2.e("sdk_backstage").a(j);
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, null);
    }

    public static void a(long j, int i, int i2, long j2) {
        d b2 = d.b();
        b2.e("sdk_init_end");
        b2.a(j);
        b2.b(j2);
        b2.a("adn_count", Integer.valueOf(i));
        HashMap hashMap = new HashMap();
        hashMap.put("is_from_local_config", Integer.valueOf(i2));
        hashMap.put("adapter_version_list", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.f.a());
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, hashMap);
    }

    public static void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, AdSlot adSlot, int i, int i2) {
        d b2 = d.b();
        b2.e("adapter_request_fail").a(0L).a((String) null).c(AdError.ERROR_ADN_NO_ERROR_CODE).d("adapter create fail !").a("mediationrit_req_type", Integer.valueOf(i)).a("mediationrit_req_type_src", Integer.valueOf(i2));
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, iVar, null, hashMap, b2, hashMap);
    }

    public static void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, AdSlot adSlot, TTBaseAd tTBaseAd, int i, String str) {
        d b2 = d.b();
        d a2 = b2.e("bidding_info_invalid").c(i).d(str).a("ad_count", Integer.valueOf(adSlot != null ? adSlot.getAdCount() : 0));
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f());
        a2.a("grouping_params", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b.k()).a("log_source", 2);
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, iVar, tTBaseAd, hashMap, b2, hashMap);
        while (true) {
            for (char c2 = '`'; c2 != '^'; c2 = '^') {
                if (c2 != '`') {
                    break;
                }
            }
            return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001a, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i r7, com.bytedance.msdk.api.AdSlot r8, java.lang.String r9) {
        /*
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r5 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d.b()
            java.lang.String r0 = "get_bidding_adm_to_adn"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r0 = r5.e(r0)
            r0.a(r9)
            java.util.HashMap r6 = new java.util.HashMap
            r6.<init>()
            r3 = 0
            r0 = r5
            r1 = r8
            r2 = r7
            r4 = r6
            com.apk.Cgoto.m1013return(r0, r1, r2, r3, r4, r5, r6)
        L1a:
            r7 = 73
            r8 = 96
        L1e:
            switch(r7) {
                case 72: goto L2a;
                case 73: goto L22;
                case 74: goto L25;
                default: goto L21;
            }
        L21:
            goto L2f
        L22:
            switch(r8) {
                case 94: goto L1a;
                case 95: goto L2a;
                case 96: goto L2a;
                default: goto L25;
            }
        L25:
            switch(r8) {
                case 55: goto L29;
                case 56: goto L29;
                case 57: goto L2a;
                default: goto L28;
            }
        L28:
            goto L1a
        L29:
            return
        L2a:
            r7 = 74
            r8 = 55
            goto L1e
        L2f:
            r7 = 72
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i, com.bytedance.msdk.api.AdSlot, java.lang.String):void");
    }

    public static void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, AdSlot adSlot, String str, boolean z, int i, int i2, int i3, int i4, AdError adError, long j) {
        d b2 = d.b();
        if ((adError instanceof AdPacingError) || (adError instanceof AdFreqError) || (adError instanceof AdBreakError)) {
            b2.c(adError.code).d(adError.message);
        }
        b2.e("media_request").a(str).a("ad_count", Integer.valueOf(adSlot != null ? adSlot.getAdCount() : 0)).a("adn_count", Integer.valueOf(i2)).a("mediationrit_req_type", Integer.valueOf(i3)).a("mediationrit_req_type_src", Integer.valueOf(i4)).a("mediation_req_type", Integer.valueOf(!z ? 1 : 0)).a("media_req_type", Integer.valueOf(i));
        HashMap hashMap = new HashMap();
        if (j != -1) {
            hashMap.put(com.umeng.analytics.pro.d.p, Long.valueOf(SystemClock.elapsedRealtime() - j));
        }
        Cgoto.m1013return(b2, adSlot, iVar, null, hashMap, b2, hashMap);
        while (true) {
            for (char c2 = '\b'; c2 != 7; c2 = '\t') {
                if (c2 != '\b' && c2 == '\t') {
                    return;
                }
            }
        }
    }

    public static void a(d dVar) {
        dVar.a("block_pacing", "-1");
        dVar.a("waterfall_show_rule_id", "-1");
        dVar.a("block_show_count", "-1");
        while (true) {
            char c2 = ']';
            char c3 = ']';
            while (true) {
                switch (c2) {
                    case '\\':
                        switch (c3) {
                        }
                        c2 = '^';
                        c3 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c3) {
                                default:
                                    c3 = '[';
                                case '[':
                                case '\\':
                                case ']':
                                    break;
                            }
                        }
                        c2 = '^';
                        c3 = 'K';
                    case '^':
                        if (c3 <= 4) {
                            break;
                        } else {
                            return;
                        }
                }
            }
        }
    }

    public static void a(d dVar, AdSlot adSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, TTBaseAd tTBaseAd) {
        a(dVar, adSlot, iVar, tTBaseAd, (Map<String, Object>) null);
        while (true) {
            char c2 = ']';
            char c3 = ']';
            while (true) {
                switch (c2) {
                    case '\\':
                        switch (c3) {
                            case 21:
                                return;
                        }
                        c2 = '^';
                        c3 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c3) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    return;
                                default:
                                    c3 = '[';
                            }
                        }
                        c2 = '^';
                        c3 = 'K';
                        break;
                    case '^':
                        if (c3 <= 4) {
                            break;
                        } else {
                            return;
                        }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r9, com.bytedance.msdk.api.AdSlot r10, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i r11, com.bytedance.msdk.base.TTBaseAd r12, java.util.Map<java.lang.String, java.lang.Object> r13) {
        /*
            Method dump skipped, instructions count: 828
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d, com.bytedance.msdk.api.AdSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i, com.bytedance.msdk.base.TTBaseAd, java.util.Map):void");
    }

    public static void a(AdError adError, AdSlot adSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, int i, int i2, int i3, String str, long j) {
        d b2 = d.b();
        b2.e("bidding_adm_load_fail").a(j).a(str).c(adError != null ? adError.thirdSdkErrorCode : -1).d(adError != null ? adError.thirdSdkErrorMessage : "unknown error").a("adn_count", Integer.valueOf(i)).a("adn_preload", 0).a("mediationrit_req_type", Integer.valueOf(i2)).a("mediationrit_req_type_src", Integer.valueOf(i3));
        if (adError instanceof AdBreakError) {
            b2.n = adError.code;
            b2.k = adError.message;
        }
        HashMap hashMap = new HashMap();
        a(b2, adSlot, iVar, (TTBaseAd) null, hashMap);
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, hashMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(com.bytedance.msdk.api.AdError r4, com.bytedance.msdk.api.AdSlot r5, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i r6, int r7, int r8, int r9, java.lang.String r10, long r11, java.lang.String r13, java.lang.String r14, java.lang.String r15) {
        /*
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d.b()
            boolean r1 = r4 instanceof com.bytedance.msdk.api.error.AdPacingError
            java.lang.String r2 = "adn_rit_show_rule_id"
            if (r1 == 0) goto L29
            r1 = r4
            com.bytedance.msdk.api.error.AdPacingError r1 = (com.bytedance.msdk.api.error.AdPacingError) r1
            int r3 = r4.code
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r3 = r0.c(r3)
            java.lang.String r4 = r4.message
            r3.d(r4)
            java.lang.String r4 = r1.getBlockPacing()
            java.lang.String r3 = "block_pacing"
            r0.a(r3, r4)
            java.lang.String r4 = r1.getRuleId()
        L25:
            r0.a(r2, r4)
            goto L6e
        L29:
            boolean r1 = r4 instanceof com.bytedance.msdk.api.error.AdFreqError
            if (r1 == 0) goto L49
            r1 = r4
            com.bytedance.msdk.api.error.AdFreqError r1 = (com.bytedance.msdk.api.error.AdFreqError) r1
            int r3 = r4.code
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r3 = r0.c(r3)
            java.lang.String r4 = r4.message
            r3.d(r4)
            java.lang.String r4 = r1.getBlockShowCount()
            java.lang.String r3 = "block_show_count"
            r0.a(r3, r4)
            java.lang.String r4 = r1.getRuleId()
            goto L25
        L49:
            boolean r1 = r4 instanceof com.bytedance.msdk.api.error.AdBreakError
            if (r1 == 0) goto L59
            int r1 = r4.code
            r0.n = r1
            java.lang.String r4 = r4.message
            r0.k = r4
        L55:
            b(r0)
            goto L6e
        L59:
            if (r4 == 0) goto L5e
            int r1 = r4.thirdSdkErrorCode
            goto L5f
        L5e:
            r1 = -1
        L5f:
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r1 = r0.c(r1)
            if (r4 == 0) goto L68
            java.lang.String r4 = r4.thirdSdkErrorMessage
            goto L6a
        L68:
            java.lang.String r4 = "unknown error"
        L6a:
            r1.d(r4)
            goto L55
        L6e:
            java.lang.String r4 = "media_fill_fail"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r4 = r0.e(r4)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r4 = r4.a(r11)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r4 = r4.a(r10)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            java.lang.String r10 = "adn_count"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r4 = r4.a(r10, r7)
            r7 = 0
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            java.lang.String r10 = "adn_preload"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r4 = r4.a(r10, r7)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r8)
            java.lang.String r8 = "mediationrit_req_type"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r4 = r4.a(r8, r7)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r9)
            java.lang.String r8 = "mediationrit_req_type_src"
            r4.a(r8, r7)
            java.util.HashMap r4 = new java.util.HashMap
            r4.<init>()
            r7 = 0
            a(r0, r5, r6, r7, r4)
            boolean r5 = android.text.TextUtils.isEmpty(r13)
            if (r5 != 0) goto Lb6
            r0.j(r13)
        Lb6:
            boolean r5 = android.text.TextUtils.isEmpty(r14)
            if (r5 != 0) goto Lc1
            java.lang.String r5 = "level_tag"
            r0.a(r5, r14)
        Lc1:
            if (r15 == 0) goto Lc8
            java.lang.String r5 = "sub_adn_name"
            r0.a(r5, r15)
        Lc8:
            android.content.Context r5 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c.a(r5, r0, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(com.bytedance.msdk.api.AdError, com.bytedance.msdk.api.AdSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i, int, int, int, java.lang.String, long, java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(com.bytedance.msdk.api.AdSlot r7, int r8) {
        /*
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r5 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d.b()
            java.lang.String r0 = "get_config_error"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r0 = r5.e(r0)
            r0.c(r8)
            java.util.HashMap r6 = new java.util.HashMap
            r6.<init>()
            r3 = 0
            r0 = r5
            r1 = r7
            r2 = r3
            r4 = r6
            com.apk.Cgoto.m1013return(r0, r1, r2, r3, r4, r5, r6)
        L1a:
            r7 = 74
            r8 = 55
        L1e:
            switch(r7) {
                case 72: goto L1a;
                case 73: goto L22;
                case 74: goto L25;
                default: goto L21;
            }
        L21:
            goto L2f
        L22:
            switch(r8) {
                case 94: goto L29;
                case 95: goto L2e;
                case 96: goto L2e;
                default: goto L25;
            }
        L25:
            r7 = 57
            if (r8 == r7) goto L2e
        L29:
            r7 = 73
            r8 = 96
            goto L1e
        L2e:
            return
        L2f:
            r7 = 72
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(com.bytedance.msdk.api.AdSlot, int):void");
    }

    public static void a(AdSlot adSlot, int i, long j, String str, String str2, int i2, AdError adError, int i3) {
        d b2 = d.b();
        b2.e("return_bidding_result").a(j).e(i).c(adError == null ? 0 : adError.code).d(adError == null ? "" : adError.message).a(2).a("fill_type", Integer.valueOf(i2)).a("waterfall_abtest", str).a("server_bidding_extra", str2).a("ad_count", Integer.valueOf(i3));
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, null, null, hashMap, b2, hashMap);
        char c2 = '\t';
        char c3 = 26;
        while (true) {
            char c4 = 14;
            while (true) {
                if (c4 != 14) {
                    if (c4 != 16) {
                        break;
                    } else if (c3 > 22) {
                        continue;
                    } else {
                        do {
                        } while (c2 == 29);
                        if (c2 == 30) {
                            return;
                        }
                    }
                }
                c3 = 65492;
                c2 = DecodedBitStreamParser.RS;
                c4 = 16;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(@androidx.annotation.Nullable com.bytedance.msdk.api.AdSlot r7, com.bytedance.msdk.api.AdError r8, java.lang.String r9, java.lang.String r10) {
        /*
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r5 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d.b()
            java.lang.String r0 = "total_load_fail"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r0 = r5.e(r0)
            java.lang.String r1 = "waterfall_abtest"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r9 = r0.a(r1, r9)
            java.lang.String r0 = "server_bidding_extra"
            r9.a(r0, r10)
            int r9 = r8.code
            r10 = 10003(0x2713, float:1.4017E-41)
            if (r9 != r10) goto L24
            r8 = 10010(0x271a, float:1.4027E-41)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r8 = r5.c(r8)
            java.lang.String r9 = "Ad load timeout!"
            goto L7b
        L24:
            boolean r10 = r8 instanceof com.bytedance.msdk.api.error.AdPacingError
            java.lang.String r0 = "waterfall_show_rule_id"
            if (r10 == 0) goto L44
            r10 = r8
            com.bytedance.msdk.api.error.AdPacingError r10 = (com.bytedance.msdk.api.error.AdPacingError) r10
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r9 = r5.c(r9)
            java.lang.String r8 = r8.message
            r9.d(r8)
            java.lang.String r8 = r10.getBlockPacing()
            java.lang.String r9 = "block_pacing"
            r5.a(r9, r8)
            java.lang.String r8 = r10.getRuleId()
            goto L61
        L44:
            boolean r10 = r8 instanceof com.bytedance.msdk.api.error.AdFreqError
            if (r10 == 0) goto L65
            r10 = r8
            com.bytedance.msdk.api.error.AdFreqError r10 = (com.bytedance.msdk.api.error.AdFreqError) r10
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r9 = r5.c(r9)
            java.lang.String r8 = r8.message
            r9.d(r8)
            java.lang.String r8 = r10.getBlockShowCount()
            java.lang.String r9 = "block_show_count"
            r5.a(r9, r8)
            java.lang.String r8 = r10.getRuleId()
        L61:
            r5.a(r0, r8)
            goto L81
        L65:
            boolean r10 = r8 instanceof com.bytedance.msdk.api.error.AdBreakError
            if (r10 == 0) goto L73
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r9 = r5.c(r9)
            java.lang.String r8 = r8.message
            r9.d(r8)
            goto L7e
        L73:
            r8 = 10086(0x2766, float:1.4133E-41)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r8 = r5.c(r8)
            java.lang.String r9 = "Ad load fail all loadsorts! "
        L7b:
            r8.d(r9)
        L7e:
            a(r5)
        L81:
            java.util.HashMap r6 = new java.util.HashMap
            r6.<init>()
            int r8 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.c
            int r9 = r8 + 1
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.c = r9
            int r8 = r8 % 10
            if (r8 != 0) goto L9d
            int r8 = com.bytedance.msdk.adapter.util.ThreadHelper.getGroMoreThreadCount()
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            java.lang.String r9 = "gromore_thread_num"
            r6.put(r9, r8)
        L9d:
            if (r7 == 0) goto La4
            int r8 = r7.getAdCount()
            goto La5
        La4:
            r8 = 0
        La5:
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            java.lang.String r9 = "ad_count"
            r5.a(r9, r8)
            r3 = 0
            r0 = r5
            r1 = r7
            r2 = r3
            r4 = r6
            com.apk.Cgoto.m1013return(r0, r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(com.bytedance.msdk.api.AdSlot, com.bytedance.msdk.api.AdError, java.lang.String, java.lang.String):void");
    }

    public static void a(AdSlot adSlot, TTBaseAd tTBaseAd) {
        d b2 = d.b();
        b2.e("media_cache_success");
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, null, tTBaseAd, hashMap, b2, hashMap);
    }

    public static void a(AdSlot adSlot, TTBaseAd tTBaseAd, long j, int i, int i2, int i3, String str, int i4) {
        d b2 = d.b();
        b2.e("mediation_request_end").a(j).a("waterfall_abtest", str).a("ad_count", Integer.valueOf(i4)).c(i3);
        HashMap hashMap = new HashMap();
        a(b2, adSlot, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i) null, tTBaseAd, hashMap);
        hashMap.put("requested_adn_count", Integer.valueOf(i));
        hashMap.put("requested_level_count", Integer.valueOf(i2));
        int i5 = b;
        b = i5 + 1;
        if (i5 % 10 == 0) {
            hashMap.put("gromore_thread_num", Integer.valueOf(ThreadHelper.getGroMoreThreadCount()));
        }
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, hashMap);
        for (char c2 = 16; c2 != 14; c2 = 14) {
        }
    }

    public static void a(AdSlot adSlot, TTBaseAd tTBaseAd, long j, String str) {
        d b2 = d.b();
        b2.e("mediation_video_cached").a(j).a("waterfall_abtest", str);
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, null, tTBaseAd, hashMap, b2, hashMap);
    }

    public static void a(AdSlot adSlot, TTBaseAd tTBaseAd, String str) {
        d b2 = d.b();
        b2.e("rit_cache_cannot_use").a("cache_invalid_info", str);
        HashMap hashMap = new HashMap();
        a(b2, adSlot, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i) null, tTBaseAd, hashMap);
        b2.a("mediationrit_req_type", 2);
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, hashMap);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    public static void a(com.bytedance.msdk.api.AdSlot r8, java.lang.String r9) {
        /*
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r5 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d.b()
            java.lang.String r0 = "start_bidding_request"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r0 = r5.e(r0)
            r1 = 2
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r0 = r0.a(r1)
            java.lang.String r1 = "waterfall_abtest"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r9 = r0.a(r1, r9)
            r7 = 0
            if (r8 == 0) goto L1d
            int r0 = r8.getAdCount()
            goto L1e
        L1d:
            r0 = 0
        L1e:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.String r1 = "ad_count"
            r9.a(r1, r0)
            java.util.HashMap r6 = new java.util.HashMap
            r6.<init>()
            r3 = 0
            r0 = r5
            r1 = r8
            r2 = r3
            r4 = r6
            com.apk.Cgoto.m1013return(r0, r1, r2, r3, r4, r5, r6)
            r8 = 55
        L36:
            r9 = 72
        L38:
            switch(r9) {
                case 72: goto L50;
                case 73: goto L4b;
                case 74: goto L3c;
                default: goto L3b;
            }
        L3b:
            goto L36
        L3c:
            r9 = 53
            if (r7 == r9) goto L45
            r9 = 54
            if (r7 == r9) goto L50
            goto L36
        L45:
            switch(r8) {
                case 29: goto L4f;
                case 30: goto L36;
                case 31: goto L3c;
                default: goto L48;
            }
        L48:
            r8 = 30
            goto L45
        L4b:
            r9 = 57
            if (r7 > r9) goto L36
        L4f:
            return
        L50:
            r9 = 73
            r7 = 16
            goto L38
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(com.bytedance.msdk.api.AdSlot, java.lang.String):void");
    }

    public static void a(AdSlot adSlot, String str, String str2) {
        d b2 = d.b();
        b2.e("cache_cannot_use").a("cache_invalid_info", str).a("waterfall_abtest", str2);
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, null, null, hashMap, b2, hashMap);
    }

    public static void a(AdSlot adSlot, String str, boolean z, String str2, int i) {
        String str3;
        loop0: while (true) {
            for (char c2 = 14; c2 != '\f'; c2 = '\r') {
                if (c2 == '\r') {
                    break loop0;
                }
            }
        }
        if (i > 0) {
            str3 = AdError.getMessage(i);
        } else {
            str3 = "";
            i = 0;
        }
        int i2 = i != 0 ? z ? 2 : 3 : !z ? 1 : 0;
        d b2 = d.b();
        b2.e("mediation_request").a("waterfall_abtest", str).a("server_bidding_extra", str2).a("mediation_req_type", Integer.valueOf(i2)).a("ad_count", Integer.valueOf(adSlot != null ? adSlot.getAdCount() : 0)).c(i).d(str3);
        HashMap hashMap = new HashMap();
        int i3 = f10959a;
        f10959a = i3 + 1;
        if (i3 % 10 == 0) {
            hashMap.put("gromore_thread_num", Integer.valueOf(ThreadHelper.getGroMoreThreadCount()));
        }
        if (adSlot != null && adSlot.getPrimeRitReqType() == 5) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("parallel_num", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a());
                jSONObject.put(ak.aT, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().c());
                jSONObject.put("primerit_list", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().b());
                hashMap.put("preload_info", jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        Cgoto.m1013return(b2, adSlot, null, null, hashMap, b2, hashMap);
    }

    public static void a(TTBaseAd tTBaseAd, int i, String str, long j, AdSlot adSlot, int i2, int i3, int i4, String str2, long j2) {
        int i5 = (tTBaseAd == null || !tTBaseAd.isAdnPreload()) ? 0 : 1;
        d b2 = d.b();
        b2.e("media_fill").a(j).c(i).d(str).a("adn_count", Integer.valueOf(i2)).a("adn_preload", Integer.valueOf(i5)).a("ad_count", Integer.valueOf(i3));
        b2.a("fill_type", Integer.valueOf(i4));
        if (str2 != null) {
            b2.a("sub_adn_name", str2);
        }
        HashMap hashMap = new HashMap();
        if (j2 != -1) {
            hashMap.put(com.umeng.analytics.pro.d.q, Long.valueOf(j2));
        }
        Cgoto.m1013return(b2, adSlot, null, tTBaseAd, hashMap, b2, hashMap);
    }

    public static void a(TTBaseAd tTBaseAd, AdSlot adSlot) {
        d b2 = d.b();
        b2.e("bidding_adm_cache");
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, null, tTBaseAd, hashMap, b2, hashMap);
    }

    public static void a(TTBaseAd tTBaseAd, AdSlot adSlot, int i, int i2, int i3, String str) {
        d b2 = d.b();
        b2.e(i2).e("media_show_after").a("play_again", Integer.valueOf(i3)).a(RewardItem.KEY_REASON, Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            b2.a("callstack_message", str);
        }
        HashMap hashMap = new HashMap();
        a(b2, adSlot, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i) null, tTBaseAd, hashMap);
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, hashMap);
    }

    public static void a(TTBaseAd tTBaseAd, AdSlot adSlot, int i, String str) {
        a(tTBaseAd, adSlot, i, str, (String) null);
        while (true) {
            char c2 = '^';
            char c3 = 'K';
            while (true) {
                if (c2 == '\\') {
                    switch (c3) {
                        case 21:
                            return;
                        case 22:
                        case 23:
                            c2 = ']';
                            c3 = ']';
                    }
                } else if (c2 != ']') {
                    c2 = ']';
                    c3 = ']';
                }
            }
            while (true) {
                switch (c3) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        return;
                    default:
                        c3 = '[';
                }
            }
        }
    }

    public static void a(TTBaseAd tTBaseAd, AdSlot adSlot, int i, String str, int i2, int i3, String str2) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c f;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c c2;
        d b2 = d.b();
        b2.e("media_reward_verify").a("adn_preload", Integer.valueOf((tTBaseAd == null || !tTBaseAd.isAdnPreload()) ? 0 : 1)).a(RewardItem.KEY_REASON, Integer.valueOf(i2)).a("play_again", Integer.valueOf(i));
        if (i3 != 0 && i3 != 20000) {
            b2.c(i3).d(str2);
        }
        HashMap hashMap = new HashMap();
        if (adSlot != null && (f = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f()) != null && (c2 = f.c(adSlot.getAdUnitId())) != null) {
            hashMap.put("reward_callback_type", Integer.valueOf(c2.u()));
            hashMap.put("reward_start_time", Integer.valueOf(c2.v()));
        }
        if (str != null) {
            b2.a("sub_adn_name", str);
        }
        Cgoto.m1013return(b2, adSlot, null, tTBaseAd, hashMap, b2, hashMap);
    }

    public static void a(TTBaseAd tTBaseAd, AdSlot adSlot, int i, String str, String str2) {
        d b2 = d.b();
        b2.e("media_click_listen").a("adn_preload", Integer.valueOf((tTBaseAd == null || !tTBaseAd.isAdnPreload()) ? 0 : 1)).a("play_again", Integer.valueOf(i));
        if (str != null) {
            b2.a("sub_adn_name", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            b2.a("callstack_message", str2);
        }
        HashMap hashMap = new HashMap();
        a(b2, adSlot, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i) null, tTBaseAd, hashMap);
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, hashMap);
    }

    public static void a(TTBaseAd tTBaseAd, AdSlot adSlot, long j) {
        d b2 = d.b();
        b2.e("bidding_adm_load").a(j);
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, null, tTBaseAd, hashMap, b2, hashMap);
        while (true) {
            char c2 = 'J';
            char c3 = '7';
            while (true) {
                switch (c2) {
                    case 'H':
                        break;
                    case 'I':
                        switch (c3) {
                            case '^':
                                break;
                            case '_':
                            case '`':
                                return;
                            default:
                                if (c3 != '8' || c3 == '9') {
                                    return;
                                }
                                break;
                        }
                        c2 = 'I';
                        c3 = '`';
                        break;
                    case 'J':
                        if (c3 != '8') {
                            return;
                        }
                        return;
                    default:
                        c2 = 'H';
                }
            }
        }
    }

    public static void a(TTBaseAd tTBaseAd, AdSlot adSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar, long j, String str, boolean z, int i) {
        d b2 = d.b();
        b2.e("mediation_fill").a(j).a("waterfall_abtest", cVar != null ? cVar.B() : null).a("server_bidding_extra", str).a("mediation_req_type", Integer.valueOf(!z ? 1 : 0)).a("ad_count", Integer.valueOf(i)).c(0).d("");
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, null, tTBaseAd, hashMap, b2, hashMap);
    }

    public static void a(TTBaseAd tTBaseAd, AdSlot adSlot, AdError adError, int i, int i2, String str) {
        a(tTBaseAd, adSlot, adError, i, i2, str, (String) null);
    }

    public static void a(TTBaseAd tTBaseAd, AdSlot adSlot, AdError adError, int i, int i2, String str, String str2) {
        d b2 = d.b();
        b2.e(i).c(adError != null ? adError.thirdSdkErrorCode : 0).d(adError != null ? adError.thirdSdkErrorMessage : null).e("media_show_fail_listen").a("play_again", Integer.valueOf(i2));
        if (str != null) {
            b2.a("sub_adn_name", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            b2.a("callstack_message", str2);
        }
        HashMap hashMap = new HashMap();
        a(b2, adSlot, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i) null, tTBaseAd, hashMap);
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, hashMap);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001a, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(com.bytedance.msdk.base.TTBaseAd r7, com.bytedance.msdk.api.AdSlot r8, java.lang.String r9) {
        /*
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r5 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d.b()
            java.lang.String r0 = "media_show_dislike"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r0 = r5.e(r0)
            r0.d(r9)
            java.util.HashMap r6 = new java.util.HashMap
            r6.<init>()
            r2 = 0
            r0 = r5
            r1 = r8
            r3 = r7
            r4 = r6
            com.apk.Cgoto.m1013return(r0, r1, r2, r3, r4, r5, r6)
        L1a:
            r7 = 73
            r8 = 96
        L1e:
            switch(r7) {
                case 72: goto L2a;
                case 73: goto L22;
                case 74: goto L25;
                default: goto L21;
            }
        L21:
            goto L2f
        L22:
            switch(r8) {
                case 94: goto L1a;
                case 95: goto L2a;
                case 96: goto L2a;
                default: goto L25;
            }
        L25:
            switch(r8) {
                case 55: goto L29;
                case 56: goto L29;
                case 57: goto L2a;
                default: goto L28;
            }
        L28:
            goto L1a
        L29:
            return
        L2a:
            r7 = 74
            r8 = 55
            goto L1e
        L2f:
            r7 = 72
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(com.bytedance.msdk.base.TTBaseAd, com.bytedance.msdk.api.AdSlot, java.lang.String):void");
    }

    public static void a(TTBaseAd tTBaseAd, AdSlot adSlot, String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        d b2 = d.b();
        b2.e("callstack_static").a("callstack_message", str).a("callstack_report_time", Integer.valueOf(i));
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, null, tTBaseAd, hashMap, b2, hashMap);
    }

    public static void a(TTBaseAd tTBaseAd, AdSlot adSlot, List<TTBaseAd> list, List<TTBaseAd> list2) {
        HashMap hashMap;
        d dVar;
        d b2 = d.b();
        b2.e("bidding_win_event");
        HashMap hashMap2 = new HashMap();
        a(b2, adSlot, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i) null, tTBaseAd, hashMap2);
        JSONArray jSONArray = new JSONArray();
        if (!f0.a(list)) {
            Iterator<TTBaseAd> it = list.iterator();
            while (it.hasNext()) {
                TTBaseAd next = it.next();
                if (next != null) {
                    Iterator<TTBaseAd> it2 = it;
                    try {
                        JSONObject jSONObject = new JSONObject();
                        dVar = b2;
                        try {
                            jSONObject.putOpt("mediation_rit", next.getAdNetworkSlotId());
                            jSONObject.putOpt("adn_name", next.getAdNetWorkName());
                            jSONObject.putOpt("load_sort", Integer.valueOf(next.getLoadSort()));
                            jSONObject.putOpt("show_sort", Integer.valueOf(next.getShowSort()));
                            jSONObject.putOpt("exchange_rate", next.getExchangeRate());
                            jSONObject.putOpt("rit_cpm", Double.valueOf(next.getCpm()));
                            jSONObject.putOpt("m_aid", next.getAid());
                            jSONObject.putOpt("req_bidding_type", Integer.valueOf(next.getAdNetworkSlotType()));
                            jSONObject.putOpt("win_state", 1);
                            jSONObject.putOpt("ad_extra", next.getAdExtra());
                            jSONObject.putOpt("win_callback", next.getWinCallback());
                            jSONObject.putOpt("loss_callback", next.getFailCallback());
                            jSONArray.put(jSONObject);
                        } catch (Exception unused) {
                        }
                    } catch (Exception unused2) {
                        dVar = b2;
                    }
                    it = it2;
                    b2 = dVar;
                }
            }
        }
        d dVar2 = b2;
        if (!f0.a(list2)) {
            Iterator<TTBaseAd> it3 = list2.iterator();
            while (it3.hasNext()) {
                TTBaseAd next2 = it3.next();
                if (next2 != null) {
                    Iterator<TTBaseAd> it4 = it3;
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        hashMap = hashMap2;
                        try {
                            jSONObject2.putOpt("mediation_rit", next2.getAdNetworkSlotId());
                            jSONObject2.putOpt("adn_name", next2.getAdNetWorkName());
                            jSONObject2.putOpt("load_sort", Integer.valueOf(next2.getLoadSort()));
                            jSONObject2.putOpt("show_sort", Integer.valueOf(next2.getShowSort()));
                            jSONObject2.putOpt("exchange_rate", next2.getExchangeRate());
                            jSONObject2.putOpt("rit_cpm", Double.valueOf(next2.getCpm()));
                            jSONObject2.putOpt("m_aid", next2.getAid());
                            jSONObject2.putOpt("req_bidding_type", Integer.valueOf(next2.getAdNetworkSlotType()));
                            jSONObject2.putOpt("win_state", 0);
                            jSONObject2.putOpt("ad_extra", next2.getAdExtra());
                            jSONObject2.putOpt("win_callback", next2.getWinCallback());
                            jSONObject2.putOpt("loss_callback", next2.getFailCallback());
                            jSONArray.put(jSONObject2);
                        } catch (Exception unused3) {
                        }
                    } catch (Exception unused4) {
                        hashMap = hashMap2;
                    }
                    it3 = it4;
                    hashMap2 = hashMap;
                }
            }
        }
        HashMap hashMap3 = hashMap2;
        hashMap3.put("others", jSONArray);
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), dVar2, hashMap3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001d, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(java.lang.String r3) {
        /*
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d.b()
            r1 = 0
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r1 = r0.c(r1)
            java.lang.String r2 = "广告请求"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r1 = r1.d(r2)
            r1.e(r3)
            r3 = 0
            a(r0, r3, r3, r3)
            android.content.Context r1 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.c.a(r1, r0, r3)
        L1d:
            r3 = 73
            r0 = 96
        L21:
            switch(r3) {
                case 72: goto L2d;
                case 73: goto L25;
                case 74: goto L28;
                default: goto L24;
            }
        L24:
            goto L32
        L25:
            switch(r0) {
                case 94: goto L1d;
                case 95: goto L2d;
                case 96: goto L2d;
                default: goto L28;
            }
        L28:
            switch(r0) {
                case 55: goto L2c;
                case 56: goto L2c;
                case 57: goto L2d;
                default: goto L2b;
            }
        L2b:
            goto L1d
        L2c:
            return
        L2d:
            r3 = 74
            r0 = 55
            goto L21
        L32:
            r3 = 72
            goto L21
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(java.lang.String):void");
    }

    public static void a(String str, TTBaseAd tTBaseAd, AdSlot adSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, AdError adError) {
        d b2 = d.b();
        d d = b2.c(adError != null ? adError.code : 0).d(adError != null ? adError.message : null);
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        d.b(str).e("custom_adn_init_fail");
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, iVar, tTBaseAd, hashMap, b2, hashMap);
    }

    public static void a(List<TTBaseAd> list, AdSlot adSlot) {
        TTBaseAd tTBaseAd = (list == null || list.size() <= 0) ? null : list.get(0);
        d b2 = d.b();
        b2.e("media_show_fail");
        b2.c(AdError.ERROR_CODE_SHOW_FAIL_NO_AD);
        if (tTBaseAd != null) {
            try {
                JSONArray jSONArray = new JSONArray();
                for (TTBaseAd tTBaseAd2 : list) {
                    if (tTBaseAd2 != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("adn", tTBaseAd2.getAdNetWorkName());
                        jSONObject.put("type", eg.m599if(tTBaseAd2.getAdType(), tTBaseAd2.getSubAdType()));
                        jSONObject.put("adnSlotId", tTBaseAd2.getAdNetworkSlotId());
                        jSONObject.put("loadSort", tTBaseAd2.getLoadSort());
                        jSONObject.put("showSort", tTBaseAd2.getShowSort());
                        if (adSlot != null) {
                            jSONObject.put("isReady", tTBaseAd2.isReady(adSlot.getAdUnitId()) ? 1 : 0);
                        }
                        jSONObject.put("hasShown", tTBaseAd2.isHasShown() ? 1 : 0);
                        jSONArray.put(jSONObject);
                    }
                }
                b2.d(jSONArray.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        HashMap hashMap = new HashMap();
        a(b2, adSlot, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i) null, tTBaseAd, hashMap);
        b2.a("is_video_cache_success", 0);
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, hashMap);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: CFG modification limit reached, blocks count: 184
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:59)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public static void a(java.util.List<com.bytedance.msdk.base.TTBaseAd> r8, java.util.List<com.bytedance.msdk.base.TTBaseAd> r9, java.util.List<com.bytedance.msdk.base.TTBaseAd> r10, com.bytedance.msdk.api.AdSlot r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(java.util.List, java.util.List, java.util.List, com.bytedance.msdk.api.AdSlot, java.lang.String):void");
    }

    public static void a(boolean z) {
        d b2 = d.b();
        b2.e("get_config_start").a(RewardItem.KEY_REASON, Integer.valueOf(z ? bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c.J().a("is_config_from_assert") ? 2 : 1 : 0));
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, null);
    }

    public static void b(long j) {
        String str;
        d b2 = d.b();
        b2.e("sdk_init").b(j);
        try {
            Class.forName("com.unity3d.player.UnityPlayer");
            try {
                Class.forName("com.bytedance.ad.sdk.mediation.AdManager");
                str = "unity";
            } catch (Throwable unused) {
                str = "unity_pure";
            }
        } catch (Throwable unused2) {
            str = null;
        }
        if (str != null) {
            b2.a("develop_type", str);
        }
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, null);
    }

    public static void b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, AdSlot adSlot, int i, int i2) {
        d b2 = d.b();
        b2.e("adapter_request").a("mediationrit_req_type", Integer.valueOf(i)).a("mediationrit_req_type_src", Integer.valueOf(i2));
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, iVar, null, hashMap, b2, hashMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0025 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r3) {
        /*
            java.lang.String r0 = "block_pacing"
            java.lang.String r1 = "-1"
            r3.a(r0, r1)
            java.lang.String r0 = "rit_adn_show_rule_id"
            r3.a(r0, r1)
            java.lang.String r0 = "block_show_count"
            r3.a(r0, r1)
        L11:
            r3 = 94
            r0 = 75
            r1 = 93
        L17:
            r2 = 92
            if (r3 == r2) goto L1e
            if (r3 == r1) goto L21
            goto L26
        L1e:
            switch(r0) {
                case 21: goto L26;
                case 22: goto L26;
                case 23: goto L26;
                default: goto L21;
            }
        L21:
            switch(r0) {
                case 91: goto L11;
                case 92: goto L26;
                case 93: goto L25;
                default: goto L24;
            }
        L24:
            goto L2b
        L25:
            return
        L26:
            r3 = 93
            r0 = 93
            goto L17
        L2b:
            r0 = 91
            goto L21
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0030 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void b(com.bytedance.msdk.api.AdSlot r7, java.lang.String r8) {
        /*
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r5 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d.b()
            java.lang.String r0 = "media_will_show"
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.d r0 = r5.e(r0)
            java.lang.String r1 = "waterfall_abtest"
            r0.a(r1, r8)
            java.util.HashMap r6 = new java.util.HashMap
            r6.<init>()
            r3 = 0
            r0 = r5
            r1 = r7
            r2 = r3
            r4 = r6
            com.apk.Cgoto.m1013return(r0, r1, r2, r3, r4, r5, r6)
        L1c:
            r7 = 74
            r8 = 55
        L20:
            switch(r7) {
                case 72: goto L1c;
                case 73: goto L24;
                case 74: goto L27;
                default: goto L23;
            }
        L23:
            goto L31
        L24:
            switch(r8) {
                case 94: goto L2b;
                case 95: goto L30;
                case 96: goto L30;
                default: goto L27;
            }
        L27:
            r7 = 57
            if (r8 == r7) goto L30
        L2b:
            r7 = 73
            r8 = 96
            goto L20
        L30:
            return
        L31:
            r7 = 72
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(com.bytedance.msdk.api.AdSlot, java.lang.String):void");
    }

    public static void b(TTBaseAd tTBaseAd, AdSlot adSlot) {
        char c2;
        d b2 = d.b();
        b2.e("media_show").a("adn_preload", Integer.valueOf((tTBaseAd == null || !tTBaseAd.isAdnPreload()) ? 0 : 1));
        HashMap hashMap = new HashMap();
        Cgoto.m1013return(b2, adSlot, null, tTBaseAd, hashMap, b2, hashMap);
        while (true) {
            while (c2 != 'H') {
                c2 = c2 != 'J' ? 'H' : 'I';
            }
            return;
        }
    }

    public static void b(TTBaseAd tTBaseAd, AdSlot adSlot, int i, String str) {
        b(tTBaseAd, adSlot, i, str, null);
        while (true) {
            char c2 = ']';
            char c3 = ']';
            while (true) {
                switch (c2) {
                    case '\\':
                        switch (c3) {
                            case 21:
                                return;
                        }
                        c2 = '^';
                        c3 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c3) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    return;
                                default:
                                    c3 = '[';
                            }
                        }
                        c2 = '^';
                        c3 = 'K';
                        break;
                    case '^':
                        if (c3 <= 4) {
                            break;
                        } else {
                            return;
                        }
                }
            }
        }
    }

    public static void b(TTBaseAd tTBaseAd, AdSlot adSlot, int i, String str, String str2) {
        d b2 = d.b();
        b2.e("media_show_listen").a("adn_preload", Integer.valueOf((tTBaseAd == null || !tTBaseAd.isAdnPreload()) ? 0 : 1)).a("play_again", Integer.valueOf(i));
        if (str != null) {
            b2.a("sub_adn_name", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            b2.a("callstack_message", str2);
        }
        HashMap hashMap = new HashMap();
        a(b2, adSlot, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i) null, tTBaseAd, hashMap);
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, hashMap);
    }

    public static void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        d b2 = d.b();
        b2.e("callstack_dynamic");
        b2.a("callstack_message", str);
        b2.a("callstack_report_time", 1);
        c.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), b2, null);
    }
}
