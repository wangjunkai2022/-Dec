.class public Lcom/apk/w90;
.super Lcom/apk/ab0;
.source "TrAdViewBangDan.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/ab0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lorg/json/JSONObject;

.field public final synthetic if:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/w90;->if:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    iput-object p2, p0, Lcom/apk/w90;->do:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/apk/ab0;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/w90;->if:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    iget-object v1, p0, Lcom/apk/w90;->do:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/apk/cb0;->case(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->else:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/apk/w90;->if:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    .line 4
    iget-object v0, v0, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->else:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/w90;->if:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    iget-object v1, p0, Lcom/apk/w90;->do:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/apk/cb0;->do(Lorg/json/JSONObject;)J

    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->goto:J

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public if(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/w90;->if:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    .line 2
    iget-object p1, p1, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->else:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/w90;->if:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    invoke-virtual {p1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->do()V

    :cond_0
    return-void
.end method
