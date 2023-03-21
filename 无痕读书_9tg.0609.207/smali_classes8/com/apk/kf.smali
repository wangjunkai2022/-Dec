.class public Lcom/apk/kf;
.super Ljava/lang/Object;
.source "DownloadFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/kf$for;,
        Lcom/apk/kf$if;
    }
.end annotation


# static fields
.field public static for:Lcom/apk/kf;

.field public static new:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Lcom/apk/hy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/biquge/ebook/app/bean/NewReadFont;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lcom/apk/z5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/kf$do;

    invoke-direct {v0, p0}, Lcom/apk/kf$do;-><init>(Lcom/apk/kf;)V

    iput-object v0, p0, Lcom/apk/kf;->if:Lcom/apk/z5;

    return-void
.end method

.method public static do(Ljava/lang/String;Lcom/apk/hy;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/kf;->new:Lcom/apk/gg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    sput-object v0, Lcom/apk/kf;->new:Lcom/apk/gg;

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 4
    sget-object v0, Lcom/apk/kf;->new:Lcom/apk/gg;

    invoke-virtual {v0, p0, p1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/apk/kf;->new:Lcom/apk/gg;

    invoke-virtual {p1, p0}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const-string p1, "REFRESH_DOWNLOAD_TXT_PROGRESS_KEY"

    .line 6
    invoke-static {p1, p0}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/biquge/ebook/app/bean/DownloadFileModel;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/DownloadFileModel;-><init>()V

    .line 3
    iput-object p1, v0, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Lcom/biquge/ebook/app/bean/DownloadFileModel;->info:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    invoke-static {p0, v0, p1}, Lcom/apk/kf;->if(Landroid/content/Context;Lcom/biquge/ebook/app/bean/DownloadFileModel;Lcom/apk/z5;)V

    return-void
.end method

.method public static goto(Lcom/biquge/ebook/app/bean/TaskInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    sget-object v1, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/apk/ry;->new(Lcom/apk/hy;)Lcom/apk/ty;

    move-result-object v1

    new-instance v2, Lcom/apk/kf$for;

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/TaskInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/apk/kf$for;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/apk/ty;->case()V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 6
    const-class v1, Lcom/biquge/ebook/app/bean/TaskInfo;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "url = ?"

    aput-object v4, v3, v0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v0
.end method

.method public static if(Landroid/content/Context;Lcom/biquge/ebook/app/bean/DownloadFileModel;Lcom/apk/z5;)V
    .locals 2

    if-eqz p1, :cond_b

    .line 1
    iget-object v0, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    new-instance v1, Lcom/apk/kf$if;

    invoke-direct {v1, p0, p1, p2}, Lcom/apk/kf$if;-><init>(Landroid/content/Context;Lcom/biquge/ebook/app/bean/DownloadFileModel;Lcom/apk/z5;)V

    .line 3
    sget-object p0, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 4
    iget-object p2, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/apk/ry;->if(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    sget-object p0, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 6
    iget-object p2, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/apk/ry;->do(Ljava/lang/String;)Lcom/apk/ty;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    :cond_1
    if-nez v0, :cond_2

    .line 8
    sget-object p0, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 9
    iget-object p2, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 10
    invoke-static {p0}, Lcom/apk/ry;->new(Lcom/apk/hy;)Lcom/apk/ty;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    :cond_2
    const/4 p0, 0x0

    if-nez v0, :cond_4

    .line 12
    iget-object p0, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    .line 13
    new-instance p2, Lcom/apk/ky;

    invoke-direct {p2, p0}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object p0, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/apk/ry;->for(Ljava/lang/String;Lcom/apk/qy;)Lcom/apk/ty;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    .line 16
    iget-object p0, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 17
    iget-object p0, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->name:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 19
    iget-object p2, v0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iput-object p0, p2, Lcom/apk/hy;->try:Ljava/lang/String;

    .line 20
    :cond_3
    invoke-virtual {v0}, Lcom/apk/ty;->goto()Lcom/apk/ty;

    const/4 p0, 0x1

    .line 21
    :cond_4
    iget-object p2, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->savePath:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 22
    iget-object p2, v0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object p1, p1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->savePath:Ljava/lang/String;

    iput-object p1, p2, Lcom/apk/hy;->for:Ljava/lang/String;

    .line 23
    :cond_5
    :try_start_0
    iget-object p1, v0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget p1, p1, Lcom/apk/hy;->break:I

    if-eqz p1, :cond_8

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    const/4 p2, 0x4

    if-eq p1, p2, :cond_8

    const/4 p0, 0x5

    if-eq p1, p0, :cond_6

    goto :goto_0

    .line 24
    :cond_6
    iget-object p0, v0, Lcom/apk/ty;->do:Lcom/apk/hy;

    .line 25
    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 27
    invoke-virtual {v1, p1}, Lcom/apk/kf$if;->case(Ljava/io/File;)V

    goto :goto_0

    .line 28
    :cond_7
    invoke-virtual {v0}, Lcom/apk/ty;->else()V

    goto :goto_0

    :cond_8
    if-eqz p0, :cond_9

    .line 29
    invoke-virtual {v0}, Lcom/apk/ty;->this()V

    goto :goto_0

    .line 30
    :cond_9
    new-instance p0, Ljava/io/File;

    iget-object p1, v0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object p1, p1, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 32
    invoke-virtual {v0}, Lcom/apk/ty;->this()V

    goto :goto_0

    .line 33
    :cond_a
    invoke-virtual {v0}, Lcom/apk/ty;->else()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_0
    return-void
.end method

.method public static new(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 2
    invoke-virtual {v0, p1}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/apk/ry;->new(Lcom/apk/hy;)Lcom/apk/ty;

    move-result-object v2

    new-instance v3, Lcom/apk/kf$for;

    invoke-direct {v3, p0, p1}, Lcom/apk/kf$for;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2, v3}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    .line 5
    iget-object p0, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Ljava/io/File;

    iget-object p1, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 7
    iget p0, v0, Lcom/apk/hy;->break:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/apk/ty;->if()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/apk/ty;->this()V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v2}, Lcom/apk/ty;->else()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static this(Lcom/biquge/ebook/app/bean/TaskInfo;)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "url = ?"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/bean/TaskInfo;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/TaskInfo;

    if-eqz v0, :cond_0

    const p0, 0x7f10038d

    .line 2
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    const-string v0, "REFRESH_DOWNLOAD_TXT_KEY"

    .line 4
    invoke-static {v0, p0}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/TaskInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;

    invoke-direct {v1}, Lcom/biquge/ebook/app/bean/DownloadFileModel;-><init>()V

    .line 7
    iput-object p0, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    .line 8
    new-instance v4, Lcom/apk/kf$for;

    invoke-direct {v4, v0, p0}, Lcom/apk/kf$for;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p0, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 10
    iget-object v0, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/ry;->if(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 11
    sget-object p0, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    .line 12
    iget-object v0, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/ry;->do(Ljava/lang/String;)Lcom/apk/ty;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v4}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    .line 14
    sget-object v0, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 15
    iget-object v5, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {v0}, Lcom/apk/ry;->new(Lcom/apk/hy;)Lcom/apk/ty;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v4}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    :cond_2
    if-nez p0, :cond_3

    .line 18
    iget-object p0, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/apk/ky;

    invoke-direct {v0, p0}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object p0, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/apk/ry;->for(Ljava/lang/String;Lcom/apk/qy;)Lcom/apk/ty;

    move-result-object p0

    .line 21
    invoke-virtual {p0, v4}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    .line 22
    invoke-virtual {p0}, Lcom/apk/ty;->goto()Lcom/apk/ty;

    const/4 v2, 0x1

    .line 23
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget v0, v0, Lcom/apk/hy;->break:I

    if-eqz v0, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    .line 25
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    iget-object p0, v4, Lcom/apk/kf$for;->if:Ljava/lang/String;

    iget-object v0, v4, Lcom/apk/kf$for;->for:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 28
    new-instance v2, Lcom/apk/b1;

    invoke-direct {v2}, Lcom/apk/b1;-><init>()V

    new-instance v4, Lcom/apk/lf;

    invoke-direct {v4, v1, p0, v0}, Lcom/apk/lf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_1

    .line 29
    :cond_5
    invoke-virtual {p0}, Lcom/apk/ty;->else()V

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 30
    invoke-virtual {p0}, Lcom/apk/ty;->this()V

    goto :goto_1

    .line 31
    :cond_7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/apk/ty;->do:Lcom/apk/hy;

    iget-object v1, v1, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 33
    invoke-virtual {p0}, Lcom/apk/ty;->this()V

    goto :goto_1

    .line 34
    :cond_8
    invoke-virtual {p0}, Lcom/apk/ty;->else()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const p0, 0x7f10011e

    .line 36
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return v3
.end method

.method public static try()Lcom/apk/kf;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/kf;->for:Lcom/apk/kf;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/kf;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/kf;->for:Lcom/apk/kf;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/kf;

    invoke-direct {v1}, Lcom/apk/kf;-><init>()V

    sput-object v1, Lcom/apk/kf;->for:Lcom/apk/kf;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/kf;->for:Lcom/apk/kf;

    return-object v0
.end method


# virtual methods
.method public case(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/NewReadFont;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/kf;->do:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/kf;->do:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/kf;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/kf;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/NewReadFont;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public else(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/kf;->do:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/kf;->do:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/kf;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
