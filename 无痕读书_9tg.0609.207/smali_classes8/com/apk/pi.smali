.class public Lcom/apk/pi;
.super Lcom/apk/xq;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/xq<",
        "Lcom/apk/pi<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Object<",
        "Lcom/apk/pi<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field public final abstract:Lcom/apk/li;

.field public continue:Lcom/apk/ri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/ri<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final finally:Landroid/content/Context;

.field public interface:Z

.field public final package:Lcom/apk/qi;

.field public final private:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public protected:Z

.field public strictfp:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/cr<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/dr;

    invoke-direct {v0}, Lcom/apk/dr;-><init>()V

    sget-object v1, Lcom/apk/uk;->if:Lcom/apk/uk;

    .line 2
    invoke-virtual {v0, v1}, Lcom/apk/xq;->else(Lcom/apk/uk;)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    sget-object v1, Lcom/apk/ni;->new:Lcom/apk/ni;

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/xq;->switch(Lcom/apk/ni;)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/apk/xq;->finally(Z)Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/dr;

    return-void
.end method

.method public constructor <init>(Lcom/apk/ii;Lcom/apk/qi;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lcom/apk/ii;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ii;",
            "Lcom/apk/qi;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/apk/xq;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/pi;->interface:Z

    .line 3
    iput-object p2, p0, Lcom/apk/pi;->package:Lcom/apk/qi;

    .line 4
    iput-object p3, p0, Lcom/apk/pi;->private:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Lcom/apk/pi;->finally:Landroid/content/Context;

    .line 6
    iget-object p4, p2, Lcom/apk/qi;->do:Lcom/apk/ii;

    .line 7
    iget-object p4, p4, Lcom/apk/ii;->new:Lcom/apk/li;

    .line 8
    iget-object v0, p4, Lcom/apk/li;->case:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/ri;

    if-nez v0, :cond_1

    .line 9
    iget-object p4, p4, Lcom/apk/li;->case:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/ri;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 12
    sget-object v0, Lcom/apk/li;->catch:Lcom/apk/ri;

    .line 13
    :cond_2
    iput-object v0, p0, Lcom/apk/pi;->continue:Lcom/apk/ri;

    .line 14
    iget-object p1, p1, Lcom/apk/ii;->new:Lcom/apk/li;

    .line 15
    iput-object p1, p0, Lcom/apk/pi;->abstract:Lcom/apk/li;

    .line 16
    iget-object p1, p2, Lcom/apk/qi;->break:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/apk/cr;

    .line 18
    invoke-virtual {p0, p3}, Lcom/apk/pi;->continue(Lcom/apk/cr;)Lcom/apk/pi;

    goto :goto_1

    .line 19
    :cond_3
    monitor-enter p2

    .line 20
    :try_start_0
    iget-object p1, p2, Lcom/apk/qi;->catch:Lcom/apk/dr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    .line 21
    invoke-virtual {p0, p1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    return-void

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p2

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/apk/pi;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/apk/pi<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/pi;->strictfp:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/apk/pi;->protected:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/apk/pi;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/apk/pi<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/pi;->strictfp:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/apk/pi;->protected:Z

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Lcom/apk/pr;Lcom/apk/cr;Lcom/apk/xq;Lcom/apk/ar;Lcom/apk/ri;Lcom/apk/ni;IILjava/util/concurrent/Executor;)Lcom/apk/zq;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/apk/pr<",
            "TTranscodeType;>;",
            "Lcom/apk/cr<",
            "TTranscodeType;>;",
            "Lcom/apk/xq<",
            "*>;",
            "Lcom/apk/ar;",
            "Lcom/apk/ri<",
            "*-TTranscodeType;>;",
            "Lcom/apk/ni;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/apk/zq;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/apk/pi;->finally:Landroid/content/Context;

    iget-object v3, v0, Lcom/apk/pi;->abstract:Lcom/apk/li;

    iget-object v5, v0, Lcom/apk/pi;->strictfp:Ljava/lang/Object;

    iget-object v6, v0, Lcom/apk/pi;->private:Ljava/lang/Class;

    iget-object v13, v0, Lcom/apk/pi;->volatile:Ljava/util/List;

    .line 2
    iget-object v15, v3, Lcom/apk/li;->else:Lcom/apk/vk;

    move-object/from16 v1, p6

    .line 3
    iget-object v14, v1, Lcom/apk/ri;->do:Lcom/apk/tr;

    .line 4
    new-instance v18, Lcom/apk/fr;

    move-object/from16 v1, v18

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p7

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v16, v14

    move-object/from16 v14, p5

    move-object/from16 v17, p10

    invoke-direct/range {v1 .. v17}, Lcom/apk/fr;-><init>(Landroid/content/Context;Lcom/apk/li;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/apk/xq;IILcom/apk/ni;Lcom/apk/pr;Lcom/apk/cr;Ljava/util/List;Lcom/apk/ar;Lcom/apk/vk;Lcom/apk/tr;Ljava/util/concurrent/Executor;)V

    return-object v18
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/pi;->interface()Lcom/apk/pi;

    move-result-object v0

    return-object v0
.end method

.method public continue(Lcom/apk/cr;)Lcom/apk/pi;
    .locals 1
    .param p1    # Lcom/apk/cr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/cr<",
            "TTranscodeType;>;)",
            "Lcom/apk/pi<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/apk/pi;->volatile:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apk/pi;->volatile:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/pi;->volatile:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public d()Lcom/apk/yq;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/yq<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/br;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1, v1}, Lcom/apk/br;-><init>(II)V

    .line 2
    sget-object v1, Lcom/apk/as;->if:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {p0, v0, v0, p0, v1}, Lcom/apk/pi;->transient(Lcom/apk/pr;Lcom/apk/cr;Lcom/apk/xq;Ljava/util/concurrent/Executor;)Lcom/apk/pr;

    return-object v0
.end method

.method public bridge synthetic do(Lcom/apk/xq;)Lcom/apk/xq;
    .locals 0
    .param p1    # Lcom/apk/xq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object p1

    return-object p1
.end method

.method public implements(Landroid/widget/ImageView;)Lcom/apk/qr;
    .locals 4
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/apk/qr<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/apk/gs;->do()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lcom/apk/xq;->do:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/apk/xq;->const(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/apk/xq;->final:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/apk/pi$do;->do:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Lcom/apk/pi;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/xq;->while()Lcom/apk/xq;

    move-result-object v0

    goto :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lcom/apk/pi;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/xq;->import()Lcom/apk/xq;

    move-result-object v0

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Lcom/apk/pi;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/xq;->while()Lcom/apk/xq;

    move-result-object v0

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lcom/apk/pi;->new()Lcom/apk/xq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/xq;->super()Lcom/apk/xq;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/apk/pi;->abstract:Lcom/apk/li;

    iget-object v2, p0, Lcom/apk/pi;->private:Ljava/lang/Class;

    .line 12
    iget-object v1, v1, Lcom/apk/li;->for:Lcom/apk/lr;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 13
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    new-instance v1, Lcom/apk/hr;

    invoke-direct {v1, p1}, Lcom/apk/hr;-><init>(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 15
    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    new-instance v1, Lcom/apk/jr;

    invoke-direct {v1, p1}, Lcom/apk/jr;-><init>(Landroid/widget/ImageView;)V

    .line 17
    :goto_2
    sget-object p1, Lcom/apk/as;->do:Ljava/util/concurrent/Executor;

    .line 18
    invoke-virtual {p0, v1, v3, v0, p1}, Lcom/apk/pi;->transient(Lcom/apk/pr;Lcom/apk/cr;Lcom/apk/xq;Ljava/util/concurrent/Executor;)Lcom/apk/pr;

    return-object v1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public instanceof(Lcom/apk/cr;)Lcom/apk/pi;
    .locals 1
    .param p1    # Lcom/apk/cr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/cr<",
            "TTranscodeType;>;)",
            "Lcom/apk/pi<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/apk/pi;->volatile:Ljava/util/List;

    .line 2
    invoke-virtual {p0, p1}, Lcom/apk/pi;->continue(Lcom/apk/cr;)Lcom/apk/pi;

    move-result-object p1

    return-object p1
.end method

.method public interface()Lcom/apk/pi;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/pi<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/apk/xq;->new()Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/pi;

    .line 2
    iget-object v1, v0, Lcom/apk/pi;->continue:Lcom/apk/ri;

    invoke-virtual {v1}, Lcom/apk/ri;->do()Lcom/apk/ri;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/pi;->continue:Lcom/apk/ri;

    return-object v0
.end method

.method public bridge synthetic new()Lcom/apk/xq;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/pi;->interface()Lcom/apk/pi;

    move-result-object v0

    return-object v0
.end method

.method public protected(Lcom/apk/pr;)Lcom/apk/pr;
    .locals 2
    .param p1    # Lcom/apk/pr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/apk/pr<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/as;->do:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v1, p0, v0}, Lcom/apk/pi;->transient(Lcom/apk/pr;Lcom/apk/cr;Lcom/apk/xq;Ljava/util/concurrent/Executor;)Lcom/apk/pr;

    return-object p1
.end method

.method public strictfp(Lcom/apk/xq;)Lcom/apk/pi;
    .locals 1
    .param p1    # Lcom/apk/xq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/xq<",
            "*>;)",
            "Lcom/apk/pi<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/xq;->do(Lcom/apk/xq;)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/pi;

    return-object p1
.end method

.method public synchronized(Ljava/io/File;)Lcom/apk/pi;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/apk/pi<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/pi;->strictfp:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/apk/pi;->protected:Z

    return-object p0
.end method

.method public final transient(Lcom/apk/pr;Lcom/apk/cr;Lcom/apk/xq;Ljava/util/concurrent/Executor;)Lcom/apk/pr;
    .locals 14
    .param p1    # Lcom/apk/pr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/cr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/apk/pr<",
            "TTranscodeType;>;>(TY;",
            "Lcom/apk/cr<",
            "TTranscodeType;>;",
            "Lcom/apk/xq<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    move-object v12, p0

    move-object v0, p1

    move-object/from16 v13, p3

    const-string v1, "Argument must not be null"

    .line 1
    invoke-static {p1, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v1, v12, Lcom/apk/pi;->protected:Z

    if-eqz v1, :cond_4

    .line 3
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v6, v12, Lcom/apk/pi;->continue:Lcom/apk/ri;

    .line 4
    iget-object v7, v13, Lcom/apk/xq;->new:Lcom/apk/ni;

    .line 5
    iget v8, v13, Lcom/apk/xq;->catch:I

    .line 6
    iget v9, v13, Lcom/apk/xq;->break:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 7
    invoke-virtual/range {v1 .. v11}, Lcom/apk/pi;->volatile(Ljava/lang/Object;Lcom/apk/pr;Lcom/apk/cr;Lcom/apk/ar;Lcom/apk/ri;Lcom/apk/ni;IILcom/apk/xq;Ljava/util/concurrent/Executor;)Lcom/apk/zq;

    move-result-object v1

    .line 8
    invoke-interface {p1}, Lcom/apk/pr;->goto()Lcom/apk/zq;

    move-result-object v2

    .line 9
    move-object v3, v1

    check-cast v3, Lcom/apk/fr;

    invoke-virtual {v3, v2}, Lcom/apk/fr;->break(Lcom/apk/zq;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    iget-boolean v4, v13, Lcom/apk/xq;->this:Z

    if-nez v4, :cond_0

    .line 11
    invoke-interface {v2}, Lcom/apk/zq;->try()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    const-string v1, "Argument must not be null"

    .line 12
    invoke-static {v2, v1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-interface {v2}, Lcom/apk/zq;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-interface {v2}, Lcom/apk/zq;->new()V

    :cond_1
    return-object v0

    .line 15
    :cond_2
    iget-object v2, v12, Lcom/apk/pi;->package:Lcom/apk/qi;

    invoke-virtual {v2, p1}, Lcom/apk/qi;->const(Lcom/apk/pr;)V

    .line 16
    invoke-interface {p1, v1}, Lcom/apk/pr;->for(Lcom/apk/zq;)V

    .line 17
    iget-object v2, v12, Lcom/apk/pi;->package:Lcom/apk/qi;

    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v4, v2, Lcom/apk/qi;->case:Lcom/apk/lq;

    .line 20
    iget-object v4, v4, Lcom/apk/lq;->do:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v4, v2, Lcom/apk/qi;->new:Lcom/apk/jq;

    .line 22
    iget-object v5, v4, Lcom/apk/jq;->do:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iget-boolean v5, v4, Lcom/apk/jq;->for:Z

    if-nez v5, :cond_3

    .line 24
    invoke-virtual {v3}, Lcom/apk/fr;->new()V

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {v3}, Lcom/apk/fr;->clear()V

    .line 26
    iget-object v3, v4, Lcom/apk/jq;->if:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_1
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 28
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final volatile(Ljava/lang/Object;Lcom/apk/pr;Lcom/apk/cr;Lcom/apk/ar;Lcom/apk/ri;Lcom/apk/ni;IILcom/apk/xq;Ljava/util/concurrent/Executor;)Lcom/apk/zq;
    .locals 11
    .param p3    # Lcom/apk/cr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/apk/ar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/apk/pr<",
            "TTranscodeType;>;",
            "Lcom/apk/cr<",
            "TTranscodeType;>;",
            "Lcom/apk/ar;",
            "Lcom/apk/ri<",
            "*-TTranscodeType;>;",
            "Lcom/apk/ni;",
            "II",
            "Lcom/apk/xq<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/apk/zq;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 1
    invoke-virtual/range {v0 .. v10}, Lcom/apk/pi;->c(Ljava/lang/Object;Lcom/apk/pr;Lcom/apk/cr;Lcom/apk/xq;Lcom/apk/ar;Lcom/apk/ri;Lcom/apk/ni;IILjava/util/concurrent/Executor;)Lcom/apk/zq;

    move-result-object v0

    return-object v0
.end method
