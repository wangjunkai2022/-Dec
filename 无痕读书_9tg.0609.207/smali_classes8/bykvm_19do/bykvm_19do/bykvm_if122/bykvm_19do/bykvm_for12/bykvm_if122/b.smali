.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;
.source "PreLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$d;
    }
.end annotation


# static fields
.field public static volatile o:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;


# instance fields
.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/AdError;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->i:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->j:Z

    const/16 v0, 0x14

    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->k:I

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;I)I
    .locals 0

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->m:I

    return p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    const-string v0, "TTMediationSDK"

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v3

    const-string v4, "\u805a\u5408\u9884\u8bf7\u6c42"

    invoke-virtual {p0, v2, v3, p3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "--==-- \u547d\u4e2d\u6700\u4f18\u5e7f\u544a\uff1a "

    invoke-static {p2, p1, p3}, Lcom/apk/goto;->finally(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetWorkName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", loadSort: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getLoadSort()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", showSort: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {p2}, Lcom/bytedance/msdk/base/TTBaseAd;->getShowSort()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "["

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge v8, p4, :cond_3

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;

    invoke-virtual {p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne v8, p4, :cond_2

    const-string p4, "]"

    goto :goto_1

    :cond_2
    const-string p4, ","

    :goto_1
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "adCannotUseInfo: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "adCannotUseInfo json err: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->l:Ljava/util/List;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->k:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;->getPrimeRitList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;->getPrimeRitList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;->getGmAdSlot()Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;-><init>(Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;",
            ">;>;",
            "Lcom/bytedance/msdk/api/AdSlot;",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;",
            ")",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    instance-of v1, p5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;

    if-eqz v1, :cond_0

    check-cast p5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;

    invoke-virtual {p5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;->d0()I

    move-result p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    if-ge v1, p5, :cond_7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;

    invoke-direct {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;-><init>()V

    invoke-virtual {v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;->b(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->y()I

    move-result v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;->e(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->p()I

    move-result v5

    invoke-virtual {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;->c(I)V

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    goto :goto_2

    :cond_1
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_3

    iget-object v7, v6, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    if-nez v7, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {v7}, Lcom/bytedance/msdk/base/TTBaseAd;->isHasShown()Z

    move-result v2

    invoke-virtual {v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;->b(I)V

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->e:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/api/AdSlot;

    const-string v5, "\u9884\u7f13\u5b58"

    invoke-virtual {p0, v6, v2, p4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    :goto_3
    invoke-virtual {v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;->d(I)V

    :goto_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_3
    :goto_5
    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->g:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_4

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/bytedance/msdk/api/AdError;

    :cond_4
    if-eqz v5, :cond_5

    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;->d(I)V

    iget v2, v5, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorCode:I

    invoke-virtual {v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;->a(I)V

    iget-object v2, v5, Lcom/bytedance/msdk/api/AdError;->thirdSdkErrorMessage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/a;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const/4 v2, 0x4

    goto :goto_3

    :cond_6
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 4

    invoke-virtual {p0, p2, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Ljava/lang/String;I)I

    move-result p4

    const-string v0, "TTMediationSDK"

    const/4 v1, 0x2

    if-eq p4, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--==-- \u914d\u7f6e\u672a\u5f00\u542f\u9884\u52a0\u8f7d\u7f13\u5b58\uff0creq_type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->h:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->h:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--==-- \u5df2\u53d1\u8d77\u8fc7\u9884\u7f13\u5b58\uff0c\u8fd8\u672a\u4f7f\u7528\u6389\uff0c\u6b64\u6b21\u4e0d\u53d1\u8d77"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->e:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->getShallowCopy(Lcom/bytedance/msdk/api/AdSlot;)Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "--==-- \u9884\u7f13\u5b58\u53d6\u6d88\uff0cadslot\u4e3anull\uff0crit\uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "--==-- \u9884\u7f13\u5b58\u5f00\u59cb\u8bf7\u6c42, req_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;

    invoke-direct {p4, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->i:Ljava/util/Map;

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->h:Ljava/util/Map;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setPrimeRitReqType(I)V

    invoke-virtual {p4, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;->a(Lcom/bytedance/msdk/api/AdSlot;)V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;)Z
    .locals 0

    iget-boolean p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->j:Z

    return p0
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->j:Z

    return p1
.end method

.method public static synthetic b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;I)I
    .locals 0

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->n:I

    return p1
.end method

.method public static synthetic b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->l:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;)V
    .locals 5

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a()Lcom/bytedance/msdk/api/AdSlot;

    move-result-object v3

    const-string v4, "\u805a\u5408\u9884\u7f13\u5b58"

    invoke-virtual {p0, v2, v3, p2, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;
    .locals 2

    const-class v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->o:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->o:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    if-nez v1, :cond_0

    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    invoke-direct {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;-><init>()V

    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->o:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->o:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->m:I

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdSlot;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/api/AdSlot;

    return-object p1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->k:I

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/v2/GMPreloadRequestInfo;",
            ">;II)V"
        }
    .end annotation

    new-instance v6, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$c;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;Landroid/app/Activity;Ljava/util/List;II)V

    invoke-static {v6}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;)V
    .locals 5

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;->a:Lcom/bytedance/msdk/base/TTBaseAd;

    invoke-virtual {v1}, Lcom/bytedance/msdk/base/TTBaseAd;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JLcom/bytedance/msdk/api/AdError;)V
    .locals 3

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->g:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-nez p3, :cond_1

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget-object p4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->g:Ljava/util/Map;

    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p3, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->h:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->K()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/msdk/adapter/util/Logger;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/util/TTLogUtil;->getTagSecondLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "waterfall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", loadSort: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->p()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", showSort: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->y()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", eCpm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->i()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TTMediationSDK"

    invoke-static {v5, v4}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, p1, p2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->b(Ljava/lang/String;Lcom/bytedance/msdk/api/AdSlot;)V

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->f:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    invoke-virtual {v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {p1, v3, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x4f

    goto :goto_5

    :cond_3
    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/b;->setPrimeRitReqType(I)V

    invoke-static {p2, v3, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Lcom/bytedance/msdk/api/AdSlot;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_4
    :goto_3
    const/16 p1, 0x56

    :goto_4
    :pswitch_0
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :goto_5
    :pswitch_1
    const/16 p2, 0x46

    :goto_6
    packed-switch p2, :pswitch_data_1

    goto :goto_5

    :pswitch_2
    packed-switch p1, :pswitch_data_2

    goto :goto_4

    :pswitch_3
    const/16 p2, 0x48

    const/16 p1, 0x55

    goto :goto_6

    :cond_5
    :goto_7
    :pswitch_4
    return v1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->l:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->n:I

    return v0
.end method

.method public c(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/c;

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_3
    return-object v0
.end method
