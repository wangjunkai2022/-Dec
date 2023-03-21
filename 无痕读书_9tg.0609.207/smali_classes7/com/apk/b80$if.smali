.class public Lcom/apk/b80$if;
.super Ljava/lang/Object;
.source "CsjProviderBanner.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/b80;->onNativeExpressAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/b80;


# direct methods
.method public constructor <init>(Lcom/apk/b80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/b80$if;->do:Lcom/apk/b80;

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
    iget-object p1, p0, Lcom/apk/b80$if;->do:Lcom/apk/b80;

    iget-object p1, p1, Lcom/apk/b80;->new:Lcom/apk/d80;

    invoke-virtual {p1}, Lcom/apk/d80;->j()V

    .line 3
    iget-object p1, p0, Lcom/apk/b80$if;->do:Lcom/apk/b80;

    iget-object p2, p1, Lcom/apk/b80;->new:Lcom/apk/d80;

    iget-object p3, p1, Lcom/apk/b80;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/b80;->if:Lcom/apk/x60;

    .line 4
    invoke-virtual {p2, p3, p1}, Lcom/apk/e70;->while(Ljava/lang/String;Lcom/apk/x60;)V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
