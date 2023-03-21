.class public Lcom/umeng/analytics/pro/o$b;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/umeng/analytics/pro/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/o;-><init>(Lcom/umeng/analytics/pro/o$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/o$b;->a:Lcom/umeng/analytics/pro/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/umeng/analytics/pro/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/o$b;->a:Lcom/umeng/analytics/pro/o;

    return-object v0
.end method
