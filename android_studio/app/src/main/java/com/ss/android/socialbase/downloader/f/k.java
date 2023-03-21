package com.ss.android.socialbase.downloader.f;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cgoto;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.h.e;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.network.c;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes7.dex */
public class k implements f, c.a {
    public int A;
    public final boolean B;

    /* renamed from: a  reason: collision with root package name */
    public final DownloadInfo f11881a;
    public final n b;
    public final b c;
    public final com.ss.android.socialbase.downloader.h.f d;
    public final g e;
    public com.ss.android.socialbase.downloader.model.d j;
    public com.ss.android.socialbase.downloader.model.d k;
    public long m;
    public int p;
    public BaseException q;
    public volatile boolean r;
    public final com.ss.android.socialbase.downloader.i.e t;
    public final com.ss.android.socialbase.downloader.h.e u;
    public long w;
    public long x;
    public long y;
    public float z;
    public volatile boolean f = false;
    public volatile boolean g = false;
    public final List<m> h = new ArrayList();
    public final List<q> i = new ArrayList();
    public volatile boolean l = true;
    public final LinkedList<i> n = new LinkedList<>();
    public final List<i> o = new ArrayList();
    public final Object s = new Object();
    public volatile boolean v = false;
    public final e.b C = new e.b() { // from class: com.ss.android.socialbase.downloader.f.k.1
        public int b;

        @Override // com.ss.android.socialbase.downloader.h.e.b
        public long a() {
            if (k.this.f || k.this.g) {
                return -1L;
            }
            synchronized (k.this) {
                if (k.this.j == null && k.this.k == null) {
                    long j = k.this.w;
                    if (j <= 0) {
                        return -1L;
                    }
                    this.b++;
                    m a2 = k.this.a(false, System.currentTimeMillis(), j);
                    if (a2 != null) {
                        k.this.c(a2);
                        a2.f();
                        return ((this.b / k.this.i.size()) + 1) * j;
                    }
                    return j;
                }
                return -1L;
            }
        }
    };
    public final e.b D = new e.b() { // from class: com.ss.android.socialbase.downloader.f.k.2
        @Override // com.ss.android.socialbase.downloader.h.e.b
        public long a() {
            return k.this.r();
        }
    };

    public k(@NonNull DownloadInfo downloadInfo, @NonNull n nVar, com.ss.android.socialbase.downloader.h.f fVar) {
        this.f11881a = downloadInfo;
        this.b = nVar;
        b bVar = new b(nVar.d(), this.b.e());
        this.c = bVar;
        this.d = fVar;
        this.e = new g(downloadInfo, fVar, bVar);
        this.u = new com.ss.android.socialbase.downloader.h.e();
        this.t = new com.ss.android.socialbase.downloader.i.e();
        this.B = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).b("debug") == 1;
    }

    private void h() {
        if (this.x > 0) {
            this.y = System.currentTimeMillis();
            this.u.a(this.D, 0L);
        }
    }

    private void i() {
        List<String> backUpUrls;
        int l = this.b.l();
        if (l <= 0) {
            this.l = false;
            e();
            return;
        }
        com.ss.android.socialbase.downloader.network.c a2 = com.ss.android.socialbase.downloader.network.c.a();
        a2.a(this.f11881a.getUrl(), this, ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
        if (l <= 2 || (backUpUrls = this.f11881a.getBackUpUrls()) == null) {
            return;
        }
        for (String str : backUpUrls) {
            if (!TextUtils.isEmpty(str)) {
                a2.a(str, this, ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
            }
        }
    }

    private q j() {
        q qVar;
        synchronized (this) {
            int size = this.p % this.i.size();
            if (this.b.b()) {
                this.p++;
            }
            qVar = this.i.get(size);
        }
        return qVar;
    }

    private void k() {
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "onComplete");
        this.c.c();
        synchronized (this.s) {
            this.s.notify();
        }
    }

    private boolean l() {
        for (m mVar : this.h) {
            if (!mVar.g()) {
                return false;
            }
        }
        return true;
    }

    private void m() {
        int size;
        if (this.m > 0 && (size = this.o.size()) > 1) {
            ArrayList<i> arrayList = null;
            int i = 0;
            for (int i2 = 1; i2 < size; i2++) {
                i iVar = this.o.get(i);
                i iVar2 = this.o.get(i2);
                if (iVar.e() > iVar2.c() && iVar2.a() <= 0 && iVar2.f11879a == null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(iVar2);
                    if (this.B) {
                        String str = "clearCovered, covered = " + iVar2 + ", prev = " + iVar;
                    }
                } else if (iVar2.e() > iVar.e()) {
                    i++;
                }
            }
            if (arrayList != null) {
                for (i iVar3 : arrayList) {
                    this.o.remove(iVar3);
                    for (m mVar : this.h) {
                        if (mVar.f11885a == iVar3) {
                            if (this.B) {
                                String str2 = "clearCoveredSegmentLocked: reconnect, segment = " + iVar3 + ", threadIndex = " + mVar.c;
                            }
                            mVar.a(true);
                        }
                    }
                }
            }
        }
    }

    private boolean n() {
        long j = this.m;
        if (j <= 0) {
            this.r = false;
            return false;
        }
        synchronized (this) {
            long a2 = o.a(this.o);
            com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "isAllContentDownloaded: firstOffset = " + a2);
            if (a2 >= j) {
                this.r = true;
                return true;
            }
            this.r = false;
            return false;
        }
    }

    private long o() {
        long j = 0;
        for (m mVar : this.h) {
            j += mVar.b();
        }
        return j;
    }

    private i p() {
        int i = 0;
        while (true) {
            i q = q();
            if (q == null) {
                return null;
            }
            m mVar = q.f11879a;
            if (mVar == null) {
                return q;
            }
            if (q.j() >= 2) {
                return null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            b(currentTimeMillis);
            if (currentTimeMillis - mVar.f > ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS && a(mVar, currentTimeMillis - ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS, currentTimeMillis, 500L, 1.0d)) {
                if (this.B) {
                    String str = "obtainSegmentWhenNoNewSegment: isDownloadSpeedPoor segment = " + q + ", owner.threadIndex = " + mVar.c;
                }
                return q;
            }
            int i2 = i + 1;
            if (i > 2) {
                if (this.B) {
                    String str2 = "obtainSegmentWhenNoNewSegment: waitCount > 2, return segment = " + q;
                }
                return q;
            }
            try {
                synchronized (this) {
                    wait(500L);
                }
                i = i2;
            } catch (InterruptedException unused) {
                return null;
            }
        }
    }

    private i q() {
        int j;
        i iVar = null;
        int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        for (i iVar2 : this.o) {
            if (a(iVar2) > 0 && (j = iVar2.j()) < i) {
                iVar = iVar2;
                i = j;
            }
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long r() {
        if (this.f || this.g) {
            return -1L;
        }
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            b(currentTimeMillis);
            long k = this.b.k();
            if (k > 0) {
                long j = this.y;
                if (j > 0 && currentTimeMillis - j > k && a(currentTimeMillis, k)) {
                    this.y = currentTimeMillis;
                    this.A++;
                }
            }
        }
        return ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS;
    }

    private void b(List<i> list) {
        long totalBytes = this.f11881a.getTotalBytes();
        this.m = totalBytes;
        if (totalBytes <= 0) {
            this.m = this.f11881a.getExpectFileLength();
            StringBuilder m1016super = Cgoto.m1016super("initSegments: getExpectFileLength = ");
            m1016super.append(this.m);
            com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", m1016super.toString());
        }
        synchronized (this) {
            this.n.clear();
            if (list != null && !list.isEmpty()) {
                for (i iVar : list) {
                    a((List<i>) this.n, new i(iVar), false);
                }
                d(this.n);
                c(this.n);
                com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "initSegments: totalLength = " + this.m);
            }
            a((List<i>) this.n, new i(0L, -1L), false);
            com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "initSegments: totalLength = " + this.m);
        }
    }

    private void c() throws BaseException, InterruptedException {
        BaseException baseException;
        synchronized (this.s) {
            if (this.j == null && this.k == null) {
                this.s.wait();
            }
        }
        if (this.j == null && this.k == null && (baseException = this.q) != null) {
            throw baseException;
        }
    }

    private void d() throws BaseException {
        try {
            this.e.a((d) this.c);
        } catch (p unused) {
        } catch (BaseException e) {
            com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", "dispatchSegments: loopAndWrite e = " + e);
            a(e);
            throw e;
        }
        if (this.g || this.f) {
            return;
        }
        try {
            synchronized (this) {
                while (!this.n.isEmpty()) {
                    i poll = this.n.poll();
                    if (poll != null) {
                        a(this.o, poll, true);
                    }
                }
                c(this.o);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (this.v && this.q != null) {
            StringBuilder m1016super = Cgoto.m1016super("dispatchSegments: loopAndWrite  failedException = ");
            m1016super.append(this.q);
            com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", m1016super.toString());
            throw this.q;
        }
        if (this.f11881a.getCurBytes() != this.f11881a.getTotalBytes()) {
            com.ss.android.socialbase.downloader.d.a.a(this.f11881a, this.o);
        }
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "dispatchSegments::download finished");
    }

    private void e() {
        int i;
        if (this.m <= 0 || this.l) {
            i = 1;
        } else {
            i = this.b.a();
            int h = (int) (this.m / this.b.h());
            if (i > h) {
                i = h;
            }
        }
        StringBuilder m1016super = Cgoto.m1016super("dispatchReadThread: totalLength = ");
        m1016super.append(this.m);
        m1016super.append(", threadCount = ");
        m1016super.append(i);
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", m1016super.toString());
        int i2 = i > 0 ? i : 1;
        synchronized (this) {
            do {
                if (this.h.size() >= i2) {
                    break;
                }
                if (!this.g && !this.f) {
                    a(j());
                }
                return;
            } while (!this.b.f());
        }
    }

    private void f() {
        this.i.add(new q(this.f11881a.getUrl(), true));
        List<String> backUpUrls = this.f11881a.getBackUpUrls();
        if (backUpUrls != null) {
            for (String str : backUpUrls) {
                if (!TextUtils.isEmpty(str)) {
                    this.i.add(new q(str, false));
                }
            }
        }
        this.b.a(this.i.size());
    }

    private void g() {
        n nVar = this.b;
        this.w = nVar.j();
        this.x = nVar.k();
        this.z = nVar.o();
        int i = this.A;
        if (i > 0) {
            this.u.a(this.C, i);
        }
    }

    public boolean a(List<i> list) throws BaseException, InterruptedException {
        try {
            f();
            b(list);
            e();
            g();
            i();
            long currentTimeMillis = System.currentTimeMillis();
            c();
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            this.f11881a.increaseAllConnectTime(currentTimeMillis2);
            this.f11881a.setFirstSpeedTime(currentTimeMillis2);
            if (!this.g && !this.f) {
                this.d.a(this.m);
                h();
                d();
                return true;
            }
            if (!this.g && !this.f) {
                com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "finally pause");
                b();
            }
            this.u.b();
            return true;
        } finally {
            if (!this.g && !this.f) {
                com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "finally pause");
                b();
            }
            this.u.b();
        }
    }

    private void c(List<i> list) {
        long b = o.b(list);
        StringBuilder m1016super = Cgoto.m1016super("checkDownloadBytes: getCurBytes = ");
        m1016super.append(this.f11881a.getCurBytes());
        m1016super.append(", totalBytes = ");
        m1016super.append(this.f11881a.getTotalBytes());
        m1016super.append(", downloadedBytes = ");
        m1016super.append(b);
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", m1016super.toString());
        if (b > this.f11881a.getTotalBytes() && this.f11881a.getTotalBytes() > 0) {
            b = this.f11881a.getTotalBytes();
        }
        if (this.f11881a.getCurBytes() == this.f11881a.getTotalBytes() || this.f11881a.getCurBytes() == b) {
            return;
        }
        this.f11881a.setCurBytes(b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
        if ((r10.e() - r24.e()) < (r14 / 2)) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void e(com.ss.android.socialbase.downloader.f.m r23, com.ss.android.socialbase.downloader.f.i r24) throws com.ss.android.socialbase.downloader.f.j {
        /*
            Method dump skipped, instructions count: 713
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.f.k.e(com.ss.android.socialbase.downloader.f.m, com.ss.android.socialbase.downloader.f.i):void");
    }

    private void b(String str, List<q> list) {
        int a2;
        Iterator<q> it;
        if (this.B) {
            while (list.iterator().hasNext()) {
                String str2 = "addIpListLocked: urlRecord = " + it.next();
            }
        }
        int l = this.b.l();
        if ((l == 1 || l == 3) && (a2 = a(str)) >= 0 && a2 < this.i.size()) {
            this.i.addAll(a2 + 1, list);
        } else {
            this.i.addAll(list);
        }
    }

    private List<q> c(String str, List<InetAddress> list) {
        boolean z;
        if (list != null && !list.isEmpty()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int i = 0;
            for (InetAddress inetAddress : list) {
                if (inetAddress != null) {
                    String hostAddress = inetAddress.getHostAddress();
                    if (!TextUtils.isEmpty(hostAddress)) {
                        boolean z2 = this.B;
                        q qVar = new q(str, hostAddress);
                        LinkedList linkedList = (LinkedList) linkedHashMap.get(qVar.c);
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                            linkedHashMap.put(qVar.c, linkedList);
                        }
                        linkedList.add(qVar);
                        i++;
                    }
                }
            }
            if (i > 0) {
                ArrayList arrayList = new ArrayList();
                do {
                    z = false;
                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                        LinkedList linkedList2 = (LinkedList) entry.getValue();
                        if (linkedList2 != null && !linkedList2.isEmpty()) {
                            arrayList.add((q) linkedList2.pollFirst());
                            i--;
                            z = true;
                        }
                    }
                    if (i <= 0) {
                        break;
                    }
                } while (z);
                return arrayList;
            }
        }
        return null;
    }

    private void d(List<i> list) {
        i iVar = list.get(0);
        long c = iVar.c();
        if (c > 0) {
            i iVar2 = new i(0L, c - 1);
            r0 = "fixSegmentsLocked: first = " + iVar + ", add new first = " + iVar2;
            a(list, iVar2, true);
        }
        Iterator<i> it = list.iterator();
        if (it.hasNext()) {
            i next = it.next();
            while (it.hasNext()) {
                i next2 = it.next();
                if (next.f() < next2.c() - 1) {
                    com.ss.android.socialbase.downloader.c.a.d("SegmentDispatcher", "fixSegment: segment = " + next + ", new end = " + (next2.c() - 1));
                    next.c(next2.c() - 1);
                }
                next = next2;
            }
        }
        i iVar3 = list.get(list.size() - 1);
        long totalBytes = this.f11881a.getTotalBytes();
        if (totalBytes <= 0 || (iVar3.f() != -1 && iVar3.f() < totalBytes - 1)) {
            com.ss.android.socialbase.downloader.c.a.d("SegmentDispatcher", "fixSegment: last segment = " + iVar3 + ", new end=-1");
            iVar3.c(-1L);
        }
    }

    private i b(m mVar, q qVar) {
        while (!this.n.isEmpty()) {
            i poll = this.n.poll();
            if (poll != null) {
                a(this.o, poll, true);
                if (a(poll) > 0 || this.m <= 0) {
                    return poll;
                }
            }
        }
        m();
        i c = c(mVar, qVar);
        if (c != null && a(c) > 0) {
            a(this.o, c, true);
            return c;
        }
        i p = p();
        if (p != null) {
            return p;
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void b(m mVar, i iVar) throws BaseException {
        synchronized (this) {
            e(mVar, iVar);
        }
    }

    @Override // com.ss.android.socialbase.downloader.network.c.a
    public void a(String str, List<InetAddress> list) {
        if (this.g || this.f) {
            return;
        }
        List<q> list2 = null;
        try {
            list2 = c(str, list);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        synchronized (this) {
            if (list2 != null) {
                b(str, list2);
            }
            this.l = false;
            this.b.a(this.i.size());
            e();
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void b(m mVar) {
        StringBuilder m1016super = Cgoto.m1016super("onReaderExit: threadIndex = ");
        m1016super.append(mVar.c);
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", m1016super.toString());
        synchronized (this) {
            mVar.c(true);
            this.h.remove(mVar);
            m();
            if (this.h.isEmpty()) {
                k();
            } else if (n()) {
                for (m mVar2 : this.h) {
                    mVar2.e();
                }
                k();
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void c(m mVar, i iVar) {
        synchronized (this) {
            if (iVar.f11879a == mVar) {
                com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "unApplySegment " + iVar);
                iVar.d(mVar.d());
                iVar.f11879a = null;
                mVar.a();
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public e d(m mVar, i iVar) throws BaseException {
        e a2;
        synchronized (this) {
            l lVar = new l(this.f11881a, this.c, iVar);
            this.e.a(lVar);
            a2 = lVar.a();
        }
        return a2;
    }

    private int a(String str) {
        int size = this.i.size();
        for (int i = 0; i < size; i++) {
            if (TextUtils.equals(this.i.get(i).f11887a, str)) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(m mVar) {
        synchronized (this) {
            q d = d(mVar);
            if (d == null) {
                return false;
            }
            return mVar.a(d);
        }
    }

    private void a(List<i> list, i iVar, boolean z) {
        long c = iVar.c();
        int size = list.size();
        int i = 0;
        while (i < size && c >= list.get(i).c()) {
            i++;
        }
        list.add(i, iVar);
        if (z) {
            iVar.a(size);
        }
    }

    private q d(m mVar) {
        q qVar;
        Iterator<q> it = this.i.iterator();
        q qVar2 = null;
        while (true) {
            if (!it.hasNext()) {
                qVar = null;
                break;
            }
            qVar = it.next();
            if (qVar != mVar.b && !qVar.d()) {
                if (qVar2 == null) {
                    qVar2 = qVar;
                }
                if (qVar.a() <= 0) {
                    break;
                }
            }
        }
        if (this.b.b()) {
            if (qVar != null) {
                return qVar;
            }
            if (this.b.c()) {
                return null;
            }
        }
        return qVar2;
    }

    private void b(m mVar, i iVar, q qVar, com.ss.android.socialbase.downloader.model.d dVar) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        m mVar2 = iVar.f11879a;
        if (mVar2 != null && mVar2 != mVar) {
            throw new j(1, "segment already has an owner");
        }
        if (mVar.h() == iVar.e()) {
            if (!dVar.b()) {
                if (iVar.e() <= 0) {
                    StringBuilder m1016super = Cgoto.m1016super("parseHttpResponse: segment.getCurrentOffsetRead = ");
                    m1016super.append(iVar.e());
                    com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", m1016super.toString());
                    if (!dVar.a()) {
                        int i = dVar.c;
                        StringBuilder m1016super2 = Cgoto.m1016super("2: response code error : ");
                        m1016super2.append(dVar.c);
                        m1016super2.append(" segment=");
                        m1016super2.append(iVar);
                        throw new com.ss.android.socialbase.downloader.exception.b(1004, i, m1016super2.toString());
                    }
                } else {
                    int i2 = dVar.c;
                    StringBuilder m1016super3 = Cgoto.m1016super("1: response code error : ");
                    m1016super3.append(dVar.c);
                    m1016super3.append(" segment=");
                    m1016super3.append(iVar);
                    throw new com.ss.android.socialbase.downloader.exception.b(1004, i2, m1016super3.toString());
                }
            }
            if (qVar.d) {
                if (this.j == null) {
                    this.j = dVar;
                    synchronized (this.s) {
                        this.s.notify();
                    }
                    com.ss.android.socialbase.downloader.h.f fVar = this.d;
                    if (fVar != null) {
                        fVar.a(qVar.f11887a, dVar.b, iVar.e());
                    }
                    long j = dVar.j();
                    if (j > 0) {
                        for (i iVar2 : this.o) {
                            if (iVar2.f() <= 0 || iVar2.f() > j - 1) {
                                iVar2.c(j - 1);
                            }
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            a(dVar);
            if (this.k == null) {
                this.k = dVar;
                if (this.f11881a.getTotalBytes() <= 0) {
                    long j2 = dVar.j();
                    com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "checkSegmentHttpResponse:len=" + j2 + ",url=" + qVar.f11887a);
                    this.f11881a.setTotalBytes(j2);
                }
                synchronized (this.s) {
                    this.s.notify();
                }
                return;
            }
            return;
        }
        throw new j(5, "applySegment");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.ss.android.socialbase.downloader.f.i c(com.ss.android.socialbase.downloader.f.m r28, com.ss.android.socialbase.downloader.f.q r29) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.f.k.c(com.ss.android.socialbase.downloader.f.m, com.ss.android.socialbase.downloader.f.q):com.ss.android.socialbase.downloader.f.i");
    }

    private void a(q qVar) {
        m mVar = new m(this.f11881a, this, this.c, qVar, this.h.size());
        this.h.add(mVar);
        mVar.a(com.ss.android.socialbase.downloader.downloader.c.q().submit(mVar));
    }

    private float d(m mVar, q qVar) {
        long b = mVar.b();
        int size = this.h.size();
        if (size <= 1) {
            size = this.b.a();
        }
        float f = 1.0f;
        if (b <= 0) {
            float m = this.b.m();
            if (m <= 0.0f || m >= 1.0f) {
                m = 1.0f / size;
            }
            if (mVar.c == 0) {
                return m;
            }
            if (size > 1) {
                f = 1.0f - m;
                size--;
            }
        } else {
            long o = o();
            if (o > b) {
                return ((float) b) / ((float) o);
            }
        }
        return f / size;
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void a(m mVar) {
        if (this.B) {
            StringBuilder m1016super = Cgoto.m1016super("onReaderRun, threadIndex = ");
            m1016super.append(mVar.c);
            com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", m1016super.toString());
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public i a(m mVar, q qVar) {
        if (this.f || this.g) {
            return null;
        }
        synchronized (this) {
            i b = b(mVar, qVar);
            if (b != null) {
                b.h();
                if (b.j() > 1) {
                    return new i(b);
                }
            }
            return b;
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void a(m mVar, i iVar) {
        synchronized (this) {
            iVar.i();
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void a(m mVar, i iVar, q qVar, com.ss.android.socialbase.downloader.model.d dVar) throws BaseException, com.ss.android.socialbase.downloader.exception.i {
        synchronized (this) {
            if (!this.f && !this.g) {
                b(mVar, iVar, qVar, dVar);
                mVar.b(false);
                if (this.m <= 0) {
                    long totalBytes = this.f11881a.getTotalBytes();
                    this.m = totalBytes;
                    if (totalBytes <= 0) {
                        this.m = dVar.j();
                    }
                    e();
                } else if (this.b.f()) {
                    e();
                }
            } else {
                throw new p("connected");
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void a(m mVar, q qVar, i iVar, BaseException baseException, int i, int i2) {
        com.ss.android.socialbase.downloader.i.f.b(baseException);
        int errorCode = baseException.getErrorCode();
        if (((errorCode == 1047 || errorCode == 1074 || errorCode == 1055) ? true : true) || i >= i2) {
            c(mVar);
        }
    }

    public void b() {
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "pause1");
        this.g = true;
        synchronized (this) {
            for (m mVar : this.h) {
                mVar.e();
            }
        }
        this.e.b();
        this.c.c();
    }

    @Override // com.ss.android.socialbase.downloader.f.f
    public void a(m mVar, q qVar, i iVar, BaseException baseException) {
        synchronized (this) {
            com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", "onSegmentFailed: segment = " + iVar + ", e = " + baseException);
            mVar.b(true);
            if (mVar.c == 0) {
                this.q = baseException;
            }
            if (l()) {
                if (this.q == null) {
                    this.q = baseException;
                }
                this.v = true;
                a(this.q);
            }
        }
    }

    private void b(long j) {
        this.t.a(this.f11881a.getCurBytes(), j);
        for (m mVar : this.h) {
            mVar.b(j);
        }
    }

    private void a(BaseException baseException) {
        com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", "onError, e = " + baseException);
        this.q = baseException;
        this.c.c();
        synchronized (this) {
            for (m mVar : this.h) {
                mVar.e();
            }
        }
    }

    private void a(com.ss.android.socialbase.downloader.model.d dVar) throws BaseException {
        com.ss.android.socialbase.downloader.model.d dVar2 = this.j;
        if (dVar2 == null && (dVar2 = this.k) == null) {
            return;
        }
        long j = dVar.j();
        long j2 = dVar2.j();
        if (j != j2) {
            String str = "total len not equals,len=" + j + ",sLen=" + j2 + ",code=" + dVar.c + ",sCode=" + dVar2.c + ",range=" + dVar.e() + ",sRange = " + dVar2.e() + ",url = " + dVar.f11987a + ",sUrl=" + dVar2.f11987a;
            com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", str);
            if (j > 0 && j2 > 0) {
                throw new BaseException(1074, str);
            }
        }
        String c = dVar.c();
        String c2 = dVar2.c();
        if (TextUtils.equals(c, c2)) {
            return;
        }
        String str2 = "etag not equals with main url, etag = " + c + ", mainEtag = " + c2;
        com.ss.android.socialbase.downloader.c.a.e("SegmentDispatcher", str2);
        if (!TextUtils.isEmpty(c) && !TextUtils.isEmpty(c2) && !c.equalsIgnoreCase(c2)) {
            throw new BaseException(1074, str2);
        }
    }

    public void a() {
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "cancel");
        this.f = true;
        synchronized (this) {
            for (m mVar : this.h) {
                mVar.e();
            }
        }
        this.e.a();
        this.c.c();
    }

    private int a(long j) {
        int size = this.o.size();
        for (int i = 0; i < size; i++) {
            i iVar = this.o.get(i);
            if (iVar.c() == j) {
                return i;
            }
            if (iVar.c() > j) {
                return -1;
            }
        }
        return -1;
    }

    private long a(int i, int i2) {
        i iVar = this.o.get(i);
        long a2 = a(iVar);
        int i3 = i + 1;
        i iVar2 = i3 < i2 ? this.o.get(i3) : null;
        if (iVar2 == null) {
            return a2;
        }
        long c = iVar2.c() - iVar.e();
        return a2 == -1 ? c : Math.min(a2, c);
    }

    private long a(i iVar) {
        long b = iVar.b();
        if (b == -1) {
            long j = this.m;
            return j > 0 ? j - iVar.e() : b;
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public m a(boolean z, long j, long j2) {
        m mVar = null;
        for (m mVar2 : this.h) {
            if (mVar2.c != 0 || z) {
                if (mVar2.d > 0 && mVar2.e <= 0 && j - mVar2.d > j2 && (mVar == null || mVar2.d < mVar.d)) {
                    mVar = mVar2;
                }
            }
        }
        return mVar;
    }

    private boolean a(m mVar, long j, long j2, long j3, double d) {
        if (mVar.f > 0) {
            long b = this.t.b(j, j2);
            int size = this.h.size();
            if (size > 0) {
                b /= size;
            }
            long a2 = mVar.a(j, j2);
            return a2 < j3 || ((double) a2) < ((double) b) * d;
        }
        return false;
    }

    private boolean a(long j, long j2) {
        long j3 = j - j2;
        long b = this.t.b(j3, j);
        int size = this.h.size();
        if (size > 0) {
            b /= size;
        }
        m a2 = a(j3, j, Math.max(10.0f, ((float) b) * this.z), size / 2);
        if (a2 != null) {
            c(a2);
            StringBuilder m1016super = Cgoto.m1016super("handlePoorReadThread: reconnect for poor speed, threadIndex = ");
            m1016super.append(a2.c);
            com.ss.android.socialbase.downloader.c.a.d("SegmentDispatcher", m1016super.toString());
            a2.f();
            return true;
        }
        m a3 = a(true, j, j2);
        if (a3 != null) {
            c(a3);
            StringBuilder m1016super2 = Cgoto.m1016super("handlePoorReadThread: reconnect for connect timeout, threadIndex = ");
            m1016super2.append(a3.c);
            com.ss.android.socialbase.downloader.c.a.d("SegmentDispatcher", m1016super2.toString());
            a3.f();
            return true;
        }
        return false;
    }

    private m a(long j, long j2, long j3, int i) {
        long j4 = RecyclerView.FOREVER_NS;
        int i2 = 0;
        m mVar = null;
        for (m mVar2 : this.h) {
            if (mVar2.f > 0) {
                i2++;
                if (mVar2.f < j) {
                    long a2 = mVar2.a(j, j2);
                    boolean z = this.B;
                    if (a2 >= 0 && a2 < j4) {
                        mVar = mVar2;
                        j4 = a2;
                    }
                }
            }
        }
        if (mVar == null || i2 < i || j4 >= j3) {
            return null;
        }
        com.ss.android.socialbase.downloader.c.a.c("SegmentDispatcher", "findPoorReadThread: ----------- minSpeed = " + j4 + ", threadIndex = " + mVar.c);
        return mVar;
    }
}
