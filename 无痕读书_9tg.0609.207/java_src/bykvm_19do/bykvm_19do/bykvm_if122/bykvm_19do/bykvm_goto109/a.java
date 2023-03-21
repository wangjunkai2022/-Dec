package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109;

import android.content.Context;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.f;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.m;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.n;
import com.apk.Cgoto;
import com.apk.os;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.config.DefaultAdapterClasses;
import com.bytedance.msdk.adapter.config.ITTAdapterConfiguration;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.ad.AdUtils;
import com.bytedance.msdk.api.v2.ad.custom.init.GMCustomAdapterConfiguration;
import com.bytedance.msdk.base.TTBaseAd;
import com.qq.e.comm.pi.ACTD;
import com.umeng.analytics.pro.ak;
import com.umeng.commonsdk.internal.utils.e;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;
/* compiled from: ServerBiddingHelper.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static volatile a f10901a;

    /* compiled from: ServerBiddingHelper.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ d f10903a;
        public final /* synthetic */ AdError b;

        public b(a aVar, d dVar, AdError adError) {
            this.f10903a = dVar;
            this.b = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = this.f10903a;
            if (dVar != null) {
                dVar.a(this.b);
            }
        }
    }

    /* compiled from: ServerBiddingHelper.java */
    /* loaded from: classes8.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ d f10904a;
        public final /* synthetic */ f b;

        public c(a aVar, d dVar, f fVar) {
            this.f10904a = dVar;
            this.b = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = this.f10904a;
            if (dVar != null) {
                dVar.a(this.b);
            }
        }
    }

    /* compiled from: ServerBiddingHelper.java */
    /* loaded from: classes8.dex */
    public interface d {
        void a(f fVar);

        void a(AdError adError);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0027, code lost:
        return 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0028, code lost:
        switch(r1) {
            case 91: goto L34;
            case 92: goto L32;
            case 93: goto L32;
            default: goto L30;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x002c, code lost:
        return 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x002d, code lost:
        r1 = '[';
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(int r5) {
        /*
        L0:
            r0 = 94
            r1 = 75
            r2 = 93
        L6:
            r3 = 2
            r4 = 4
            switch(r0) {
                case 92: goto L21;
                case 93: goto L28;
                case 94: goto Lc;
                default: goto Lb;
            }
        Lb:
            goto L30
        Lc:
            if (r1 > r4) goto Lf
            goto L30
        Lf:
            r0 = 1
            if (r5 == r0) goto L27
            if (r5 == r3) goto L30
            r0 = 3
            if (r5 == r0) goto L25
            if (r5 == r4) goto L25
            r1 = 7
            if (r5 == r1) goto L25
            r1 = 8
            if (r5 == r1) goto L25
            return r0
        L21:
            switch(r1) {
                case 21: goto L2c;
                case 22: goto L27;
                case 23: goto L25;
                default: goto L24;
            }
        L24:
            goto L28
        L25:
            r5 = 5
            return r5
        L27:
            return r3
        L28:
            switch(r1) {
                case 91: goto L0;
                case 92: goto L2c;
                case 93: goto L2c;
                default: goto L2b;
            }
        L2b:
            goto L2d
        L2c:
            return r4
        L2d:
            r1 = 91
            goto L28
        L30:
            r0 = 93
            r1 = 93
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.a(int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0023 A[PHI: r0 
      PHI: (r0v1 char) = (r0v2 char), (r0v3 char) binds: [B:10:0x0022, B:12:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0023 -> B:12:0x0025). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001c -> B:8:0x001e). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.g a(org.json.JSONObject r7) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.a(org.json.JSONObject):bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.g");
    }

    private String a(AdSlot adSlot, i iVar) {
        String linkedId = adSlot != null ? adSlot.getLinkedId() : null;
        if (iVar != null) {
            StringBuilder m1016super = Cgoto.m1016super(Cgoto.m989case(linkedId, "_"));
            m1016super.append(iVar.d());
            return m1016super.toString();
        }
        return linkedId;
    }

    private String a(String str) {
        ITTAdapterConfiguration iTTAdapterConfiguration;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            GMCustomAdapterConfiguration a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.a(str);
            if (a2 != null) {
                return a2.getNetworkSdkVersion();
            }
            Map<String, ITTAdapterConfiguration> e = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.e();
            if (e == null) {
                return null;
            }
            String classNameByAdnName = DefaultAdapterClasses.getClassNameByAdnName(str);
            if (TextUtils.isEmpty(classNameByAdnName) || (iTTAdapterConfiguration = e.get(classNameByAdnName)) == null) {
                return null;
            }
            return iTTAdapterConfiguration.getNetworkSdkVersion();
        } catch (Throwable th) {
            th.printStackTrace();
            Logger.e("TTMediationSDK_SDK_Init", "GDT SDK 初始化失败。。 e=" + th.toString());
            return null;
        }
    }

    private String a(Map<String, TTAbsAdLoaderAdapter> map, Context context, AdSlot adSlot, i iVar, Map<String, Object> map2) {
        if (adSlot == null || iVar == null) {
            Logger.i("serverBiddingRequest", "adSlot is null or waterFallConfig is null can not get server bidding token");
            return "";
        } else if (TextUtils.equals("baidu", iVar.e())) {
            TTAbsAdLoaderAdapter a2 = g.a(adSlot.getAdUnitId(), iVar);
            if (a2 == null) {
                return "";
            }
            map.put(String.format("%1$s_%2$s_%3$s", adSlot.getLinkedId(), adSlot.getAdUnitId(), iVar.d()), a2);
            return a2.getBiddingToken(context, iVar.d(), AdUtils.covertAdSlot2GMAdSlotBase(adSlot));
        } else {
            return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.a(map2, iVar.e());
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(47:1|2|3|4|5|6|7|8|9|10|11|12|13|(2:15|16)|17|(1:19)|20|(1:22)|23|24|(1:26)|27|28|(7:29|30|31|(3:33|34|(3:36|37|38)(22:46|47|48|49|50|51|52|53|(2:132|133)(11:57|58|59|60|61|62|63|64|65|66|67)|68|(3:122|123|(1:125))|70|71|72|73|74|75|(5:77|(2:79|80)|81|82|(5:84|(8:(1:87)|88|89|90|91|92|93|94)|95|96|97)(5:106|(8:(1:111)|112|113|114|115|116|93|94)|95|96|97))(4:(2:118|80)|81|82|(0)(0))|98|(1:100)|37|38))(1:144)|42|43|44)|145|146|147|148|(2:150|151)(1:206)|152|153|154|155|156|157|158|(4:162|163|164|165)|166|(1:168)(1:205)|(2:172|(1:174))|175|176|177|(4:179|(4:182|(11:184|185|(1:187)(1:200)|(1:189)|190|191|192|(2:194|195)|196|197|198)(1:201)|199|180)|202|203)|43|44|(1:(1:39))) */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0560, code lost:
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:123:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0294 A[Catch: all -> 0x03a2, TRY_ENTER, TryCatch #2 {all -> 0x03a2, blocks: (B:68:0x0256, B:70:0x025f, B:72:0x0269, B:75:0x0274, B:76:0x0279, B:79:0x0294, B:83:0x02a9, B:85:0x02e9, B:87:0x02f2, B:88:0x02f6, B:100:0x0395, B:89:0x02fb, B:91:0x030d, B:95:0x0322, B:97:0x0386, B:99:0x038f, B:74:0x0270), top: B:199:0x0256 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02fb A[Catch: all -> 0x03a2, TryCatch #2 {all -> 0x03a2, blocks: (B:68:0x0256, B:70:0x025f, B:72:0x0269, B:75:0x0274, B:76:0x0279, B:79:0x0294, B:83:0x02a9, B:85:0x02e9, B:87:0x02f2, B:88:0x02f6, B:100:0x0395, B:89:0x02fb, B:91:0x030d, B:95:0x0322, B:97:0x0386, B:99:0x038f, B:74:0x0270), top: B:199:0x0256 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(java.util.Map<java.lang.String, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter> r29, android.content.Context r30, com.bytedance.msdk.api.AdSlot r31, java.util.List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> r32, java.util.List<com.bytedance.msdk.base.TTBaseAd> r33, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c r34, int r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 1417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.a(java.util.Map, android.content.Context, com.bytedance.msdk.api.AdSlot, java.util.List, java.util.List, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c, int, boolean):java.lang.String");
    }

    private String a(JSONObject jSONObject, boolean z) {
        JSONObject a2 = l0.a(jSONObject);
        if (a2 != null) {
            try {
                a2.putOpt("token_type", Integer.valueOf(z ? 1 : 0));
            } catch (Exception unused) {
            }
            return a2.toString();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0028 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0010 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONObject a() {
        /*
            r3 = this;
            r0 = 0
        L1:
            r1 = 74
            r2 = 55
        L5:
            switch(r1) {
                case 72: goto L1;
                case 73: goto L9;
                case 74: goto Lc;
                default: goto L8;
            }
        L8:
            goto L39
        L9:
            switch(r2) {
                case 94: goto L34;
                case 95: goto L10;
                case 96: goto L10;
                default: goto Lc;
            }
        Lc:
            switch(r2) {
                case 55: goto L28;
                case 56: goto L10;
                case 57: goto L10;
                default: goto Lf;
            }
        Lf:
            goto L34
        L10:
            r1 = 0
            if (r0 == 0) goto L14
            return r1
        L14:
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Exception -> L23
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f()     // Catch: java.lang.Exception -> L23
            java.lang.String r2 = r2.e()     // Catch: java.lang.Exception -> L23
            r0.<init>(r2)     // Catch: java.lang.Exception -> L23
            r1 = r0
            goto L27
        L23:
            r0 = move-exception
            r0.printStackTrace()
        L27:
            return r1
        L28:
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f()
            java.lang.String r0 = r0.e()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
        L34:
            r1 = 73
            r2 = 96
            goto L5
        L39:
            r1 = 72
            goto L5
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.a():org.json.JSONObject");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
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
    private org.json.JSONObject a(com.bytedance.msdk.api.AdSlot r6) {
        /*
            r5 = this;
            r0 = 92
        L2:
            r1 = 14
        L4:
            switch(r1) {
                case 13: goto L5d;
                case 14: goto L5f;
                case 15: goto L8;
                default: goto L7;
            }
        L7:
            goto L2
        L8:
            switch(r0) {
                case 94: goto L5f;
                case 95: goto Lc;
                case 96: goto L5f;
                default: goto Lb;
            }
        Lb:
            goto L5f
        Lc:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            int r1 = r6.getAdType()     // Catch: java.lang.Exception -> L5c
            java.lang.String r2 = "id"
            java.lang.String r3 = r6.getAdUnitId()     // Catch: java.lang.Exception -> L5c
            r0.put(r2, r3)     // Catch: java.lang.Exception -> L5c
            java.lang.String r2 = "adtype"
            r0.put(r2, r1)     // Catch: java.lang.Exception -> L5c
            java.lang.String r2 = "pos"
            int r3 = a(r1)     // Catch: java.lang.Exception -> L5c
            r0.put(r2, r3)     // Catch: java.lang.Exception -> L5c
            java.lang.String r2 = "accepted_size"
            int r3 = r6.getImgAcceptedWidth()     // Catch: java.lang.Exception -> L5c
            int r4 = r6.getImgAcceptedHeight()     // Catch: java.lang.Exception -> L5c
            r5.a(r0, r2, r3, r4)     // Catch: java.lang.Exception -> L5c
            java.lang.String r2 = "is_support_dpl"
            boolean r3 = r6.isSupportDeepLink()     // Catch: java.lang.Exception -> L5c
            r0.put(r2, r3)     // Catch: java.lang.Exception -> L5c
            int r6 = r6.getAdCount()     // Catch: java.lang.Exception -> L5c
            r2 = 1
            if (r6 >= r2) goto L4a
            r6 = 1
        L4a:
            r3 = 3
            if (r6 <= r3) goto L4e
            r6 = 3
        L4e:
            r3 = 7
            if (r1 == r3) goto L57
            r3 = 8
            if (r1 != r3) goto L56
            goto L57
        L56:
            r2 = r6
        L57:
            java.lang.String r6 = "ad_count"
            r0.put(r6, r2)     // Catch: java.lang.Exception -> L5c
        L5c:
            return r0
        L5d:
            r1 = 72
        L5f:
            r1 = 15
            r0 = 95
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.a(com.bytedance.msdk.api.AdSlot):org.json.JSONObject");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0073 A[Catch: all -> 0x00a5, TryCatch #2 {all -> 0x00a5, blocks: (B:8:0x0009, B:10:0x0018, B:14:0x0021, B:31:0x0073, B:33:0x007d, B:35:0x009b, B:22:0x004f, B:29:0x006c, B:16:0x002b, B:24:0x005d), top: B:42:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.f r6, org.json.JSONObject r7) {
        /*
            r5 = this;
            java.lang.String r0 = "ServerBiddingHelper"
            if (r6 != 0) goto L5
            return
        L5:
            if (r7 != 0) goto L8
            return
        L8:
            r1 = 0
            java.lang.String r2 = "cypher"
            r3 = -1
            int r2 = r7.optInt(r2, r3)     // Catch: java.lang.Throwable -> La5
            java.lang.String r4 = "message"
            java.lang.String r7 = r7.optString(r4)     // Catch: java.lang.Throwable -> La5
            if (r2 <= r3) goto La2
            boolean r3 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> La5
            if (r3 != 0) goto La2
            r3 = 2
            if (r2 != r3) goto L4c
            java.lang.String r7 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l0.a(r7)     // Catch: java.lang.Throwable -> La5
            boolean r2 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> La5
            if (r2 != 0) goto L71
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L32
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L32
        L30:
            r1 = r2
            goto L71
        L32:
            r7 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La5
            r2.<init>()     // Catch: java.lang.Throwable -> La5
            java.lang.String r3 = ">>>>> m_meta data error: "
            r2.append(r3)     // Catch: java.lang.Throwable -> La5
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> La5
            r2.append(r7)     // Catch: java.lang.Throwable -> La5
            java.lang.String r7 = r2.toString()     // Catch: java.lang.Throwable -> La5
            com.bytedance.msdk.adapter.util.Logger.d(r0, r7)     // Catch: java.lang.Throwable -> La5
            goto L71
        L4c:
            r3 = 1
            if (r2 != r3) goto L6a
            java.lang.String r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b.a()     // Catch: java.lang.Throwable -> La5
            java.lang.String r7 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.a(r7, r2)     // Catch: java.lang.Throwable -> La5
            boolean r2 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> La5
            if (r2 != 0) goto L71
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L63
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L63
            goto L30
        L63:
            r7 = move-exception
            java.lang.String r2 = "m_meta data error: "
            com.bytedance.msdk.adapter.util.Logger.d(r0, r2, r7)     // Catch: java.lang.Throwable -> La5
            goto L71
        L6a:
            if (r2 != 0) goto L71
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Throwable -> La5
            r1.<init>(r7)     // Catch: java.lang.Throwable -> La5
        L71:
            if (r1 == 0) goto L9f
            java.lang.String r7 = r1.toString()     // Catch: java.lang.Throwable -> La5
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> La5
            if (r7 != 0) goto L99
            java.lang.String r7 = "request_id"
            java.lang.String r7 = r1.optString(r7)     // Catch: java.lang.Throwable -> La5
            r6.a(r7)     // Catch: java.lang.Throwable -> La5
            java.lang.String r7 = "server_bidding_extra"
            java.lang.String r7 = r1.optString(r7)     // Catch: java.lang.Throwable -> La5
            r6.b(r7)     // Catch: java.lang.Throwable -> La5
            java.lang.String r7 = "server_request_id"
            java.lang.String r7 = r1.optString(r7)     // Catch: java.lang.Throwable -> La5
            r6.c(r7)     // Catch: java.lang.Throwable -> La5
            goto Lbe
        L99:
            java.lang.String r6 = "m_meta..data.string is null "
        L9b:
            com.bytedance.msdk.adapter.util.Logger.e(r0, r6)     // Catch: java.lang.Throwable -> La5
            goto Lbe
        L9f:
            java.lang.String r6 = "m_meta...data is null"
            goto L9b
        La2:
            java.lang.String r6 = "m_meta onResponse error "
            goto L9b
        La5:
            r6 = move-exception
            java.lang.String r6 = r6.toString()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r1 = "m_meta onResponse throwable ："
            r7.append(r1)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            com.bytedance.msdk.adapter.util.Logger.e(r0, r6)
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.f, org.json.JSONObject):void");
    }

    private void a(d dVar, f fVar) {
        ThreadHelper.runOnMSDKThread(new c(this, dVar, fVar));
    }

    private void a(d dVar, AdError adError) {
        ThreadHelper.runOnMSDKThread(new b(this, dVar, adError));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0017 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a r1, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.d r2, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.f r3) {
        /*
            r1.a(r2, r3)
        L3:
            r1 = 94
            r2 = 75
            r3 = 93
        L9:
            r0 = 92
            if (r1 == r0) goto L10
            if (r1 == r3) goto L13
            goto L18
        L10:
            switch(r2) {
                case 21: goto L18;
                case 22: goto L18;
                case 23: goto L18;
                default: goto L13;
            }
        L13:
            switch(r2) {
                case 91: goto L3;
                case 92: goto L18;
                case 93: goto L17;
                default: goto L16;
            }
        L16:
            goto L1d
        L17:
            return
        L18:
            r1 = 93
            r2 = 93
            goto L9
        L1d:
            r2 = 91
            goto L13
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a$d, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.f):void");
    }

    public static /* synthetic */ void a(a aVar, d dVar, AdError adError) {
        aVar.a(dVar, adError);
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

    private void a(JSONObject jSONObject, String str, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put("width", i);
            jSONObject2.put("height", i2);
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    private JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ACTD.APPID_KEY, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b());
            jSONObject.put("name", bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().h());
            c(jSONObject);
            b(jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private JSONObject b(AdSlot adSlot) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("request_id", adSlot.getLinkedId());
            jSONObject.put("ad_sdk_version", "3.6.0.1");
            jSONObject.put("source_type", "app");
            jSONObject.put("app", b());
            JSONObject a2 = m.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d());
            if (a2 != null && adSlot.getOrientation() > 0) {
                a2.put("orientation", adSlot.getOrientation());
            }
            jSONObject.put("device", a2);
            jSONObject.put(e.b, os.f3494if);
            jSONObject.put("ip", m.a());
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(a(adSlot));
            jSONObject.put("adslots", jSONArray);
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject.put("ts", currentTimeMillis);
            jSONObject.put("req_sign", n.a((adSlot.getAdUnitId() == null || adSlot.getLinkedId() == null) ? "" : String.valueOf(currentTimeMillis).concat(adSlot.getAdUnitId()).concat(adSlot.getLinkedId())));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private JSONObject b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
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
    private void b(org.json.JSONObject r6) {
        /*
            r5 = this;
            r0 = 92
        L2:
            r1 = 14
        L4:
            switch(r1) {
                case 13: goto L31;
                case 14: goto L33;
                case 15: goto L8;
                default: goto L7;
            }
        L7:
            goto L2
        L8:
            switch(r0) {
                case 94: goto L33;
                case 95: goto Lc;
                case 96: goto L33;
                default: goto Lb;
            }
        Lb:
            goto L33
        Lc:
            android.content.Context r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.d r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.e.b(r0)
            if (r0 == 0) goto L30
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Exception -> L30
            r1.<init>()     // Catch: java.lang.Exception -> L30
            java.lang.String r2 = "latitude"
            float r3 = r0.f10984a     // Catch: java.lang.Exception -> L30
            double r3 = (double) r3     // Catch: java.lang.Exception -> L30
            r1.put(r2, r3)     // Catch: java.lang.Exception -> L30
            java.lang.String r2 = "longitude"
            float r0 = r0.b     // Catch: java.lang.Exception -> L30
            double r3 = (double) r0     // Catch: java.lang.Exception -> L30
            r1.put(r2, r3)     // Catch: java.lang.Exception -> L30
            java.lang.String r0 = "geo"
            r6.put(r0, r1)     // Catch: java.lang.Exception -> L30
        L30:
            return
        L31:
            r1 = 72
        L33:
            r1 = 15
            r0 = 95
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.b(org.json.JSONObject):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0002, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a c() {
        /*
            java.lang.Class<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a> r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.class
        L2:
            r1 = 74
            r2 = 55
        L6:
            switch(r1) {
                case 72: goto L2;
                case 73: goto La;
                case 74: goto Ld;
                default: goto L9;
            }
        L9:
            goto L32
        La:
            switch(r2) {
                case 94: goto L15;
                case 95: goto L1a;
                case 96: goto L1a;
                default: goto Ld;
            }
        Ld:
            r1 = 56
            if (r2 == r1) goto L2
            r1 = 57
            if (r2 == r1) goto L1a
        L15:
            r1 = 73
            r2 = 96
            goto L6
        L1a:
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a r1 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.f10901a
            if (r1 != 0) goto L2f
            monitor-enter(r0)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a r1 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.f10901a     // Catch: java.lang.Throwable -> L2c
            if (r1 != 0) goto L2a
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a r1 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a     // Catch: java.lang.Throwable -> L2c
            r1.<init>()     // Catch: java.lang.Throwable -> L2c
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.f10901a = r1     // Catch: java.lang.Throwable -> L2c
        L2a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2c
            goto L2f
        L2c:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2c
            throw r1
        L2f:
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.f10901a
            return r0
        L32:
            r1 = 72
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.c():bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a");
    }

    private void c(JSONObject jSONObject) {
        while (true) {
            char c2 = '^';
            char c3 = 'K';
            while (true) {
                if (c2 == '\\') {
                    switch (c3) {
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
                        break;
                    default:
                        c3 = '[';
                }
            }
        }
        try {
            jSONObject.put(ak.o, l0.a());
            jSONObject.put("version_code", l0.d());
            jSONObject.put(LitePalParser.NODE_VERSION, l0.e());
        } catch (Exception unused) {
        }
    }

    public String a(Map<String, TTAbsAdLoaderAdapter> map, Context context, AdSlot adSlot, List<i> list, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar, int i, boolean z) {
        return a(map, context, adSlot, list, null, cVar, i, z);
    }

    public void a(String str, d dVar) {
        char c2 = '<';
        char c3 = '8';
        while (true) {
            char c4 = ')';
            while (true) {
                if (c4 == '(') {
                    switch (c2) {
                        case 'Q':
                            switch (c3) {
                            }
                        case 'R':
                            while (true) {
                                switch (c3) {
                                    case '\'':
                                        break;
                                    case '(':
                                    case ')':
                                        break;
                                    default:
                                        c3 = '\'';
                                }
                            }
                            break;
                    }
                } else if (c4 != ')') {
                    break;
                }
                c2 = 'S';
                c4 = '(';
            }
        }
        if (TextUtils.isEmpty(str)) {
            Logger.e("ServerBiddingHelper", "Server Bidding Request onResponse...response is invalid");
            a(dVar, new AdError(-1, "response is invalid"));
            return;
        }
        try {
            f fVar = new f();
            JSONObject jSONObject = new JSONObject(str);
            JSONArray optJSONArray = jSONObject.optJSONArray("items");
            JSONObject optJSONObject = jSONObject.optJSONObject("m_meta");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.g a2 = a(optJSONArray.optJSONObject(i));
                    if (a2 != null) {
                        arrayList.add(a2);
                    }
                }
                fVar.b(arrayList);
            }
            a(fVar, optJSONObject);
            a(dVar, fVar);
        } catch (Throwable th) {
            String th2 = th.toString();
            Logger.e("ServerBiddingHelper", "Server Bidding onResponse throwable ：" + th2);
            if (TextUtils.isEmpty(th2)) {
                th2 = AdError.getMessage(-1);
            }
            a(dVar, new AdError(-1, th2));
        }
    }

    public void a(Map<String, TTAbsAdLoaderAdapter> map, Context context, AdSlot adSlot, List<i> list, List<TTBaseAd> list2, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar, int i, boolean z, d dVar) {
        String a2 = a(map, context, adSlot, list, list2, cVar, i, z);
        Logger.i("serverBiddingRequest", "serverBiddingRequest-encryptBody=" + a2);
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.c c2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.b.b().a().c();
        c2.b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c.b());
        String p = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().p();
        if (!TextUtils.isEmpty(p)) {
            c2.a("X-Tt-Env", p);
            c2.a("x-use-ppe", "1");
        }
        c2.a("User-Agent", os.f3494if);
        c2.c(a2);
        c2.a(new C0043a(dVar));
    }

    /* compiled from: ServerBiddingHelper.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0043a extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ d f10902a;

        public C0043a(d dVar) {
            this.f10902a = dVar;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a
        public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.b bVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b bVar2) {
            int i;
            JSONObject jSONObject;
            JSONObject jSONObject2;
            JSONArray jSONArray;
            JSONObject jSONObject3;
            String str;
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.g gVar;
            JSONObject optJSONObject;
            C0043a c0043a = this;
            if (bVar2 != null && !TextUtils.isEmpty(bVar2.a())) {
                try {
                    JSONObject jSONObject4 = new JSONObject(bVar2.a());
                    int optInt = jSONObject4.optInt("cypher", -1);
                    String optString = jSONObject4.optString("message");
                    if (optInt <= -1 || TextUtils.isEmpty(optString)) {
                        int optInt2 = jSONObject4.optInt("status_code", -2);
                        int optInt3 = jSONObject4.optInt(RewardItem.KEY_REASON, -2);
                        Logger.e("ServerBiddingHelper", "Server Bidding onResponse error ");
                        a.a(a.this, c0043a.f10902a, new AdError(optInt2, String.valueOf(optInt3)));
                        return;
                    }
                    if (optInt == 2) {
                        String a2 = l0.a(optString);
                        if (!TextUtils.isEmpty(a2)) {
                            jSONObject = new JSONObject(a2);
                        }
                        jSONObject = null;
                    } else if (optInt == 1) {
                        String a3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.a.a(optString, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b.a());
                        if (!TextUtils.isEmpty(a3)) {
                            jSONObject = new JSONObject(a3);
                        }
                        jSONObject = null;
                    } else {
                        if (optInt == 0) {
                            jSONObject = new JSONObject(optString);
                        }
                        jSONObject = null;
                    }
                    if (jSONObject != null) {
                        if (!TextUtils.isEmpty(jSONObject.toString())) {
                            f fVar = new f();
                            fVar.a(jSONObject.optString("request_id"));
                            fVar.b(jSONObject.optString("server_bidding_extra"));
                            fVar.c(jSONObject.optString("server_request_id"));
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.g gVar2 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.g();
                            JSONObject optJSONObject2 = jSONObject.optJSONObject("winner");
                            String str2 = "app_id";
                            if (optJSONObject2 != null) {
                                try {
                                    gVar2.a(optJSONObject2.optInt("req_bidding_type"));
                                    gVar2.h(optJSONObject2.optString("price"));
                                    gVar2.g(optJSONObject2.optString("load_price"));
                                    gVar2.b(optJSONObject2.optString("adm"));
                                    gVar2.c(optJSONObject2.optString("name"));
                                    gVar2.e(optJSONObject2.optString("app_id"));
                                    gVar2.i(optJSONObject2.optString("slot_id"));
                                    gVar2.j(optJSONObject2.optString("win_callback", null));
                                    gVar2.f(optJSONObject2.optString("fail_callback", null));
                                    fVar.a(gVar2);
                                } catch (Throwable th) {
                                    th = th;
                                    c0043a = this;
                                    String th2 = th.toString();
                                    Logger.e("ServerBiddingHelper", "Server Bidding onResponse throwable ：" + th2);
                                    if (TextUtils.isEmpty(th2)) {
                                        i = -1;
                                        th2 = AdError.getMessage(-1);
                                    } else {
                                        i = -1;
                                    }
                                    a.a(a.this, c0043a.f10902a, new AdError(i, th2));
                                    return;
                                }
                            }
                            JSONArray optJSONArray = jSONObject.optJSONArray("winners");
                            if (optJSONArray == null || optJSONArray.length() <= 0) {
                                jSONObject2 = jSONObject;
                            } else {
                                ArrayList arrayList = new ArrayList();
                                int i2 = 0;
                                while (i2 < optJSONArray.length()) {
                                    try {
                                        gVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.g();
                                        jSONObject3 = jSONObject;
                                        try {
                                            optJSONObject = optJSONArray.optJSONObject(i2);
                                            jSONArray = optJSONArray;
                                            try {
                                                gVar.a(optJSONObject.optInt("req_bidding_type"));
                                                gVar.h(optJSONObject.optString("price"));
                                                gVar.g(optJSONObject.optString("load_price"));
                                                gVar.b(optJSONObject.optString("adm"));
                                                gVar.c(optJSONObject.optString("name"));
                                                gVar.e(optJSONObject.optString(str2));
                                                gVar.i(optJSONObject.optString("slot_id"));
                                                str = str2;
                                            } catch (Throwable th3) {
                                                th = th3;
                                                str = str2;
                                                Logger.d("ServerBiddingHelper", "new invalid_non_server_bidding_results winners parse error: " + th.toString());
                                                i2++;
                                                str2 = str;
                                                jSONObject = jSONObject3;
                                                optJSONArray = jSONArray;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            jSONArray = optJSONArray;
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        jSONArray = optJSONArray;
                                        jSONObject3 = jSONObject;
                                    }
                                    try {
                                        gVar.j(optJSONObject.optString("win_callback", null));
                                        gVar.f(optJSONObject.optString("fail_callback", null));
                                        gVar.d(optJSONObject.optString("m_aid", null));
                                        gVar.a(optJSONObject.optString("ad_extra", null));
                                        arrayList.add(gVar);
                                    } catch (Throwable th6) {
                                        th = th6;
                                        Logger.d("ServerBiddingHelper", "new invalid_non_server_bidding_results winners parse error: " + th.toString());
                                        i2++;
                                        str2 = str;
                                        jSONObject = jSONObject3;
                                        optJSONArray = jSONArray;
                                    }
                                    i2++;
                                    str2 = str;
                                    jSONObject = jSONObject3;
                                    optJSONArray = jSONArray;
                                }
                                jSONObject2 = jSONObject;
                                fVar.b(arrayList);
                            }
                            JSONObject jSONObject5 = jSONObject2;
                            JSONObject optJSONObject3 = jSONObject5.optJSONObject("waterfall");
                            if (optJSONObject3 != null) {
                                f.a aVar = new f.a();
                                aVar.a(optJSONObject3.optString(LitePalParser.NODE_VERSION));
                                JSONArray optJSONArray2 = optJSONObject3.optJSONArray("adn_rit_conf");
                                ArrayList arrayList2 = new ArrayList();
                                if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                                    for (int i3 = 0; i3 < optJSONArray2.length(); i3++) {
                                        JSONObject optJSONObject4 = optJSONArray2.optJSONObject(i3);
                                        i iVar = new i();
                                        iVar.b(optJSONObject4.optString("adn_name"));
                                        iVar.a(optJSONObject4.optString("adn_slot_id"));
                                        arrayList2.add(iVar);
                                    }
                                }
                                aVar.a(arrayList2);
                                fVar.a(aVar);
                            }
                            JSONArray optJSONArray3 = jSONObject5.optJSONArray("invalid_non_server_bidding_results");
                            ArrayList arrayList3 = new ArrayList();
                            if (optJSONArray3 != null && optJSONArray3.length() > 0) {
                                for (int i4 = 0; i4 < optJSONArray3.length(); i4++) {
                                    JSONObject optJSONObject5 = optJSONArray3.optJSONObject(i4);
                                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.e eVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.e();
                                    eVar.a(optJSONObject5.optString("name"));
                                    eVar.d(optJSONObject5.optString("slot_id"));
                                    eVar.a(optJSONObject5.optInt("req_bidding_type"));
                                    eVar.b(optJSONObject5.optInt("error_code"));
                                    eVar.b(optJSONObject5.optString("error_msg"));
                                    eVar.c(optJSONObject5.optString("level_tag"));
                                    arrayList3.add(eVar);
                                }
                                fVar.a(arrayList3);
                            }
                            a.a(a.this, this.f10902a, fVar);
                            return;
                        }
                        Logger.e("ServerBiddingHelper", "Server Bidding Request onResponse..data.string is null ");
                        a.a(a.this, c0043a.f10902a, new AdError(-1, "data.string is null"));
                        return;
                    }
                    Logger.e("ServerBiddingHelper", "Server Bidding Request onResponse...data is null");
                    a.a(a.this, c0043a.f10902a, new AdError(-1, "data is null"));
                } catch (Throwable th7) {
                    th = th7;
                }
            } else {
                Logger.e("ServerBiddingHelper", "Server Bidding Request onResponse...response is invalid");
                a.a(a.this, c0043a.f10902a, new AdError(-1, "response is invalid"));
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a
        public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.b bVar, IOException iOException) {
            int i;
            String iOException2;
            if (iOException instanceof SocketTimeoutException) {
                i = AdError.ERROR_CODE_NET_TIMEOUT;
                iOException2 = iOException.toString();
            } else {
                i = AdError.ERROR_CODE_NO_NET;
                iOException2 = iOException != null ? iOException.toString() : "没有网络";
            }
            Logger.e("ServerBiddingHelper", "Server Bidding Request onError...errorCode=" + i);
            d dVar = this.f10902a;
            if (dVar != null) {
                a.a(a.this, dVar, new AdError(i, iOException2));
            }
        }
    }
}
