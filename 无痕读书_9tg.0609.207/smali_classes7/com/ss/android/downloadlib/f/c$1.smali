.class public Lcom/ss/android/downloadlib/f/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/f/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/c/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field public final synthetic c:Lcom/ss/android/socialbase/appdownloader/c/i;

.field public final synthetic d:Lcom/ss/android/downloadlib/f/c;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/f/c;ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/f/c$1;->d:Lcom/ss/android/downloadlib/f/c;

    iput p2, p0, Lcom/ss/android/downloadlib/f/c$1;->a:I

    iput-object p3, p0, Lcom/ss/android/downloadlib/f/c$1;->b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p4, p0, Lcom/ss/android/downloadlib/f/c$1;->c:Lcom/ss/android/socialbase/appdownloader/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/android/downloadlib/f/c$1;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/ss/android/downloadlib/f/c$1;->d:Lcom/ss/android/downloadlib/f/c;

    iget-object v2, p0, Lcom/ss/android/downloadlib/f/c$1;->b:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v3, p0, Lcom/ss/android/downloadlib/f/c$1;->c:Lcom/ss/android/socialbase/appdownloader/c/i;

    invoke-static {v1, v2, v0, v3}, Lcom/ss/android/downloadlib/f/c;->a(Lcom/ss/android/downloadlib/f/c;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/socialbase/appdownloader/c/i;)V

    return-void
.end method
