.class public final Lcom/umeng/common/b$a;
.super Ljava/lang/Object;
.source "SPHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/umeng/common/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/common/b;

    invoke-direct {v0}, Lcom/umeng/common/b;-><init>()V

    sput-object v0, Lcom/umeng/common/b$a;->a:Lcom/umeng/common/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/umeng/common/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/common/b$a;->a:Lcom/umeng/common/b;

    return-object v0
.end method
