package kimi.wuhends.ebooks;

import com.wrapper.proxyapplication.WrapperProxyApplication;

/* JADX WARN: Classes with same name are omitted:
  classes.dex
 */
/* loaded from: classes5.dex */
public class MyWrapperProxyApplication extends WrapperProxyApplication {
    @Override // com.wrapper.proxyapplication.WrapperProxyApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:12:0x0024
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @Override // com.wrapper.proxyapplication.WrapperProxyApplication
    protected void initProxyApplication(android.content.Context r6) {
        /*
            r5 = this;
            r4 = move-result
            r1 = 0
            java.util.zip.ZipFile r2 = new java.util.zip.ZipFile     // Catch: java.io.IOException -> L21
            r2.<init>(r0)     // Catch: java.io.IOException -> L21
            r1 = r2
        La:
            if (r1 != 0) goto L17
            int r4 = android.os.Process.myPid()
            android.os.Process.killProcess(r4)
            r4 = 0
            java.lang.System.exit(r4)
        L17:
            com.wrapper.proxyapplication.Util.PrepareSecurefiles(r6, r1)
        L1b:
            java.lang.String r4 = com.wrapper.proxyapplication.Util.libname
            java.lang.System.loadLibrary(r4)
        L21:
            r3 = move-exception
            goto La
        L24:
            r3 = move-exception
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: kimi.wuhends.ebooks.MyWrapperProxyApplication.initProxyApplication(android.content.Context):void");
    }
}
