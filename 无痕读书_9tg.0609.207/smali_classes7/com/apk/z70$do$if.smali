.class public Lcom/apk/z70$do$if;
.super Ljava/lang/Object;
.source "CsjProviderBangDan.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/z70$do;->onNativeExpressAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/z70$do;


# direct methods
.method public constructor <init>(Lcom/apk/z70$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/z70$do$if;->do:Lcom/apk/z70$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenAdClose()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/z70$do$if;->do:Lcom/apk/z70$do;

    iget-object p1, p1, Lcom/apk/z70$do;->new:Lcom/apk/z70;

    invoke-virtual {p1}, Lcom/apk/z70;->k()V

    .line 3
    iget-object p1, p0, Lcom/apk/z70$do$if;->do:Lcom/apk/z70$do;

    iget-object p2, p1, Lcom/apk/z70$do;->new:Lcom/apk/z70;

    iget-object p3, p1, Lcom/apk/z70$do;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/z70$do;->if:Lcom/apk/x60;

    .line 4
    invoke-virtual {p2, p3, p1}, Lcom/apk/e70;->implements(Ljava/lang/String;Lcom/apk/x60;)V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
