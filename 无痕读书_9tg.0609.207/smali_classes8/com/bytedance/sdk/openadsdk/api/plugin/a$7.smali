.class public Lcom/bytedance/sdk/openadsdk/api/plugin/a$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/a;->setThemeStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/api/plugin/a$a<",
        "Lcom/bytedance/sdk/openadsdk/TTAdManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/bytedance/sdk/openadsdk/api/plugin/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$7;->b:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$7;->b:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->a(Lcom/bytedance/sdk/openadsdk/api/plugin/a;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$7;->a:I

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setThemeStatus(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$7;->a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V

    return-void
.end method
