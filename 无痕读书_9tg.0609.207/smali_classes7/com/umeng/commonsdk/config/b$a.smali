.class public Lcom/umeng/commonsdk/config/b$a;
.super Ljava/lang/Object;
.source "CollectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/config/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/umeng/commonsdk/config/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/config/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/config/b;-><init>(Lcom/umeng/commonsdk/config/b$1;)V

    sput-object v0, Lcom/umeng/commonsdk/config/b$a;->a:Lcom/umeng/commonsdk/config/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/umeng/commonsdk/config/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/config/b$a;->a:Lcom/umeng/commonsdk/config/b;

    return-object v0
.end method
