.class public Lcom/ss/android/socialbase/appdownloader/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/e;)Lcom/ss/android/socialbase/downloader/depend/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ss/android/socialbase/appdownloader/c/e;

.field public final synthetic b:Lcom/ss/android/socialbase/appdownloader/d;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/appdownloader/d;Lcom/ss/android/socialbase/appdownloader/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->b:Lcom/ss/android/socialbase/appdownloader/d;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    :pswitch_3
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadTime()J

    move-result-wide v5

    move v2, p1

    move-object v3, p3

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(ILjava/lang/String;IJ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$4;->a:Lcom/ss/android/socialbase/appdownloader/c/e;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/appdownloader/c/e;->a(Z)Z

    move-result p1

    return p1
.end method
