.class public Lcom/apk/kf$if;
.super Lcom/apk/sy;
.source "DownloadFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/kf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public final for:I

.field public final if:Landroid/content/Context;

.field public final new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

.field public final try:Lcom/apk/z5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biquge/ebook/app/bean/DownloadFileModel;Lcom/apk/z5;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/apk/sy;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/apk/kf$if;->if:Landroid/content/Context;

    .line 3
    iget-object p1, p2, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/apk/kf$if;->for:I

    .line 4
    iput-object p2, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    .line 5
    iput-object p3, p0, Lcom/apk/kf$if;->try:Lcom/apk/z5;

    return-void
.end method


# virtual methods
.method public case(Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-boolean v0, v0, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isInstall:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/kf$if;->if:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/apk/ze;->z(Landroid/content/Context;Ljava/io/File;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-boolean v0, v0, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowNotice:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object v0

    iget v1, p0, Lcom/apk/kf$if;->for:I

    invoke-virtual {v0, v1}, Lcom/apk/cg;->do(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/kf$if;->try:Lcom/apk/z5;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-object v1, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/apk/z5;->do(Ljava/io/File;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public do(Lcom/apk/hy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-boolean v0, v0, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowToast:Z

    if-eqz v0, :cond_0

    const v0, 0x7f100129

    .line 2
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-boolean v0, v0, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowNotice:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object v0

    iget v1, p0, Lcom/apk/kf$if;->for:I

    invoke-virtual {v0, v1}, Lcom/apk/cg;->do(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/kf$if;->try:Lcom/apk/z5;

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p1, Lcom/apk/hy;->while:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-object v1, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/apk/z5;->if(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public for(Lcom/apk/hy;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-boolean v0, v0, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowNotice:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object v0

    iget v1, p0, Lcom/apk/kf$if;->for:I

    iget-wide v2, p1, Lcom/apk/hy;->else:J

    long-to-int v3, v2

    iget-wide v4, p1, Lcom/apk/hy;->goto:J

    long-to-int v2, v4

    invoke-virtual {v0, v1, v3, v2}, Lcom/apk/cg;->new(III)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/kf$if;->try:Lcom/apk/z5;

    if-eqz v0, :cond_1

    .line 4
    iget-wide v1, p1, Lcom/apk/hy;->else:J

    long-to-int v2, v1

    iget-wide v3, p1, Lcom/apk/hy;->goto:J

    long-to-int p1, v3

    iget-object v1, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-object v1, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-interface {v0, v2, p1, v1}, Lcom/apk/z5;->for(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic if(Ljava/lang/Object;Lcom/apk/hy;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/apk/kf$if;->case(Ljava/io/File;)V

    return-void
.end method

.method public new(Lcom/apk/hy;)V
    .locals 0

    return-void
.end method

.method public try(Lcom/apk/hy;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-boolean v0, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowToast:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->info:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f10012a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-object v2, v2, Lcom/biquge/ebook/app/bean/DownloadFileModel;->info:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-boolean p1, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowNotice:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/kf$if;->if:Landroid/content/Context;

    iget v1, p0, Lcom/apk/kf$if;->for:I

    iget-object v2, p0, Lcom/apk/kf$if;->new:Lcom/biquge/ebook/app/bean/DownloadFileModel;

    iget-object v2, v2, Lcom/biquge/ebook/app/bean/DownloadFileModel;->info:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/cg;->for(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    return-void
.end method
