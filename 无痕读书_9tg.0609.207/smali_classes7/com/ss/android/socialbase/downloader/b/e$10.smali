.class public Lcom/ss/android/socialbase/downloader/b/e$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field public final synthetic b:Lcom/ss/android/socialbase/downloader/b/e;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e$10;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/b/e$10;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e$10;->b:Lcom/ss/android/socialbase/downloader/b/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/b/e$10;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method
