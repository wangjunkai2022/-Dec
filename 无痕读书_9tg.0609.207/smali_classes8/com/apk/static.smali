.class public Lcom/apk/static;
.super Ljava/lang/Object;
.source "AdFrontBackUtils.java"


# instance fields
.field public case:Lcom/apk/e60;

.field public do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation
.end field

.field public else:Lcom/apk/y60;

.field public for:Lcom/apk/g;

.field public if:I

.field public new:J

.field public try:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/apk/static;->do:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/finally;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lcom/apk/finally;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/static;->do:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-wide/16 v1, 0x0

    const-string v3, "fshowtimer"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 8
    iput-wide v0, p0, Lcom/apk/static;->new:J

    :cond_0
    return-void
.end method


# virtual methods
.method public do(Landroid/app/Activity;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/static;->for:Lcom/apk/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/apk/static;->for:Lcom/apk/g;

    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v4}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v2

    iget-object p1, p0, Lcom/apk/static;->for:Lcom/apk/g;

    invoke-virtual {p1}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "b_f"

    const/4 v3, 0x0

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/apk/c;->import(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/v60;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v4}, Lcom/swl/gg/sdk/TrAdSdk;->isRewardAdType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/static;->for:Lcom/apk/g;

    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v0

    const-string v2, "b_f"

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/apk/e;->import(Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "TOFORE_SPLASH_AD_SHOW_MAX_KEY"

    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v2}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    const-string v2, "SP_SAVE_TOFORE_SPLASH_AD_SHOW_MAX_KEY"

    .line 9
    invoke-static {v2}, Lcom/apk/w0;->final(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v0, :cond_2

    .line 10
    iput-object v1, p0, Lcom/apk/static;->for:Lcom/apk/g;

    return-void

    .line 11
    :cond_2
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/apk/static;->for:Lcom/apk/g;

    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/biquge/ebook/app/ui/activity/ToforegroundActivity;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/apk/static;->for:Lcom/apk/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
