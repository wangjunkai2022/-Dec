.class public Lorg/litepal/Operator$6$1;
.super Ljava/lang/Object;
.source "Operator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/Operator$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/litepal/Operator$6;

.field public final synthetic val$t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/litepal/Operator$6;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/Operator$6$1;->this$0:Lorg/litepal/Operator$6;

    iput-object p2, p0, Lorg/litepal/Operator$6$1;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/litepal/Operator$6$1;->this$0:Lorg/litepal/Operator$6;

    iget-object v0, v0, Lorg/litepal/Operator$6;->val$executor:Lorg/litepal/crud/async/FindExecutor;

    invoke-virtual {v0}, Lorg/litepal/crud/async/FindExecutor;->getListener()Lorg/litepal/crud/callback/FindCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/litepal/Operator$6$1;->val$t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/litepal/crud/callback/FindCallback;->onFinish(Ljava/lang/Object;)V

    return-void
.end method
