.class public final Lcom/tencent/bugly/proguard/t$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/t;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/util/List;

.field public synthetic b:Lcom/tencent/bugly/proguard/t;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/t;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/bugly/proguard/t$1;->b:Lcom/tencent/bugly/proguard/t;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/t$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t$1;->b:Lcom/tencent/bugly/proguard/t;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/t$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/t;->a(Lcom/tencent/bugly/proguard/t;Ljava/util/List;)V

    return-void
.end method
