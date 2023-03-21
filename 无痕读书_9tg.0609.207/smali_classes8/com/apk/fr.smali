.class public final Lcom/apk/fr;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lcom/apk/zq;
.implements Lcom/apk/or;
.implements Lcom/apk/er;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/fr$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/zq;",
        "Lcom/apk/or;",
        "Lcom/apk/er;"
    }
.end annotation


# static fields
.field public static final abstract:Z


# instance fields
.field public final break:Lcom/apk/xq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/xq<",
            "*>;"
        }
    .end annotation
.end field

.field public final case:Landroid/content/Context;

.field public final catch:I

.field public final class:I

.field public final const:Lcom/apk/ni;

.field public default:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final do:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final else:Lcom/apk/li;

.field public extends:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public final final:Lcom/apk/pr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/pr<",
            "TR;>;"
        }
    .end annotation
.end field

.field public finally:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public final for:Ljava/lang/Object;

.field public final goto:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final if:Lcom/apk/ks;

.field public import:Lcom/apk/gl;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gl<",
            "TR;>;"
        }
    .end annotation
.end field

.field public native:Lcom/apk/vk$new;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public final new:Lcom/apk/cr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/cr<",
            "TR;>;"
        }
    .end annotation
.end field

.field public package:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public private:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public public:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public volatile return:Lcom/apk/vk;

.field public static:Lcom/apk/fr$do;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public final super:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/cr<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public switch:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final this:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final throw:Lcom/apk/tr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/tr<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public throws:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final try:Lcom/apk/ar;

.field public final while:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Request"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/apk/fr;->abstract:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/apk/li;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/apk/xq;IILcom/apk/ni;Lcom/apk/pr;Lcom/apk/cr;Ljava/util/List;Lcom/apk/ar;Lcom/apk/vk;Lcom/apk/tr;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/apk/cr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apk/li;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/apk/xq<",
            "*>;II",
            "Lcom/apk/ni;",
            "Lcom/apk/pr<",
            "TR;>;",
            "Lcom/apk/cr<",
            "TR;>;",
            "Ljava/util/List<",
            "Lcom/apk/cr<",
            "TR;>;>;",
            "Lcom/apk/ar;",
            "Lcom/apk/vk;",
            "Lcom/apk/tr<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v2, Lcom/apk/fr;->abstract:Z

    if-eqz v2, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Lcom/apk/fr;->do:Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/apk/ks$if;

    invoke-direct {v2}, Lcom/apk/ks$if;-><init>()V

    .line 4
    iput-object v2, v0, Lcom/apk/fr;->if:Lcom/apk/ks;

    move-object v2, p3

    .line 5
    iput-object v2, v0, Lcom/apk/fr;->for:Ljava/lang/Object;

    move-object v2, p1

    .line 6
    iput-object v2, v0, Lcom/apk/fr;->case:Landroid/content/Context;

    .line 7
    iput-object v1, v0, Lcom/apk/fr;->else:Lcom/apk/li;

    move-object v2, p4

    .line 8
    iput-object v2, v0, Lcom/apk/fr;->goto:Ljava/lang/Object;

    move-object v2, p5

    .line 9
    iput-object v2, v0, Lcom/apk/fr;->this:Ljava/lang/Class;

    move-object v2, p6

    .line 10
    iput-object v2, v0, Lcom/apk/fr;->break:Lcom/apk/xq;

    move v2, p7

    .line 11
    iput v2, v0, Lcom/apk/fr;->catch:I

    move v2, p8

    .line 12
    iput v2, v0, Lcom/apk/fr;->class:I

    move-object v2, p9

    .line 13
    iput-object v2, v0, Lcom/apk/fr;->const:Lcom/apk/ni;

    move-object v2, p10

    .line 14
    iput-object v2, v0, Lcom/apk/fr;->final:Lcom/apk/pr;

    move-object v2, p11

    .line 15
    iput-object v2, v0, Lcom/apk/fr;->new:Lcom/apk/cr;

    move-object v2, p12

    .line 16
    iput-object v2, v0, Lcom/apk/fr;->super:Ljava/util/List;

    move-object/from16 v2, p13

    .line 17
    iput-object v2, v0, Lcom/apk/fr;->try:Lcom/apk/ar;

    move-object/from16 v2, p14

    .line 18
    iput-object v2, v0, Lcom/apk/fr;->return:Lcom/apk/vk;

    move-object/from16 v2, p15

    .line 19
    iput-object v2, v0, Lcom/apk/fr;->throw:Lcom/apk/tr;

    move-object/from16 v2, p16

    .line 20
    iput-object v2, v0, Lcom/apk/fr;->while:Ljava/util/concurrent/Executor;

    .line 21
    sget-object v2, Lcom/apk/fr$do;->do:Lcom/apk/fr$do;

    iput-object v2, v0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    .line 22
    iget-object v2, v0, Lcom/apk/fr;->private:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 23
    iget-boolean v1, v1, Lcom/apk/li;->goto:Z

    if-eqz v1, :cond_1

    .line 24
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/apk/fr;->private:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public break(Lcom/apk/zq;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lcom/apk/fr;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, v1, Lcom/apk/fr;->for:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget v4, v1, Lcom/apk/fr;->catch:I

    .line 4
    iget v5, v1, Lcom/apk/fr;->class:I

    .line 5
    iget-object v6, v1, Lcom/apk/fr;->goto:Ljava/lang/Object;

    .line 6
    iget-object v7, v1, Lcom/apk/fr;->this:Ljava/lang/Class;

    .line 7
    iget-object v8, v1, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 8
    iget-object v9, v1, Lcom/apk/fr;->const:Lcom/apk/ni;

    .line 9
    iget-object v10, v1, Lcom/apk/fr;->super:Ljava/util/List;

    if-eqz v10, :cond_1

    iget-object v10, v1, Lcom/apk/fr;->super:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 10
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    check-cast v0, Lcom/apk/fr;

    .line 12
    iget-object v11, v0, Lcom/apk/fr;->for:Ljava/lang/Object;

    monitor-enter v11

    .line 13
    :try_start_1
    iget v2, v0, Lcom/apk/fr;->catch:I

    .line 14
    iget v12, v0, Lcom/apk/fr;->class:I

    .line 15
    iget-object v13, v0, Lcom/apk/fr;->goto:Ljava/lang/Object;

    .line 16
    iget-object v14, v0, Lcom/apk/fr;->this:Ljava/lang/Class;

    .line 17
    iget-object v15, v0, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 18
    iget-object v3, v0, Lcom/apk/fr;->const:Lcom/apk/ni;

    .line 19
    iget-object v1, v0, Lcom/apk/fr;->super:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/apk/fr;->super:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v2, :cond_3

    if-ne v5, v12, :cond_3

    .line 21
    invoke-static {v6, v13}, Lcom/apk/gs;->if(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {v8, v15}, Lcom/apk/xq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v9, v3, :cond_3

    if-ne v10, v0, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    return v3

    :catchall_0
    move-exception v0

    .line 24
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 25
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final case()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/fr;->package:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final catch()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fr;->try:Lcom/apk/ar;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/apk/ar;->for()Lcom/apk/ar;

    move-result-object v0

    invoke-interface {v0}, Lcom/apk/ar;->if()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final class(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 2
    iget-object v0, v0, Lcom/apk/xq;->return:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/fr;->case:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/apk/fr;->else:Lcom/apk/li;

    .line 5
    invoke-static {v1, v1, p1, v0}, Lcom/apk/yo;->do(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 5

    .line 1
    sget-object v0, Lcom/apk/fr$do;->case:Lcom/apk/fr$do;

    .line 2
    iget-object v1, p0, Lcom/apk/fr;->for:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/fr;->case()V

    .line 4
    iget-object v2, p0, Lcom/apk/fr;->if:Lcom/apk/ks;

    invoke-virtual {v2}, Lcom/apk/ks;->do()V

    .line 5
    iget-object v2, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    if-ne v2, v0, :cond_0

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/apk/fr;->else()V

    .line 8
    iget-object v2, p0, Lcom/apk/fr;->import:Lcom/apk/gl;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/apk/fr;->import:Lcom/apk/gl;

    .line 10
    iput-object v3, p0, Lcom/apk/fr;->import:Lcom/apk/gl;

    move-object v3, v2

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/apk/fr;->try:Lcom/apk/ar;

    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Lcom/apk/ar;->else(Lcom/apk/zq;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    .line 12
    iget-object v2, p0, Lcom/apk/fr;->final:Lcom/apk/pr;

    invoke-virtual {p0}, Lcom/apk/fr;->this()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/apk/pr;->this(Landroid/graphics/drawable/Drawable;)V

    .line 13
    :cond_4
    iput-object v0, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    .line 15
    iget-object v0, p0, Lcom/apk/fr;->return:Lcom/apk/vk;

    invoke-virtual {v0, v3}, Lcom/apk/vk;->case(Lcom/apk/gl;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final const(Lcom/apk/bl;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/apk/fr;->if:Lcom/apk/ks;

    invoke-virtual {v0}, Lcom/apk/ks;->do()V

    .line 2
    iget-object v0, p0, Lcom/apk/fr;->for:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/apk/fr;->else:Lcom/apk/li;

    .line 4
    iget v2, v2, Lcom/apk/li;->this:I

    const/4 v3, 0x0

    if-gt v2, p2, :cond_0

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load failed for "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apk/fr;->goto:Ljava/lang/Object;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with size ["

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/apk/fr;->extends:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/apk/fr;->finally:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p2, 0x4

    if-gt v2, p2, :cond_0

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p1, p1, p2}, Lcom/apk/bl;->do(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 9
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    move v4, v5

    goto :goto_0

    .line 10
    :cond_0
    iput-object v1, p0, Lcom/apk/fr;->native:Lcom/apk/vk$new;

    .line 11
    sget-object p2, Lcom/apk/fr$do;->try:Lcom/apk/fr$do;

    iput-object p2, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/apk/fr;->package:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v1, p0, Lcom/apk/fr;->super:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/apk/fr;->super:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apk/cr;

    .line 15
    iget-object v5, p0, Lcom/apk/fr;->goto:Ljava/lang/Object;

    iget-object v6, p0, Lcom/apk/fr;->final:Lcom/apk/pr;

    .line 16
    invoke-virtual {p0}, Lcom/apk/fr;->catch()Z

    move-result v7

    invoke-interface {v4, p1, v5, v6, v7}, Lcom/apk/cr;->new(Lcom/apk/bl;Ljava/lang/Object;Lcom/apk/pr;Z)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/apk/fr;->new:Lcom/apk/cr;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/apk/fr;->new:Lcom/apk/cr;

    iget-object v4, p0, Lcom/apk/fr;->goto:Ljava/lang/Object;

    iget-object v5, p0, Lcom/apk/fr;->final:Lcom/apk/pr;

    .line 18
    invoke-virtual {p0}, Lcom/apk/fr;->catch()Z

    move-result v6

    invoke-interface {v1, p1, v4, v5, v6}, Lcom/apk/cr;->new(Lcom/apk/bl;Ljava/lang/Object;Lcom/apk/pr;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    or-int p1, v2, p2

    if-nez p1, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/apk/fr;->throw()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_4
    :try_start_2
    iput-boolean v3, p0, Lcom/apk/fr;->package:Z

    .line 21
    iget-object p1, p0, Lcom/apk/fr;->try:Lcom/apk/ar;

    if-eqz p1, :cond_5

    .line 22
    invoke-interface {p1, p0}, Lcom/apk/ar;->do(Lcom/apk/zq;)V

    .line 23
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 24
    iput-boolean v3, p0, Lcom/apk/fr;->package:Z

    throw p1

    .line 25
    :cond_6
    throw v1

    :catchall_1
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/fr;->for:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/fr;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/apk/fr;->clear()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final else()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/fr;->case()V

    .line 2
    iget-object v0, p0, Lcom/apk/fr;->if:Lcom/apk/ks;

    invoke-virtual {v0}, Lcom/apk/ks;->do()V

    .line 3
    iget-object v0, p0, Lcom/apk/fr;->final:Lcom/apk/pr;

    invoke-interface {v0, p0}, Lcom/apk/pr;->do(Lcom/apk/or;)V

    .line 4
    iget-object v0, p0, Lcom/apk/fr;->native:Lcom/apk/vk$new;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lcom/apk/vk$new;->for:Lcom/apk/vk;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/apk/vk$new;->do:Lcom/apk/wk;

    iget-object v0, v0, Lcom/apk/vk$new;->if:Lcom/apk/er;

    invoke-virtual {v2, v0}, Lcom/apk/wk;->goto(Lcom/apk/er;)V

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/apk/fr;->native:Lcom/apk/vk$new;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final(Lcom/apk/gl;Lcom/apk/dj;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/gl<",
            "*>;",
            "Lcom/apk/dj;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fr;->if:Lcom/apk/ks;

    invoke-virtual {v0}, Lcom/apk/ks;->do()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/fr;->for:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iput-object v0, p0, Lcom/apk/fr;->native:Lcom/apk/vk$new;

    const/4 v2, 0x5

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/apk/bl;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apk/fr;->this:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " inside, but instead got null."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/apk/bl;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, v2}, Lcom/apk/fr;->const(Lcom/apk/bl;I)V

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/apk/gl;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 8
    iget-object v4, p0, Lcom/apk/fr;->this:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/apk/fr;->try:Lcom/apk/ar;

    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Lcom/apk/ar;->try(Lcom/apk/zq;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    .line 10
    :try_start_2
    iput-object v0, p0, Lcom/apk/fr;->import:Lcom/apk/gl;

    .line 11
    sget-object p2, Lcom/apk/fr$do;->new:Lcom/apk/fr$do;

    iput-object p2, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    .line 12
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object p2, p0, Lcom/apk/fr;->return:Lcom/apk/vk;

    invoke-virtual {p2, p1}, Lcom/apk/vk;->case(Lcom/apk/gl;)V

    return-void

    .line 14
    :cond_4
    :try_start_3
    invoke-virtual {p0, p1, v3, p2}, Lcom/apk/fr;->super(Lcom/apk/gl;Ljava/lang/Object;Lcom/apk/dj;)V

    .line 15
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 16
    :cond_5
    :goto_2
    :try_start_4
    iput-object v0, p0, Lcom/apk/fr;->import:Lcom/apk/gl;

    .line 17
    new-instance p2, Lcom/apk/bl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected to receive an object of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apk/fr;->this:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but instead got "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    :cond_6
    const-string v4, ""

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "} inside Resource{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    const-string v3, ""

    goto :goto_4

    :cond_7
    const-string v3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 19
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/apk/bl;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2, v2}, Lcom/apk/fr;->const(Lcom/apk/bl;I)V

    .line 21
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    iget-object p2, p0, Lcom/apk/fr;->return:Lcom/apk/vk;

    invoke-virtual {p2, p1}, Lcom/apk/vk;->case(Lcom/apk/gl;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 23
    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_8

    .line 24
    iget-object p2, p0, Lcom/apk/fr;->return:Lcom/apk/vk;

    invoke-virtual {p2, v0}, Lcom/apk/vk;->case(Lcom/apk/gl;)V

    :cond_8
    throw p1
.end method

.method public for()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/fr;->for:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    sget-object v2, Lcom/apk/fr$do;->case:Lcom/apk/fr$do;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final goto()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fr;->default:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 3
    iget-object v1, v0, Lcom/apk/xq;->super:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object v1, p0, Lcom/apk/fr;->default:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 5
    iget v0, v0, Lcom/apk/xq;->throw:I

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/apk/fr;->class(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/fr;->default:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/apk/fr;->default:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public if(II)V
    .locals 23

    move-object/from16 v15, p0

    move/from16 v0, p1

    move/from16 v1, p2

    .line 1
    sget-object v14, Lcom/apk/fr$do;->if:Lcom/apk/fr$do;

    iget-object v2, v15, Lcom/apk/fr;->if:Lcom/apk/ks;

    invoke-virtual {v2}, Lcom/apk/ks;->do()V

    .line 2
    iget-object v13, v15, Lcom/apk/fr;->for:Ljava/lang/Object;

    monitor-enter v13

    .line 3
    :try_start_0
    sget-boolean v2, Lcom/apk/fr;->abstract:Z

    if-eqz v2, :cond_0

    .line 4
    iget-wide v2, v15, Lcom/apk/fr;->public:J

    invoke-static {v2, v3}, Lcom/apk/cs;->do(J)D

    .line 5
    :cond_0
    iget-object v2, v15, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    sget-object v3, Lcom/apk/fr$do;->for:Lcom/apk/fr$do;

    if-eq v2, v3, :cond_1

    .line 6
    monitor-exit v13

    return-void

    .line 7
    :cond_1
    iput-object v14, v15, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    .line 8
    iget-object v2, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 9
    iget v2, v2, Lcom/apk/xq;->if:F

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 11
    :goto_0
    iput v0, v15, Lcom/apk/fr;->extends:I

    if-ne v1, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float v2, v2, v0

    .line 12
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 13
    :goto_1
    iput v0, v15, Lcom/apk/fr;->finally:I

    .line 14
    sget-boolean v0, Lcom/apk/fr;->abstract:Z

    if-eqz v0, :cond_4

    .line 15
    iget-wide v0, v15, Lcom/apk/fr;->public:J

    invoke-static {v0, v1}, Lcom/apk/cs;->do(J)D

    .line 16
    :cond_4
    iget-object v1, v15, Lcom/apk/fr;->return:Lcom/apk/vk;

    iget-object v2, v15, Lcom/apk/fr;->else:Lcom/apk/li;

    iget-object v3, v15, Lcom/apk/fr;->goto:Ljava/lang/Object;

    iget-object v0, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 17
    iget-object v4, v0, Lcom/apk/xq;->class:Lcom/apk/kj;

    .line 18
    iget v5, v15, Lcom/apk/fr;->extends:I

    iget v6, v15, Lcom/apk/fr;->finally:I

    iget-object v0, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 19
    iget-object v7, v0, Lcom/apk/xq;->native:Ljava/lang/Class;

    .line 20
    iget-object v8, v15, Lcom/apk/fr;->this:Ljava/lang/Class;

    iget-object v9, v15, Lcom/apk/fr;->const:Lcom/apk/ni;

    iget-object v0, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 21
    iget-object v10, v0, Lcom/apk/xq;->for:Lcom/apk/uk;

    .line 22
    iget-object v0, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 23
    iget-object v11, v0, Lcom/apk/xq;->import:Ljava/util/Map;

    .line 24
    iget-object v0, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 25
    iget-boolean v12, v0, Lcom/apk/xq;->const:Z

    .line 26
    iget-object v0, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 27
    iget-boolean v0, v0, Lcom/apk/xq;->default:Z

    move-object/from16 v16, v14

    .line 28
    iget-object v14, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 29
    iget-object v14, v14, Lcom/apk/xq;->while:Lcom/apk/mj;

    move-object/from16 v17, v14

    .line 30
    iget-object v14, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 31
    iget-boolean v14, v14, Lcom/apk/xq;->this:Z

    move/from16 v18, v14

    .line 32
    iget-object v14, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 33
    iget-boolean v14, v14, Lcom/apk/xq;->switch:Z

    move/from16 v19, v14

    .line 34
    iget-object v14, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 35
    iget-boolean v14, v14, Lcom/apk/xq;->extends:Z

    move/from16 v20, v14

    .line 36
    iget-object v14, v15, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 37
    iget-boolean v14, v14, Lcom/apk/xq;->throws:Z

    move/from16 p1, v14

    .line 38
    iget-object v14, v15, Lcom/apk/fr;->while:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v21, v13

    move v13, v0

    move-object/from16 v22, v16

    move/from16 v0, v18

    move/from16 v16, v19

    move/from16 v18, v20

    move/from16 v19, p1

    move-object/from16 v20, v14

    move-object/from16 v14, v17

    move v15, v0

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, p0

    .line 39
    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lcom/apk/vk;->if(Lcom/apk/li;Ljava/lang/Object;Lcom/apk/kj;IILjava/lang/Class;Ljava/lang/Class;Lcom/apk/ni;Lcom/apk/uk;Ljava/util/Map;ZZLcom/apk/mj;ZZZZLcom/apk/er;Ljava/util/concurrent/Executor;)Lcom/apk/vk$new;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lcom/apk/fr;->native:Lcom/apk/vk$new;

    .line 40
    iget-object v0, v1, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    move-object/from16 v2, v22

    if-eq v0, v2, :cond_5

    const/4 v0, 0x0

    .line 41
    iput-object v0, v1, Lcom/apk/fr;->native:Lcom/apk/vk$new;

    .line 42
    :cond_5
    sget-boolean v0, Lcom/apk/fr;->abstract:Z

    if-eqz v0, :cond_6

    .line 43
    iget-wide v2, v1, Lcom/apk/fr;->public:J

    invoke-static {v2, v3}, Lcom/apk/cs;->do(J)D

    .line 44
    :cond_6
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v21, v13

    move-object v1, v15

    :goto_2
    move-object/from16 v13, v21

    :goto_3
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/fr;->for:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    sget-object v2, Lcom/apk/fr$do;->if:Lcom/apk/fr$do;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    sget-object v2, Lcom/apk/fr$do;->for:Lcom/apk/fr$do;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public new()V
    .locals 5

    .line 1
    sget-object v0, Lcom/apk/fr$do;->for:Lcom/apk/fr$do;

    sget-object v1, Lcom/apk/fr$do;->if:Lcom/apk/fr$do;

    iget-object v2, p0, Lcom/apk/fr;->for:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/fr;->case()V

    .line 3
    iget-object v3, p0, Lcom/apk/fr;->if:Lcom/apk/ks;

    invoke-virtual {v3}, Lcom/apk/ks;->do()V

    .line 4
    invoke-static {}, Lcom/apk/cs;->if()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/apk/fr;->public:J

    .line 5
    iget-object v3, p0, Lcom/apk/fr;->goto:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 6
    iget v0, p0, Lcom/apk/fr;->catch:I

    iget v1, p0, Lcom/apk/fr;->class:I

    invoke-static {v0, v1}, Lcom/apk/gs;->const(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lcom/apk/fr;->catch:I

    iput v0, p0, Lcom/apk/fr;->extends:I

    .line 8
    iget v0, p0, Lcom/apk/fr;->class:I

    iput v0, p0, Lcom/apk/fr;->finally:I

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/apk/fr;->goto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 10
    :goto_0
    new-instance v1, Lcom/apk/bl;

    const-string v3, "Received null model"

    invoke-direct {v1, v3}, Lcom/apk/bl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/apk/fr;->const(Lcom/apk/bl;I)V

    .line 11
    monitor-exit v2

    return-void

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    if-eq v3, v1, :cond_a

    .line 13
    iget-object v3, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    sget-object v4, Lcom/apk/fr$do;->new:Lcom/apk/fr$do;

    if-ne v3, v4, :cond_3

    .line 14
    iget-object v0, p0, Lcom/apk/fr;->import:Lcom/apk/gl;

    sget-object v1, Lcom/apk/dj;->try:Lcom/apk/dj;

    invoke-virtual {p0, v0, v1}, Lcom/apk/fr;->final(Lcom/apk/gl;Lcom/apk/dj;)V

    .line 15
    monitor-exit v2

    return-void

    .line 16
    :cond_3
    iput-object v0, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    .line 17
    iget v3, p0, Lcom/apk/fr;->catch:I

    iget v4, p0, Lcom/apk/fr;->class:I

    invoke-static {v3, v4}, Lcom/apk/gs;->const(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    iget v3, p0, Lcom/apk/fr;->catch:I

    iget v4, p0, Lcom/apk/fr;->class:I

    invoke-virtual {p0, v3, v4}, Lcom/apk/fr;->if(II)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object v3, p0, Lcom/apk/fr;->final:Lcom/apk/pr;

    invoke-interface {v3, p0}, Lcom/apk/pr;->break(Lcom/apk/or;)V

    .line 20
    :goto_1
    iget-object v3, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    if-eq v3, v1, :cond_5

    iget-object v1, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    if-ne v1, v0, :cond_8

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/apk/fr;->try:Lcom/apk/ar;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/apk/ar;->new(Lcom/apk/zq;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p0, Lcom/apk/fr;->final:Lcom/apk/pr;

    invoke-virtual {p0}, Lcom/apk/fr;->this()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/apk/pr;->else(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_8
    sget-boolean v0, Lcom/apk/fr;->abstract:Z

    if-eqz v0, :cond_9

    .line 24
    iget-wide v0, p0, Lcom/apk/fr;->public:J

    invoke-static {v0, v1}, Lcom/apk/cs;->do(J)D

    .line 25
    :cond_9
    monitor-exit v2

    return-void

    .line 26
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 27
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final super(Lcom/apk/gl;Ljava/lang/Object;Lcom/apk/dj;)V
    .locals 10
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/gl<",
            "TR;>;TR;",
            "Lcom/apk/dj;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/fr;->catch()Z

    move-result v6

    .line 2
    sget-object v0, Lcom/apk/fr$do;->new:Lcom/apk/fr$do;

    iput-object v0, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    .line 3
    iput-object p1, p0, Lcom/apk/fr;->import:Lcom/apk/gl;

    .line 4
    iget-object p1, p0, Lcom/apk/fr;->else:Lcom/apk/li;

    .line 5
    iget p1, p1, Lcom/apk/li;->this:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const-string p1, "Finished loading "

    .line 6
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apk/fr;->goto:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/apk/fr;->extends:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/apk/fr;->finally:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/apk/fr;->public:J

    .line 8
    invoke-static {v0, v1}, Lcom/apk/cs;->do(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/apk/fr;->package:Z

    const/4 v7, 0x0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/apk/fr;->super:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/apk/fr;->super:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/cr;

    .line 12
    iget-object v2, p0, Lcom/apk/fr;->goto:Ljava/lang/Object;

    iget-object v3, p0, Lcom/apk/fr;->final:Lcom/apk/pr;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 13
    invoke-interface/range {v0 .. v5}, Lcom/apk/cr;->case(Ljava/lang/Object;Ljava/lang/Object;Lcom/apk/pr;Lcom/apk/dj;Z)Z

    move-result v0

    or-int/2addr v9, v0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/apk/fr;->new:Lcom/apk/cr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apk/fr;->new:Lcom/apk/cr;

    iget-object v2, p0, Lcom/apk/fr;->goto:Ljava/lang/Object;

    iget-object v3, p0, Lcom/apk/fr;->final:Lcom/apk/pr;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 15
    invoke-interface/range {v0 .. v5}, Lcom/apk/cr;->case(Ljava/lang/Object;Ljava/lang/Object;Lcom/apk/pr;Lcom/apk/dj;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    or-int/2addr p1, v9

    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/apk/fr;->throw:Lcom/apk/tr;

    check-cast p1, Lcom/apk/rr$do;

    if-eqz p1, :cond_4

    .line 17
    sget-object p1, Lcom/apk/rr;->do:Lcom/apk/rr;

    .line 18
    iget-object p3, p0, Lcom/apk/fr;->final:Lcom/apk/pr;

    invoke-interface {p3, p2, p1}, Lcom/apk/pr;->if(Ljava/lang/Object;Lcom/apk/sr;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 19
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_5
    :goto_2
    iput-boolean v7, p0, Lcom/apk/fr;->package:Z

    .line 21
    iget-object p1, p0, Lcom/apk/fr;->try:Lcom/apk/ar;

    if-eqz p1, :cond_6

    .line 22
    invoke-interface {p1, p0}, Lcom/apk/ar;->case(Lcom/apk/zq;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 23
    iput-boolean v7, p0, Lcom/apk/fr;->package:Z

    throw p1
.end method

.method public final this()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fr;->throws:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 3
    iget-object v1, v0, Lcom/apk/xq;->else:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object v1, p0, Lcom/apk/fr;->throws:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 5
    iget v0, v0, Lcom/apk/xq;->goto:I

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/apk/fr;->class(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/fr;->throws:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/apk/fr;->throws:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final throw()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/fr;->try:Lcom/apk/ar;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/apk/ar;->new(Lcom/apk/zq;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/apk/fr;->goto:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/apk/fr;->goto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/apk/fr;->switch:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/apk/fr;->break:Lcom/apk/xq;

    .line 6
    iget-object v1, v0, Lcom/apk/xq;->try:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object v1, p0, Lcom/apk/fr;->switch:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 8
    iget v0, v0, Lcom/apk/xq;->case:I

    if-lez v0, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Lcom/apk/fr;->class(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/fr;->switch:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/apk/fr;->switch:Landroid/graphics/drawable/Drawable;

    :cond_5
    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/apk/fr;->this()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 12
    :cond_6
    iget-object v1, p0, Lcom/apk/fr;->final:Lcom/apk/pr;

    invoke-interface {v1, v0}, Lcom/apk/pr;->try(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public try()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/fr;->for:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/fr;->static:Lcom/apk/fr$do;

    sget-object v2, Lcom/apk/fr$do;->new:Lcom/apk/fr$do;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
