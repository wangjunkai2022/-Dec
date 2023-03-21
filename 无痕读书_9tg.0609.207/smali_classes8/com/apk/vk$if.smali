.class public Lcom/apk/vk$if;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/vk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public final case:Lcom/apk/al$do;

.field public final do:Lcom/apk/km;

.field public final else:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/apk/wk<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final for:Lcom/apk/km;

.field public final if:Lcom/apk/km;

.field public final new:Lcom/apk/km;

.field public final try:Lcom/apk/xk;


# direct methods
.method public constructor <init>(Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Lcom/apk/xk;Lcom/apk/al$do;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/vk$if$do;

    invoke-direct {v0, p0}, Lcom/apk/vk$if$do;-><init>(Lcom/apk/vk$if;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lcom/apk/hs;->do(ILcom/apk/hs$if;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/vk$if;->else:Landroidx/core/util/Pools$Pool;

    .line 4
    iput-object p1, p0, Lcom/apk/vk$if;->do:Lcom/apk/km;

    .line 5
    iput-object p2, p0, Lcom/apk/vk$if;->if:Lcom/apk/km;

    .line 6
    iput-object p3, p0, Lcom/apk/vk$if;->for:Lcom/apk/km;

    .line 7
    iput-object p4, p0, Lcom/apk/vk$if;->new:Lcom/apk/km;

    .line 8
    iput-object p5, p0, Lcom/apk/vk$if;->try:Lcom/apk/xk;

    .line 9
    iput-object p6, p0, Lcom/apk/vk$if;->case:Lcom/apk/al$do;

    return-void
.end method
