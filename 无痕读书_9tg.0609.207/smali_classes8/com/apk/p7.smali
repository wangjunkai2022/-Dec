.class public Lcom/apk/p7;
.super Ljava/lang/Object;
.source "DownloadTxtListActivity.java"

# interfaces
.implements Lcom/apk/xv;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/p7;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ILjava/lang/String;)V
    .locals 6

    const/4 p2, 0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/apk/p7;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->i(Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const v1, 0x7f10039d

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const-string p2, ""

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_1
    new-array p2, p2, [Ljava/lang/Object;

    const v2, 0x7f100396

    .line 2
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {v1, p2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    new-array p2, p2, [Ljava/lang/Object;

    const v2, 0x7f100398

    .line 3
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {v1, p2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    new-array p2, p2, [Ljava/lang/Object;

    const v2, 0x7f100397

    .line 4
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {v1, p2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/apk/p7;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    new-instance v3, Lcom/apk/p7$do;

    invoke-direct {v3, p0, p1}, Lcom/apk/p7$do;-><init>(Lcom/apk/p7;I)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v1

    invoke-static/range {v0 .. v5}, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->j(Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    return-void
.end method
