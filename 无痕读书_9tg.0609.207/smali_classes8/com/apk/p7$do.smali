.class public Lcom/apk/p7$do;
.super Ljava/lang/Object;
.source "DownloadTxtListActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/p7;->do(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/apk/p7;


# direct methods
.method public constructor <init>(Lcom/apk/p7;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/p7$do;->if:Lcom/apk/p7;

    iput p2, p0, Lcom/apk/p7$do;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 13

    .line 1
    const-class v0, Lcom/biquge/ebook/app/bean/TaskInfo;

    iget v1, p0, Lcom/apk/p7$do;->do:I

    const-string v2, "0"

    const-string v3, "finish = ?"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    :try_start_0
    new-array v1, v5, [J

    .line 2
    invoke-static {v0, v1}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_3

    .line 5
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biquge/ebook/app/bean/TaskInfo;

    .line 6
    sget-object v9, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 7
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 8
    invoke-static {v9}, Lcom/apk/ry;->new(Lcom/apk/hy;)Lcom/apk/ty;

    move-result-object v9

    new-instance v10, Lcom/apk/kf$for;

    .line 9
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/TaskInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/apk/kf$for;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    goto :goto_1

    :cond_1
    move-object v9, v4

    :goto_1
    if-eqz v9, :cond_2

    .line 10
    invoke-virtual {v9}, Lcom/apk/ty;->case()V

    new-array v9, v2, [Ljava/lang/String;

    const-string v10, "url = ?"

    aput-object v10, v9, v5

    .line 11
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-static {v0, v9}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/apk/p7$do;->if:Lcom/apk/p7;

    iget-object v0, v0, Lcom/apk/p7;->do:Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;

    .line 14
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/DownloadTxtListActivity;->try:Lcom/apk/g1;

    .line 15
    invoke-interface {v0, v4}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 16
    :cond_4
    :try_start_1
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v5, v1, :cond_c

    .line 19
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/TaskInfo;

    .line 20
    sget-object v3, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 21
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 22
    invoke-static {v3}, Lcom/apk/ry;->new(Lcom/apk/hy;)Lcom/apk/ty;

    move-result-object v3

    new-instance v6, Lcom/apk/kf$for;

    .line 23
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/TaskInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Lcom/apk/kf$for;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    goto :goto_3

    :cond_5
    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_6

    .line 24
    invoke-virtual {v3}, Lcom/apk/ty;->if()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 26
    :cond_7
    :try_start_2
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_c

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/TaskInfo;

    .line 30
    sget-object v6, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    .line 31
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/apk/xx;->case(Ljava/lang/String;)Lcom/apk/hy;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 32
    invoke-static {v6}, Lcom/apk/ry;->new(Lcom/apk/hy;)Lcom/apk/ty;

    move-result-object v7

    new-instance v8, Lcom/apk/kf$for;

    .line 33
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/TaskInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v9, v3}, Lcom/apk/kf$for;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/apk/ty;->try(Lcom/apk/sy;)Lcom/apk/ty;

    .line 34
    iget-object v3, v6, Lcom/apk/hy;->new:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 35
    new-instance v3, Ljava/io/File;

    iget-object v6, v6, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    goto :goto_5

    :cond_8
    move-object v7, v4

    :cond_9
    const/4 v3, 0x0

    :goto_5
    if-eqz v7, :cond_b

    if-eqz v3, :cond_a

    .line 36
    invoke-virtual {v7}, Lcom/apk/ty;->this()V

    goto :goto_6

    .line 37
    :cond_a
    invoke-virtual {v7}, Lcom/apk/ty;->else()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_7
    return-void
.end method
