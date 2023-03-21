.class public Lcom/apk/pq0;
.super Ljava/lang/Object;
.source "SkinCompatVectorResources.java"

# interfaces
.implements Lcom/apk/qq0;


# static fields
.field public static do:Lcom/apk/pq0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/lq0;->case:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/pq0;->if()Lcom/apk/pq0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegate;->isCompatVectorFromResourcesEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Lcom/apk/lq0;->try:Z

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/apk/kq0;->new()Lcom/apk/kq0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/apk/kq0;->case(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    sget-object v0, Lcom/apk/nq0;->this:Lcom/apk/nq0;

    .line 8
    iget-boolean v2, v0, Lcom/apk/nq0;->new:Z

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lcom/apk/nq0;->if(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto/16 :goto_2

    .line 11
    :cond_1
    sget-object v0, Lcom/apk/nq0;->this:Lcom/apk/nq0;

    .line 12
    iget-boolean v2, v0, Lcom/apk/nq0;->goto:Z

    if-nez v2, :cond_2

    .line 13
    invoke-virtual {v0, p1}, Lcom/apk/nq0;->for(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object v0

    .line 15
    iget-object v2, v0, Lcom/apk/lq0;->new:Lcom/apk/yp0$for;

    if-eqz v2, :cond_3

    .line 16
    iget-object v0, v0, Lcom/apk/lq0;->for:Ljava/lang/String;

    invoke-interface {v2, p0, v0, p1}, Lcom/apk/yp0$for;->if(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {p0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    .line 18
    :cond_5
    sget-object v0, Lcom/apk/nq0;->this:Lcom/apk/nq0;

    .line 19
    iget-boolean v2, v0, Lcom/apk/nq0;->new:Z

    if-nez v2, :cond_6

    .line 20
    invoke-virtual {v0, p1}, Lcom/apk/nq0;->if(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 21
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_2

    .line 22
    :cond_6
    sget-object v0, Lcom/apk/nq0;->this:Lcom/apk/nq0;

    .line 23
    iget-boolean v2, v0, Lcom/apk/nq0;->goto:Z

    if-nez v2, :cond_7

    .line 24
    invoke-virtual {v0, p1}, Lcom/apk/nq0;->for(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_0
    move-object p0, v0

    goto :goto_2

    .line 25
    :cond_7
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object v0

    .line 26
    iget-object v2, v0, Lcom/apk/lq0;->new:Lcom/apk/yp0$for;

    if-eqz v2, :cond_8

    .line 27
    iget-object v0, v0, Lcom/apk/lq0;->for:Ljava/lang/String;

    invoke-interface {v2, p0, v0, p1}, Lcom/apk/yp0$for;->if(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_9

    :goto_1
    move-object p0, v1

    goto :goto_2

    .line 28
    :cond_9
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object v0

    .line 29
    iget-boolean v0, v0, Lcom/apk/lq0;->try:Z

    if-nez v0, :cond_a

    .line 30
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/apk/lq0;->try(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object p0

    .line 32
    iget-object p0, p0, Lcom/apk/lq0;->do:Landroid/content/res/Resources;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    .line 34
    :cond_a
    invoke-static {p0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_2
    return-object p0

    .line 35
    :cond_b
    throw v1
.end method

.method public static if()Lcom/apk/pq0;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/pq0;->do:Lcom/apk/pq0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/pq0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/pq0;->do:Lcom/apk/pq0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/pq0;

    invoke-direct {v1}, Lcom/apk/pq0;-><init>()V

    sput-object v1, Lcom/apk/pq0;->do:Lcom/apk/pq0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/pq0;->do:Lcom/apk/pq0;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/kq0;->new()Lcom/apk/kq0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/apk/kq0;->try:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 3
    iget-object v1, v0, Lcom/apk/kq0;->for:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/apk/kq0;->do:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 7
    :cond_1
    sget-object v0, Lcom/apk/kq0;->break:Lcom/apk/kq0$if;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    return-void
.end method
