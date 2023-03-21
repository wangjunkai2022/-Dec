.class public Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;
.super Ljava/lang/Object;
.source "GMConfigUserInfoForSegment.java"


# static fields
.field public static final GENDER_FEMALE:Ljava/lang/String; = "female"

.field public static final GENDER_MALE:Ljava/lang/String; = "male"

.field public static final GENDER_UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public case:Ljava/lang/String;

.field public do:Ljava/lang/String;

.field public else:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public for:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public new:I

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TTMediationSDK"

    .line 2
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->do:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->if:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->for:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->new:I

    .line 7
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->try:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->case:Ljava/lang/String;

    return-void
.end method

.method public static checkValid(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "[A-Za-z0-9-_]{1,100}"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;

    if-eq v3, v2, :cond_1

    goto/16 :goto_5

    .line 2
    :cond_1
    check-cast p1, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getAge()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getAge()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getUserValueGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getUserValueGroup()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getSubChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getSubChannel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getGender()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->getCustomInfos()Ljava/util/Map;

    move-result-object p1

    .line 10
    iget-object v3, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->else:Ljava/util/Map;

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    .line 11
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    iget-object v3, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->else:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 13
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 14
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    iget-object v5, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->else:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 16
    :cond_6
    iget-object v3, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->else:Ljava/util/Map;

    if-nez v3, :cond_8

    if-nez p1, :cond_8

    :cond_7
    const/4 p1, 0x1

    goto :goto_3

    :cond_8
    :goto_2
    const/4 p1, 0x0

    :goto_3
    if-eqz v2, :cond_9

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_a
    :goto_5
    return v1
.end method

.method public getAge()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->new:I

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->if:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->else:Ljava/util/Map;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->try:Ljava/lang/String;

    return-object v0
.end method

.method public getSubChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->for:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getUserValueGroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->case:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->new:I

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->checkValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->if:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCustomInfos(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->else:Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->checkValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->checkValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->else:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->checkValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->try:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSubChannel(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->checkValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->for:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->checkValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->do:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setUserValueGroup(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->checkValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/bytedance/msdk/api/v2/GMConfigUserInfoForSegment;->case:Ljava/lang/String;

    :cond_0
    return-void
.end method
