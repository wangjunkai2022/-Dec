.class public final Lcom/bytedance/pangle/download/b$1;
.super Lcom/bytedance/pangle/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/pangle/download/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/pangle/download/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/pangle/download/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/pangle/download/b$1;->a:Lcom/bytedance/pangle/download/b;

    invoke-direct {p0}, Lcom/bytedance/pangle/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/pangle/download/b$1;->a:Lcom/bytedance/pangle/download/b;

    invoke-static {p1}, Lcom/bytedance/pangle/download/b;->a(Lcom/bytedance/pangle/download/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/bytedance/pangle/download/c;->a()Lcom/bytedance/pangle/download/c;

    goto :goto_0

    :cond_0
    return-void
.end method
