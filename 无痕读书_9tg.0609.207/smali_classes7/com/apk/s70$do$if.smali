.class public Lcom/apk/s70$do$if;
.super Ljava/lang/Object;
.source "GmProviderBangDan.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMDislikeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/s70$do;->onAdLoaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/s70$do;


# direct methods
.method public constructor <init>(Lcom/apk/s70$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/s70$do$if;->do:Lcom/apk/s70$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onRefuse()V
    .locals 0

    return-void
.end method

.method public onSelected(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenAdClose()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/s70$do$if;->do:Lcom/apk/s70$do;

    iget-object p1, p1, Lcom/apk/s70$do;->do:Lcom/apk/s70;

    .line 3
    iget-object p2, p1, Lcom/apk/s70;->goto:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/apk/s70;->break:Lcom/apk/x60;

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/apk/e70;->implements(Ljava/lang/String;Lcom/apk/x60;)V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
