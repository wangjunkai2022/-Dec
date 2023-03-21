.class public final Lcom/apk/ji;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field public break:Lcom/apk/zp;

.field public case:Lcom/apk/km;

.field public catch:I

.field public class:Lcom/apk/ii$do;

.field public const:Lcom/apk/hq$if;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final do:Ljava/util/Map;
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

.field public else:Lcom/apk/km;

.field public final:Lcom/apk/km;

.field public for:Lcom/apk/pl;

.field public goto:Lcom/apk/zl$do;

.field public if:Lcom/apk/vk;

.field public new:Lcom/apk/nl;

.field public super:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/cr<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public this:Lcom/apk/im;

.field public try:Lcom/apk/hm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/apk/ji;->do:Ljava/util/Map;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/apk/ji;->catch:I

    .line 4
    new-instance v0, Lcom/apk/ji$do;

    invoke-direct {v0, p0}, Lcom/apk/ji$do;-><init>(Lcom/apk/ji;)V

    iput-object v0, p0, Lcom/apk/ji;->class:Lcom/apk/ii$do;

    return-void
.end method
