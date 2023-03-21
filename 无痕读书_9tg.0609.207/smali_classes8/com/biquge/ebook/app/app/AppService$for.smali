.class public Lcom/biquge/ebook/app/app/AppService$for;
.super Landroid/os/AsyncTask;
.source "AppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/app/AppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public case:Z

.field public do:Lcom/manhua/data/bean/ComicCollectBean;

.field public final for:Ljava/lang/String;

.field public final if:Ljava/lang/String;

.field public new:Ljava/lang/String;

.field public try:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biquge/ebook/app/app/AppService$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/app/AppService$for;->for:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/biquge/ebook/app/app/AppService$for;->new:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Void;

    const-string v2, "DB_VIDEO_CHAPTER_REWARD_XZ_COMIC_KEY"

    .line 2
    const-class v3, Lcom/manhua/data/bean/ComicCacheFailedBean;

    :try_start_0
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/mu;->static(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    const-string v4, "collectId = ?"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/apk/z2;->super(Ljava/lang/String;Z)Lcom/manhua/data/bean/ComicBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v8, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "firstChapterId"

    .line 7
    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-class v0, Lcom/manhua/data/bean/ComicCollectBean;

    new-array v10, v5, [Ljava/lang/String;

    aput-object v4, v10, v6

    aput-object v8, v10, v7

    invoke-static {v0, v9, v10}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 9
    :cond_0
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v6}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 10
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v8, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v8}, Lcom/apk/o0;->const(Lcom/manhua/data/bean/ComicCollectBean;)V

    .line 11
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    .line 12
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-static {v0}, Lcom/apk/w;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v11, Lcom/apk/b3;

    const-string v12, "SP_HOST_INFO_DEX_MH_KEY"

    invoke-direct {v11, v12, v8, v0}, Lcom/apk/b3;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const-wide/32 v12, 0x2bf20

    invoke-static {v9, v12, v13, v10, v11}, Lcom/apk/x4;->native(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    .line 14
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 15
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/manhua/data/bean/ComicCollectBean;->setMax(I)V

    .line 16
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v9, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v9}, Lcom/apk/o0;->const(Lcom/manhua/data/bean/ComicCollectBean;)V

    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    const-string v9, "novelId = ?"

    aput-object v9, v0, v6

    .line 17
    iget-object v9, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    aput-object v9, v0, v7

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 18
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_3

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicCacheFailedBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 21
    :try_start_2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCacheFailedBean;->getChapterId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCacheFailedBean;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/biquge/ebook/app/app/AppService;->for(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    iget-object v12, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCacheFailedBean;->getChapterId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v11, v6}, Lcom/apk/mu;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string v12, "novelId = ? and chapterId = ?"

    aput-object v12, v11, v6

    .line 24
    iget-object v12, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    aput-object v12, v11, v7

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCacheFailedBean;->getChapterId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v3, v11}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 25
    iget-object v11, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v11, v6}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 26
    iget-object v11, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCacheFailedBean;->getPosition()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setProgress(I)V

    .line 27
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v11, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v11}, Lcom/apk/o0;->const(Lcom/manhua/data/bean/ComicCollectBean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 28
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 30
    :try_start_4
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->new:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    .line 31
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/manhua/data/bean/ComicChapterBean;

    .line 32
    iget-object v11, v1, Lcom/biquge/ebook/app/app/AppService$for;->new:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 33
    iput v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->try:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 34
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :cond_5
    :goto_2
    iget v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->try:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    move v10, v0

    :goto_3
    if-ge v10, v3, :cond_17

    .line 36
    :try_start_6
    sget-object v0, Lcom/biquge/ebook/app/app/AppService;->for:Lcom/apk/gg;

    if-eqz v0, :cond_7

    .line 37
    sget-object v0, Lcom/biquge/ebook/app/app/AppService;->for:Lcom/apk/gg;

    .line 38
    iget-object v11, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    sget-object v0, Lcom/biquge/ebook/app/app/AppService;->for:Lcom/apk/gg;

    .line 40
    iget-object v11, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->new:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/biquge/ebook/app/app/AppService;->for:Lcom/apk/gg;

    .line 42
    iget-object v11, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->new:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v3, :cond_7

    .line 44
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicChapterBean;

    .line 45
    iget-object v12, v1, Lcom/biquge/ebook/app/app/AppService$for;->new:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v0, :cond_6

    .line 46
    :try_start_7
    iput v11, v1, Lcom/biquge/ebook/app/app/AppService$for;->try:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move v10, v11

    goto :goto_6

    :catch_2
    move-exception v0

    move v10, v11

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catch_3
    move-exception v0

    .line 47
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :cond_7
    :goto_6
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/manhua/data/bean/ComicChapterBean;

    .line 49
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    const/4 v12, -0x1

    if-eqz v0, :cond_15

    .line 50
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v13

    iget-object v14, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/apk/o0;->this(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_10

    .line 51
    :cond_8
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/biquge/ebook/app/app/AppService;->goto(Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 52
    invoke-virtual {v13}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 53
    invoke-virtual {v13}, Lcom/manhua/data/bean/ComicChapterBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 54
    invoke-virtual {v13}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    if-eqz v0, :cond_9

    goto :goto_7

    .line 55
    :cond_9
    :try_start_9
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v13}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    if-ltz v0, :cond_a

    .line 57
    :try_start_a
    invoke-virtual {v13}, Lcom/manhua/data/bean/ComicChapterBean;->isHasContent()Z

    move-result v0

    xor-int/2addr v0, v7

    goto :goto_8

    :catch_4
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_b

    .line 59
    invoke-virtual {v11}, Lcom/manhua/data/bean/ComicChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v13, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v0, v6}, Lcom/apk/mu;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 61
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/biquge/ebook/app/app/AppService;->goto(Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v13
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :cond_b
    if-eqz v13, :cond_13

    .line 62
    :try_start_b
    invoke-virtual {v13}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 64
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v0, :cond_f

    .line 66
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 67
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v15

    iget-object v5, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/apk/o0;->this(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_a

    .line 68
    :cond_c
    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-static {v5}, Lcom/apk/u;->goto(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x2

    goto :goto_9

    :cond_d
    :goto_a
    if-nez v14, :cond_e

    .line 70
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v12}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    goto :goto_b

    .line 71
    :cond_e
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v7}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 72
    :goto_b
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v5, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v5}, Lcom/apk/o0;->const(Lcom/manhua/data/bean/ComicCollectBean;)V

    .line 73
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_12

    :catch_5
    move-exception v0

    .line 74
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    add-int/lit8 v0, v10, 0x1

    .line 75
    iget-object v5, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v5, v6}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 76
    iget-object v5, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v5, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setProgress(I)V

    .line 77
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v5

    iget-object v11, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v5, v11}, Lcom/apk/o0;->const(Lcom/manhua/data/bean/ComicCollectBean;)V

    .line 78
    iget-object v5, v1, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 79
    :try_start_d
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/apk/o0;->this(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v12, 0x2

    goto :goto_d

    .line 80
    :cond_10
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "progress"

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-class v0, Lcom/manhua/data/bean/ComicCollectBean;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    const/4 v12, 0x2

    :try_start_e
    new-array v13, v12, [Ljava/lang/String;

    aput-object v4, v13, v6

    aput-object v5, v13, v7

    invoke-static {v0, v11, v13}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v0

    const/4 v12, 0x2

    .line 83
    :goto_c
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :goto_d
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    .line 85
    iget v0, v0, Lcom/apk/s0;->public:I

    if-lez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_14

    .line 86
    invoke-static {v2, v6}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_12

    add-int/lit8 v0, v0, -0x1

    .line 87
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v5, v2, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_12
    if-nez v0, :cond_14

    .line 88
    iput-boolean v7, v1, Lcom/biquge/ebook/app/app/AppService$for;->case:Z

    .line 89
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_12

    :cond_13
    const/4 v12, 0x2

    .line 90
    :try_start_10
    invoke-virtual {v11}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 91
    new-instance v0, Lcom/manhua/data/bean/ComicCacheFailedBean;

    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v11}, Lcom/manhua/data/bean/ComicChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/manhua/data/bean/ComicChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v5, v13, v14, v11}, Lcom/manhua/data/bean/ComicCacheFailedBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    .line 93
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_f
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x2

    goto/16 :goto_3

    :cond_15
    :goto_10
    if-nez v0, :cond_16

    .line 94
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v12}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    goto :goto_11

    .line 95
    :cond_16
    iget-object v0, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v7}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 96
    :goto_11
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v2, v1, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0, v2}, Lcom/apk/o0;->const(Lcom/manhua/data/bean/ComicCollectBean;)V

    .line 97
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_12

    .line 98
    :cond_17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_12
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getMax()I

    move-result p1

    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getProgress()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 5
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object p1

    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {p1, v1}, Lcom/apk/o0;->const(Lcom/manhua/data/bean/ComicCollectBean;)V

    const p1, 0x7f100131

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    iget-object v3, p0, Lcom/biquge/ebook/app/app/AppService$for;->for:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 8
    :try_start_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "state"

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "progress"

    .line 10
    iget-object v3, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    const-class v2, Lcom/manhua/data/bean/ComicCollectBean;

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "collectId = ?"

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, p1, v0}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/biquge/ebook/app/app/AppService$for;->case:Z

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 16
    :goto_0
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {p1, v0}, Lcom/apk/o0;->const(Lcom/manhua/data/bean/ComicCollectBean;)V

    .line 17
    :goto_1
    sget-object p1, Lcom/biquge/ebook/app/app/AppService;->if:Lcom/apk/gg;

    if-eqz p1, :cond_2

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    iget-boolean p1, p0, Lcom/biquge/ebook/app/app/AppService$for;->case:Z

    if-eqz p1, :cond_5

    .line 20
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 21
    :try_start_1
    iget-object v1, p1, Lcom/apk/o0;->new:Lcom/apk/gg;

    if-eqz v1, :cond_5

    .line 22
    iget-object v1, p1, Lcom/apk/o0;->new:Lcom/apk/gg;

    invoke-virtual {v1}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    check-cast v1, Ljava/util/HashSet;

    :try_start_2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 25
    invoke-virtual {p1, v2}, Lcom/apk/o0;->catch(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 27
    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v1

    iget-object v1, v1, Lcom/apk/o0;->new:Lcom/apk/gg;

    iget-object v2, p0, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v1, :cond_0

    .line 3
    iput-object v1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "collectId = ?"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v1

    const-class v2, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v1, v2}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicCollectBean;

    iput-object v1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-direct {v1}, Lcom/manhua/data/bean/ComicCollectBean;-><init>()V

    iput-object v1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    .line 8
    iget-object v2, p0, Lcom/biquge/ebook/app/app/AppService$for;->if:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicCollectBean;->setCollectId(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    iget-object v2, p0, Lcom/biquge/ebook/app/app/AppService$for;->for:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicCollectBean;->setName(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setMax(I)V

    .line 11
    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setProgress(I)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 13
    iget-object v1, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getProgress()I

    move-result v1

    iput v1, p0, Lcom/biquge/ebook/app/app/AppService$for;->try:I

    .line 14
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/app/AppService$for;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v1, v2}, Lcom/apk/o0;->const(Lcom/manhua/data/bean/ComicCollectBean;)V

    .line 15
    iput-boolean v0, p0, Lcom/biquge/ebook/app/app/AppService$for;->case:Z

    return-void
.end method
