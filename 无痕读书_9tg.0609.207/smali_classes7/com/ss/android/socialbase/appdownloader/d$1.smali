.class public Lcom/ss/android/socialbase/appdownloader/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/impls/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ss/android/socialbase/appdownloader/d;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/appdownloader/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$1;->a:Lcom/ss/android/socialbase/appdownloader/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JZI)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ss/android/socialbase/appdownloader/RetryJobSchedulerService;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JZI)V

    return-void
.end method
