.class public final Lcom/bytedance/pangle/service/a/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/pangle/service/a/a;->a(Lcom/bytedance/pangle/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/pangle/f;

.field public final synthetic b:Lcom/bytedance/pangle/service/a/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/pangle/service/a/a;Lcom/bytedance/pangle/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/pangle/service/a/a$4;->b:Lcom/bytedance/pangle/service/a/a;

    iput-object p2, p0, Lcom/bytedance/pangle/service/a/a$4;->a:Lcom/bytedance/pangle/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/service/a/a$4;->b:Lcom/bytedance/pangle/service/a/a;

    iget-object v1, p0, Lcom/bytedance/pangle/service/a/a$4;->a:Lcom/bytedance/pangle/f;

    invoke-static {v0, v1}, Lcom/bytedance/pangle/service/a/a;->a(Lcom/bytedance/pangle/service/a/a;Lcom/bytedance/pangle/f;)V

    return-void
.end method
