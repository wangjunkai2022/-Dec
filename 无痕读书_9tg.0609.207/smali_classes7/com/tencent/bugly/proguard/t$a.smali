.class public final Lcom/tencent/bugly/proguard/t$a;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/tencent/bugly/proguard/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/bugly/proguard/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/t;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/t$a;->a:Lcom/tencent/bugly/proguard/t;

    return-void
.end method

.method public static synthetic a()Lcom/tencent/bugly/proguard/t;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/bugly/proguard/t$a;->a:Lcom/tencent/bugly/proguard/t;

    return-object v0
.end method
