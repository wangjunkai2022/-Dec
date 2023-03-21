.class public final Lcom/apk/xm$if;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/xm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final new:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/apk/xm$if<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public do:I

.field public for:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/apk/gs;->new(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/apk/xm$if;->new:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/lang/Object;II)Lcom/apk/xm$if;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/apk/xm$if<",
            "TA;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/xm$if;->new:Ljava/util/Queue;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/apk/xm$if;->new:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/xm$if;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/xm$if;

    invoke-direct {v1}, Lcom/apk/xm$if;-><init>()V

    .line 5
    :cond_0
    iput-object p0, v1, Lcom/apk/xm$if;->for:Ljava/lang/Object;

    .line 6
    iput p1, v1, Lcom/apk/xm$if;->if:I

    .line 7
    iput p2, v1, Lcom/apk/xm$if;->do:I

    return-object v1

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/apk/xm$if;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/xm$if;

    .line 3
    iget v0, p0, Lcom/apk/xm$if;->if:I

    iget v2, p1, Lcom/apk/xm$if;->if:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/apk/xm$if;->do:I

    iget v2, p1, Lcom/apk/xm$if;->do:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/apk/xm$if;->for:Ljava/lang/Object;

    iget-object p1, p1, Lcom/apk/xm$if;->for:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/xm$if;->do:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/apk/xm$if;->if:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/apk/xm$if;->for:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
