.class public Lcom/manhua/ui/widget/barrage/BarrageDataUtils;
.super Ljava/lang/Object;
.source "BarrageDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;
    }
.end annotation


# static fields
.field public static final BARRAGE_OPTION_KEY_COMIC:Ljava/lang/String; = "Cartoon"

.field public static final BARRAGE_OPTION_KEY_NOVEL:Ljava/lang/String; = "Novel"

.field public static final BARRAGE_STATUS_TYPE_CLEAR:I = 0x2

.field public static final BARRAGE_STATUS_TYPE_PAUSE:I = 0x4

.field public static final BARRAGE_STATUS_TYPE_RELOAD:I = 0x3

.field public static final BARRAGE_STATUS_TYPE_RESUME:I = 0x5

.field public static final BARRAGE_STATUS_TYPE_SHOW:I = 0x1

.field public static mInstance:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;


# instance fields
.field public adBarrageBeanLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/ui/widget/barrage/BarrageBean;",
            ">;"
        }
    .end annotation
.end field

.field public adBarrageIndex:I

.field public adBarrageInterval:I

.field public final barrageExecutor:Ljava/util/concurrent/ExecutorService;

.field public isScrollIdle:Z

.field public mBarrageDataMaps:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/manhua/ui/widget/barrage/BarrageBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public mLoadRecordMaps:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOnBarrageListener:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->barrageExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->isScrollIdle:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->chapterBarrage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->checkChapterIdIsOk(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/apk/gg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mBarrageDataMaps:Lcom/apk/gg;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mOnBarrageListener:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    return-object p0
.end method

.method private chapterBarrage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mLoadRecordMaps:Lcom/apk/gg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/apk/gg;->do()V

    .line 3
    iget-object v0, v0, Lcom/apk/gg;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mLoadRecordMaps:Lcom/apk/gg;

    const-string v1, ""

    invoke-virtual {v0, p3, v1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->loadChapterBarrage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static checkChapterIdIsOk(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-1"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static clickAdDanMu(Landroid/content/Context;Lcom/manhua/ui/widget/barrage/BarrageBean;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getClickto()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getC_extra()Ljava/lang/String;

    move-result-object p1

    const-string v1, "apk"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0, p1}, Lcom/apk/ze;->g0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Lcom/apk/kf;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "sys_web"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "inner_web"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 10
    invoke-static {p0, p1, v0}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;
    .locals 2

    .line 1
    sget-object v0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mInstance:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mInstance:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-direct {v1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;-><init>()V

    sput-object v1, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mInstance:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

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
    sget-object v0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mInstance:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    return-object v0
.end method

.method private loadChapterBarrage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/tr/danmu/sdk/TrDanMuSdk;->getRequestBarragesSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "Data"

    .line 2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/apk/sf;

    invoke-direct {p2}, Lcom/apk/sf;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mBarrageDataMaps:Lcom/apk/gg;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 9
    iget-object p2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mBarrageDataMaps:Lcom/apk/gg;

    invoke-virtual {p2, p3, p1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public addBarrageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p5, "#FFFFFF"

    :cond_0
    move-object v4, p5

    .line 2
    new-instance v6, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;

    invoke-direct {v6, p0, p3, p4, v4}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;-><init>(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/tr/danmu/sdk/TrDanMuSdk;->submitComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V

    return-void
.end method

.method public clearChapterIdeaCount()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tr/comment/sdk/TrCommentSdk;->clearIdeaCountDatas()V

    return-void
.end method

.method public getBarrageCount(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mBarrageDataMaps:Lcom/apk/gg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/gg;->do()V

    .line 3
    iget-object v0, v0, Lcom/apk/gg;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mBarrageDataMaps:Lcom/apk/gg;

    invoke-virtual {v0, p1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBarrageDataItem(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/manhua/ui/widget/barrage/BarrageBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mBarrageDataMaps:Lcom/apk/gg;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/apk/gg;->do()V

    .line 3
    iget-object v0, v0, Lcom/apk/gg;->if:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mBarrageDataMaps:Lcom/apk/gg;

    invoke-virtual {v0, p1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mBarrageDataMaps:Lcom/apk/gg;

    invoke-virtual {v2, p1, v1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :goto_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChapterIdeaCount(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/tr/comment/sdk/TrCommentSdk;->getIdeaCountParagraph(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getTempBarrageDatas()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/manhua/ui/widget/barrage/BarrageBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 2
    new-instance v2, Lcom/manhua/ui/widget/barrage/BarrageBean;

    const-string v3, "\u75af\u72c2\u52a8\u7269\u57ce"

    invoke-static {v3, v1}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/manhua/ui/widget/barrage/BarrageBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getUseAdBarrages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/manhua/ui/widget/barrage/BarrageBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageBeanLists:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/apk/continue;->goto:Lcom/biquge/ebook/app/bean/BarrageConfigBean;

    if-eqz v1, :cond_6

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->getPer_page()I

    move-result v2

    .line 6
    iget v3, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageInterval:I

    rem-int/2addr v3, v2

    if-nez v3, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->getGet_type()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->getGet_count()I

    move-result v1

    const-string v3, "order"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageBeanLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageBeanLists:Ljava/util/List;

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 12
    iget v4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageIndex:I

    iget-object v5, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageBeanLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 13
    iput v3, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageIndex:I

    .line 14
    :cond_1
    iget-object v4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageBeanLists:Ljava/util/List;

    iget v5, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 15
    iget v4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageBeanLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_3

    .line 17
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageBeanLists:Ljava/util/List;

    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageBeanLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/apk/ze;->final(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 18
    sget-object v4, Lcom/apk/dg;->do:Ljava/util/Random;

    .line 19
    iget-object v5, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageBeanLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    iput v4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageIndex:I

    .line 20
    iget-object v5, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageBeanLists:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 21
    iget v4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22
    :cond_4
    :goto_2
    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageInterval:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_3
    return-object v0
.end method

.method public isScrollIdle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->isScrollIdle:Z

    return v0
.end method

.method public loadBarrageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mOnBarrageListener:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;->onResultBarrage()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mLoadRecordMaps:Lcom/apk/gg;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mLoadRecordMaps:Lcom/apk/gg;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mBarrageDataMaps:Lcom/apk/gg;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mBarrageDataMaps:Lcom/apk/gg;

    .line 7
    :cond_2
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;-><init>(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->barrageExecutor:Ljava/util/concurrent/ExecutorService;

    .line 8
    iput-object v1, v0, Lcom/apk/b1;->do:Lcom/apk/c1;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public loadChapterIdea(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0}, Lcom/tr/comment/sdk/TrCommentSdk;->loadIdeaCount(Ljava/lang/String;Ljava/lang/String;Lcom/apk/n80;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mLoadRecordMaps:Lcom/apk/gg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/gg;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mBarrageDataMaps:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/apk/gg;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageIndex:I

    .line 6
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageInterval:I

    .line 7
    invoke-virtual {p0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->clearChapterIdeaCount()V

    .line 8
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/apk/continue;->goto:Lcom/biquge/ebook/app/bean/BarrageConfigBean;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mInstance:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    :cond_2
    return-void
.end method

.method public setAdBarrageBeanLists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/ui/widget/barrage/BarrageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->adBarrageBeanLists:Ljava/util/List;

    return-void
.end method

.method public setOnBarrageListener(Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->mOnBarrageListener:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    return-void
.end method

.method public setScrollState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->isScrollIdle:Z

    return-void
.end method
