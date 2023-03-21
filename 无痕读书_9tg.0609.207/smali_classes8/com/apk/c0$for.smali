.class public final Lcom/apk/c0$for;
.super Lcom/apk/sy;
.source "BaiDuVoiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation


# instance fields
.field public final case:Z

.field public final synthetic else:Lcom/apk/c0;

.field public final for:Ljava/lang/String;

.field public final if:Landroid/content/Context;

.field public final new:I

.field public final try:Lcom/apk/e1;


# direct methods
.method public constructor <init>(Lcom/apk/c0;Landroid/content/Context;Lcom/biquge/ebook/app/bean/DownloadFileModel;Ljava/lang/String;Lcom/apk/e1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/c0$for;->else:Lcom/apk/c0;

    .line 2
    invoke-direct {p0, p4}, Lcom/apk/sy;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lcom/apk/c0$for;->if:Landroid/content/Context;

    .line 4
    iget-object p1, p3, Lcom/biquge/ebook/app/bean/DownloadFileModel;->info:Ljava/lang/String;

    iput-object p1, p0, Lcom/apk/c0$for;->for:Ljava/lang/String;

    .line 5
    iget-object p1, p3, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/apk/c0$for;->new:I

    .line 6
    iput-object p5, p0, Lcom/apk/c0$for;->try:Lcom/apk/e1;

    .line 7
    iput-boolean p6, p0, Lcom/apk/c0$for;->case:Z

    return-void
.end method


# virtual methods
.method public case(Ljava/io/File;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/apk/c0$for;->case:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const/4 v1, 0x0

    const-string v2, "jniLibs"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BaiduPlugin"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/ze;->native(Ljava/lang/String;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/c0$for;->else:Lcom/apk/c0;

    iget-object v1, p0, Lcom/apk/c0$for;->if:Landroid/content/Context;

    iget-object v2, p0, Lcom/apk/c0$for;->try:Lcom/apk/e1;

    if-eqz v0, :cond_1

    .line 6
    new-instance v3, Lcom/apk/b1;

    invoke-direct {v3}, Lcom/apk/b1;-><init>()V

    new-instance v4, Lcom/apk/e0;

    invoke-direct {v4, v0, p1, v1, v2}, Lcom/apk/e0;-><init>(Lcom/apk/c0;Ljava/io/File;Landroid/content/Context;Lcom/apk/e1;)V

    invoke-virtual {v3, v4}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 7
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object p1

    iget v0, p0, Lcom/apk/c0$for;->new:I

    invoke-virtual {p1, v0}, Lcom/apk/cg;->do(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public do(Lcom/apk/hy;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object p1

    iget v0, p0, Lcom/apk/c0$for;->new:I

    invoke-virtual {p1, v0}, Lcom/apk/cg;->do(I)V

    const p1, 0x7f100095

    .line 2
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 3
    iget-object p1, p0, Lcom/apk/c0$for;->else:Lcom/apk/c0;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/apk/c0;->new:Z

    return-void
.end method

.method public for(Lcom/apk/hy;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object v0

    iget v1, p0, Lcom/apk/c0$for;->new:I

    iget-wide v2, p1, Lcom/apk/hy;->else:J

    long-to-int v3, v2

    iget-wide v4, p1, Lcom/apk/hy;->goto:J

    long-to-int p1, v4

    invoke-virtual {v0, v1, v3, p1}, Lcom/apk/cg;->new(III)V

    return-void
.end method

.method public bridge synthetic if(Ljava/lang/Object;Lcom/apk/hy;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/apk/c0$for;->case(Ljava/io/File;)V

    return-void
.end method

.method public new(Lcom/apk/hy;)V
    .locals 0

    return-void
.end method

.method public try(Lcom/apk/hy;)V
    .locals 3

    const p1, 0x7f100094

    .line 1
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 2
    invoke-static {}, Lcom/apk/cg;->if()Lcom/apk/cg;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/c0$for;->if:Landroid/content/Context;

    iget v1, p0, Lcom/apk/c0$for;->new:I

    iget-object v2, p0, Lcom/apk/c0$for;->for:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/cg;->for(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
