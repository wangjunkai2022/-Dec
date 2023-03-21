.class public Lcom/apk/cb0;
.super Ljava/lang/Object;
.source "TrCommentGG.java"


# static fields
.field public static final:Lcom/apk/cb0;


# instance fields
.field public break:I

.field public case:I

.field public catch:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

.field public class:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public const:Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

.field public do:Z

.field public else:I

.field public for:Lorg/json/JSONObject;

.field public goto:I

.field public if:Lorg/json/JSONObject;

.field public new:Lorg/json/JSONObject;

.field public this:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public try:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/tr/comment/sdk/bean/TrGgBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "list"

    .line 1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "adpt"

    .line 5
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "adid"

    .line 6
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v5, Lcom/tr/comment/sdk/bean/TrGgBean;

    invoke-direct {v5, v4, v3}, Lcom/tr/comment/sdk/bean/TrGgBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static do(Lorg/json/JSONObject;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "Interval"

    .line 1
    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :cond_0
    return-wide v0
.end method

.method public static else()Lcom/apk/cb0;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/cb0;->final:Lcom/apk/cb0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/cb0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/cb0;->final:Lcom/apk/cb0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/cb0;

    invoke-direct {v1}, Lcom/apk/cb0;-><init>()V

    sput-object v1, Lcom/apk/cb0;->final:Lcom/apk/cb0;

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
    sget-object v0, Lcom/apk/cb0;->final:Lcom/apk/cb0;

    return-object v0
.end method

.method public static try(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "close"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final for(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public if(Landroid/app/Activity;I)Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;
    .locals 2

    const-string v0, "bangdan_"

    .line 1
    invoke-static {v0, p2}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/apk/cb0;->class:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/cb0;->class:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/cb0;->class:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/apk/cb0;->catch:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    return-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/cb0;->class:Ljava/util/Map;

    invoke-interface {v0, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/apk/cb0;->catch:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    if-nez p2, :cond_4

    .line 8
    new-instance p2, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    const/4 v0, 0x0

    .line 9
    invoke-direct {p2, p1, v0}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    iput-object p2, p0, Lcom/apk/cb0;->catch:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p2, v1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->setLoadSuccessVisible(Z)V

    .line 12
    iget-object p2, p0, Lcom/apk/cb0;->catch:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->setAutoRefresh(Z)V

    .line 13
    iget-object p2, p0, Lcom/apk/cb0;->catch:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    .line 14
    iget-object v1, p0, Lcom/apk/cb0;->new:Lorg/json/JSONObject;

    if-eqz p2, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    iput-object p1, p2, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->if:Landroid/app/Activity;

    const-string p1, "pl_bangdan_ad"

    .line 16
    iput-object p1, p2, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->for:Ljava/lang/String;

    .line 17
    new-instance p1, Lcom/apk/bb0;

    invoke-direct {p1}, Lcom/apk/bb0;-><init>()V

    new-instance v0, Lcom/apk/w90;

    invoke-direct {v0, p2, v1}, Lcom/apk/w90;-><init>(Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/apk/bb0;->do(Lcom/apk/ab0;)Lcom/apk/bb0;

    goto :goto_0

    .line 18
    :cond_3
    throw v0

    .line 19
    :cond_4
    invoke-virtual {p2}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->do()V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/apk/cb0;->catch:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    return-object p1
.end method

.method public new(Landroid/app/Activity;I)Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;
    .locals 2

    const-string v0, "rect_"

    .line 1
    invoke-static {v0, p2}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/apk/cb0;->class:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/cb0;->class:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/cb0;->class:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/apk/cb0;->const:Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

    return-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/cb0;->class:Ljava/util/Map;

    invoke-interface {v0, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/apk/cb0;->const:Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

    if-nez p2, :cond_5

    .line 8
    new-instance p2, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

    const/4 v0, 0x0

    .line 9
    invoke-direct {p2, p1, v0}, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    iput-object p2, p0, Lcom/apk/cb0;->const:Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p2, v1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->setLoadSuccessVisible(Z)V

    .line 12
    iget-object p2, p0, Lcom/apk/cb0;->const:Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->setAutoRefresh(Z)V

    .line 13
    iget-object p2, p0, Lcom/apk/cb0;->const:Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

    .line 14
    iget-object v1, p0, Lcom/apk/cb0;->try:Lorg/json/JSONObject;

    if-eqz p2, :cond_4

    if-nez v1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    iget-boolean v0, p2, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->case:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17
    :cond_3
    iput-object p1, p2, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->if:Landroid/app/Activity;

    const-string p1, "pl_rect_ad"

    .line 18
    iput-object p1, p2, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->for:Ljava/lang/String;

    .line 19
    new-instance p1, Lcom/apk/bb0;

    invoke-direct {p1}, Lcom/apk/bb0;-><init>()V

    new-instance v0, Lcom/apk/aa0;

    invoke-direct {v0, p2, v1}, Lcom/apk/aa0;-><init>(Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/apk/bb0;->do(Lcom/apk/ab0;)Lcom/apk/bb0;

    goto :goto_0

    .line 20
    :cond_4
    throw v0

    .line 21
    :cond_5
    invoke-virtual {p2}, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->do()V

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/apk/cb0;->const:Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

    return-object p1
.end method
