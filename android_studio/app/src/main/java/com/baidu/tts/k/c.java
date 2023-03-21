package com.baidu.tts.k;

import com.baidu.tts.k.a;
import com.baidu.tts.k.b;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Future;

/* compiled from: Memorizer.java */
/* loaded from: classes8.dex */
public class c<A extends b<A, R>, R extends a> {

    /* renamed from: a  reason: collision with root package name */
    public final ConcurrentMap<A, Future<R>> f11232a = new ConcurrentHashMap();

    private A b(A a2) {
        for (A a3 : this.f11232a.keySet()) {
            if (a2.compareTo(a3) == 0) {
                return a3;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0066  */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.concurrent.Future, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.concurrent.FutureTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public R a(A r8) throws java.lang.Exception {
        /*
            r7 = this;
            com.baidu.tts.k.b r0 = r7.b(r8)
            r1 = 0
            if (r0 == 0) goto L10
            java.util.concurrent.ConcurrentMap<A extends com.baidu.tts.k.b<A, R>, java.util.concurrent.Future<R extends com.baidu.tts.k.a>> r2 = r7.f11232a
            java.lang.Object r2 = r2.get(r0)
            java.util.concurrent.Future r2 = (java.util.concurrent.Future) r2
            goto L11
        L10:
            r2 = r1
        L11:
            java.lang.String r3 = "Memorizer"
            if (r2 == 0) goto L63
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "+ get f="
            r4.append(r5)
            r4.append(r2)
            java.lang.String r4 = r4.toString()
            com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r3, r4)
            java.lang.Object r4 = r2.get()
            com.baidu.tts.k.a r4 = (com.baidu.tts.k.a) r4
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "- get f="
            r5.append(r6)
            r5.append(r2)
            java.lang.String r5 = r5.toString()
            com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r3, r5)
            boolean r5 = r4.g()
            if (r5 != 0) goto L63
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = "arg invalid r="
            r2.append(r5)
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r3, r2)
            java.util.concurrent.ConcurrentMap<A extends com.baidu.tts.k.b<A, R>, java.util.concurrent.Future<R extends com.baidu.tts.k.a>> r2 = r7.f11232a
            r2.remove(r0)
            goto L64
        L63:
            r1 = r2
        L64:
            if (r1 != 0) goto La2
            java.util.concurrent.FutureTask r1 = new java.util.concurrent.FutureTask
            r1.<init>(r8)
            java.util.concurrent.ConcurrentMap<A extends com.baidu.tts.k.b<A, R>, java.util.concurrent.Future<R extends com.baidu.tts.k.a>> r0 = r7.f11232a
            java.lang.Object r0 = r0.putIfAbsent(r8, r1)
            java.util.concurrent.Future r0 = (java.util.concurrent.Future) r0
            if (r0 != 0) goto La1
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "+ run f="
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r3, r0)
            r1.run()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "- run f="
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r3, r0)
            goto La2
        La1:
            r1 = r0
        La2:
            java.lang.Object r0 = r1.get()     // Catch: java.lang.Exception -> La9 java.util.concurrent.ExecutionException -> Lb0
            com.baidu.tts.k.a r0 = (com.baidu.tts.k.a) r0     // Catch: java.lang.Exception -> La9 java.util.concurrent.ExecutionException -> Lb0
            return r0
        La9:
            r0 = move-exception
            java.util.concurrent.ConcurrentMap<A extends com.baidu.tts.k.b<A, R>, java.util.concurrent.Future<R extends com.baidu.tts.k.a>> r2 = r7.f11232a
            r2.remove(r8, r1)
            throw r0
        Lb0:
            r0 = move-exception
            java.util.concurrent.ConcurrentMap<A extends com.baidu.tts.k.b<A, R>, java.util.concurrent.Future<R extends com.baidu.tts.k.a>> r2 = r7.f11232a
            r2.remove(r8, r1)
            java.lang.Throwable r8 = r0.getCause()
            java.lang.Exception r8 = (java.lang.Exception) r8
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.k.c.a(com.baidu.tts.k.b):com.baidu.tts.k.a");
    }

    public void a() {
        ConcurrentMap<A, Future<R>> concurrentMap = this.f11232a;
        if (concurrentMap != null) {
            concurrentMap.clear();
        }
    }
}
