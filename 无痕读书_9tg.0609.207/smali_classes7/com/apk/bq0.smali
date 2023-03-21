.class public Lcom/apk/bq0;
.super Ljava/lang/Object;
.source "SkinCompatDelegate.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final do:Landroid/content/Context;

.field public for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/apk/js0;",
            ">;>;"
        }
    .end annotation
.end field

.field public if:Lcom/apk/cq0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/apk/bq0;->for:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/apk/bq0;->do:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5
    .param p3    # Landroid/content/Context;
        .annotation build Lskin/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Lskin/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/bq0;->if:Lcom/apk/cq0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/cq0;

    invoke-direct {v0}, Lcom/apk/cq0;-><init>()V

    iput-object v0, p0, Lcom/apk/bq0;->if:Lcom/apk/cq0;

    .line 3
    :cond_0
    sget-object v0, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 4
    iget-object v0, v0, Lcom/apk/yp0;->try:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/eq0;

    .line 6
    iget-object v2, p0, Lcom/apk/bq0;->do:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p4}, Lcom/apk/eq0;->do(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p3, v1

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/apk/bq0;->if:Lcom/apk/cq0;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 8
    sget-object v1, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 9
    iget-object v1, v1, Lcom/apk/yp0;->else:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/dq0;

    .line 11
    invoke-interface {v2, p3, p2, p4}, Lcom/apk/dq0;->if(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 12
    sget-object v1, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 13
    iget-object v1, v1, Lcom/apk/yp0;->case:Ljava/util/List;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/dq0;

    .line 15
    invoke-interface {v2, p3, p2, p4}, Lcom/apk/dq0;->if(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    if-nez v2, :cond_9

    const-string v2, "view"

    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p2, "class"

    .line 17
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_5
    const/4 v2, 0x1

    .line 18
    :try_start_0
    iget-object v3, p1, Lcom/apk/cq0;->do:[Ljava/lang/Object;

    aput-object p3, v3, v1

    .line 19
    iget-object v3, p1, Lcom/apk/cq0;->do:[Ljava/lang/Object;

    aput-object p4, v3, v2

    const/4 v3, -0x1

    const/16 v4, 0x2e

    .line 20
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v3, v4, :cond_8

    const/4 v3, 0x0

    .line 21
    :goto_3
    sget-object v4, Lcom/apk/cq0;->new:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_7

    .line 22
    sget-object v4, Lcom/apk/cq0;->new:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, p3, p2, v4}, Lcom/apk/cq0;->do(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_6

    .line 23
    iget-object p1, p1, Lcom/apk/cq0;->do:[Ljava/lang/Object;

    aput-object v0, p1, v1

    .line 24
    aput-object v0, p1, v2

    move-object v0, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 25
    :cond_7
    iget-object p1, p1, Lcom/apk/cq0;->do:[Ljava/lang/Object;

    aput-object v0, p1, v1

    .line 26
    aput-object v0, p1, v2

    goto :goto_4

    .line 27
    :cond_8
    :try_start_1
    invoke-virtual {p1, p3, p2, v0}, Lcom/apk/cq0;->do(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    iget-object p1, p1, Lcom/apk/cq0;->do:[Ljava/lang/Object;

    aput-object v0, p1, v1

    .line 29
    aput-object v0, p1, v2

    move-object v0, p2

    goto :goto_4

    :catchall_0
    move-exception p2

    .line 30
    iget-object p1, p1, Lcom/apk/cq0;->do:[Ljava/lang/Object;

    aput-object v0, p1, v1

    .line 31
    aput-object v0, p1, v2

    .line 32
    throw p2

    .line 33
    :catch_0
    iget-object p1, p1, Lcom/apk/cq0;->do:[Ljava/lang/Object;

    aput-object v0, p1, v1

    .line 34
    aput-object v0, p1, v2

    :goto_4
    move-object v2, v0

    :cond_9
    if-eqz v2, :cond_c

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 36
    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_c

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_5

    .line 38
    :cond_a
    sget-object p2, Lcom/apk/cq0;->for:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 40
    new-instance p3, Lcom/apk/cq0$do;

    invoke-direct {p3, v2, p2}, Lcom/apk/cq0$do;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_c
    :goto_5
    return-object v2

    .line 42
    :cond_d
    throw v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apk/bq0;->do(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    instance-of p2, p1, Lcom/apk/js0;

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/apk/bq0;->for:Ljava/util/List;

    new-instance p3, Ljava/lang/ref/WeakReference;

    move-object p4, p1

    check-cast p4, Lcom/apk/js0;

    invoke-direct {p3, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/apk/bq0;->do(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 5
    :cond_0
    instance-of p2, p1, Lcom/apk/js0;

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/apk/bq0;->for:Ljava/util/List;

    new-instance p3, Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Lcom/apk/js0;

    invoke-direct {p3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method
