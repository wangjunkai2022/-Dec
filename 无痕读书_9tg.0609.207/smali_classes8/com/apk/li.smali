.class public Lcom/apk/li;
.super Landroid/content/ContextWrapper;
.source "GlideContext.java"


# static fields
.field public static final catch:Lcom/apk/ri;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/ri<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field public break:Lcom/apk/dr;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final case:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/apk/ri<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final do:Lcom/apk/nl;

.field public final else:Lcom/apk/vk;

.field public final for:Lcom/apk/lr;

.field public final goto:Z

.field public final if:Lcom/apk/oi;

.field public final new:Lcom/apk/ii$do;

.field public final this:I

.field public final try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/cr<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/hi;

    invoke-direct {v0}, Lcom/apk/hi;-><init>()V

    sput-object v0, Lcom/apk/li;->catch:Lcom/apk/ri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/apk/nl;Lcom/apk/oi;Lcom/apk/lr;Lcom/apk/ii$do;Ljava/util/Map;Ljava/util/List;Lcom/apk/vk;ZI)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/nl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/oi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/lr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/apk/ii$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/apk/vk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apk/nl;",
            "Lcom/apk/oi;",
            "Lcom/apk/lr;",
            "Lcom/apk/ii$do;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/apk/ri<",
            "**>;>;",
            "Ljava/util/List<",
            "Lcom/apk/cr<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/apk/vk;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/apk/li;->do:Lcom/apk/nl;

    .line 3
    iput-object p3, p0, Lcom/apk/li;->if:Lcom/apk/oi;

    .line 4
    iput-object p4, p0, Lcom/apk/li;->for:Lcom/apk/lr;

    .line 5
    iput-object p5, p0, Lcom/apk/li;->new:Lcom/apk/ii$do;

    .line 6
    iput-object p7, p0, Lcom/apk/li;->try:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lcom/apk/li;->case:Ljava/util/Map;

    .line 8
    iput-object p8, p0, Lcom/apk/li;->else:Lcom/apk/vk;

    .line 9
    iput-boolean p9, p0, Lcom/apk/li;->goto:Z

    .line 10
    iput p10, p0, Lcom/apk/li;->this:I

    return-void
.end method
