.class public Lcom/apk/mi;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/mi$for;,
        Lcom/apk/mi$new;,
        Lcom/apk/mi$if;,
        Lcom/apk/mi$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field public break:Z

.field public case:I

.field public final do:I

.field public else:I

.field public final for:Lcom/apk/qi;

.field public goto:I

.field public final if:Lcom/apk/mi$new;

.field public final new:Lcom/apk/mi$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/mi$do<",
            "TT;>;"
        }
    .end annotation
.end field

.field public this:I

.field public final try:Lcom/apk/mi$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/mi$if<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/qi;Lcom/apk/mi$do;Lcom/apk/mi$if;I)V
    .locals 1
    .param p1    # Lcom/apk/qi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/mi$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/mi$if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qi;",
            "Lcom/apk/mi$do<",
            "TT;>;",
            "Lcom/apk/mi$if<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/apk/mi;->goto:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/apk/mi;->break:Z

    .line 4
    iput-object p1, p0, Lcom/apk/mi;->for:Lcom/apk/qi;

    .line 5
    iput-object p2, p0, Lcom/apk/mi;->new:Lcom/apk/mi$do;

    .line 6
    iput-object p3, p0, Lcom/apk/mi;->try:Lcom/apk/mi$if;

    .line 7
    iput p4, p0, Lcom/apk/mi;->do:I

    .line 8
    new-instance p1, Lcom/apk/mi$new;

    add-int/2addr p4, v0

    invoke-direct {p1, p4}, Lcom/apk/mi$new;-><init>(I)V

    iput-object p1, p0, Lcom/apk/mi;->if:Lcom/apk/mi$new;

    return-void
.end method


# virtual methods
.method public final do(IZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/apk/mi;->break:Z

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    .line 2
    iput-boolean p2, p0, Lcom/apk/mi;->break:Z

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/apk/mi;->if:Lcom/apk/mi$new;

    iget-object v2, v2, Lcom/apk/mi$new;->do:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/apk/mi;->for:Lcom/apk/qi;

    iget-object v3, p0, Lcom/apk/mi;->if:Lcom/apk/mi$new;

    .line 5
    iget-object v4, v3, Lcom/apk/mi$new;->do:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apk/mi$for;

    .line 6
    iget-object v3, v3, Lcom/apk/mi$new;->do:Ljava/util/Queue;

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 7
    iput v1, v4, Lcom/apk/mi$for;->if:I

    .line 8
    iput v1, v4, Lcom/apk/mi$for;->do:I

    .line 9
    invoke-virtual {v2, v4}, Lcom/apk/qi;->const(Lcom/apk/pr;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 10
    iget p2, p0, Lcom/apk/mi;->do:I

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/apk/mi;->do:I

    neg-int p2, p2

    :goto_1
    add-int/2addr p2, p1

    if-ge p1, p2, :cond_2

    .line 11
    iget v0, p0, Lcom/apk/mi;->case:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v0

    move v0, p2

    goto :goto_2

    .line 12
    :cond_2
    iget v0, p0, Lcom/apk/mi;->else:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, p2

    .line 13
    :goto_2
    iget v3, p0, Lcom/apk/mi;->this:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 14
    iget v3, p0, Lcom/apk/mi;->this:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge p1, p2, :cond_3

    move p1, v2

    :goto_3
    if-ge p1, v0, :cond_4

    .line 15
    iget-object p2, p0, Lcom/apk/mi;->new:Lcom/apk/mi$do;

    check-cast p2, Lcom/apk/f00$this;

    invoke-virtual {p2, p1}, Lcom/apk/f00$this;->do(I)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p0, p2, p1, v1}, Lcom/apk/mi;->if(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, v0, -0x1

    :goto_4
    if-lt p1, v2, :cond_4

    .line 16
    iget-object p2, p0, Lcom/apk/mi;->new:Lcom/apk/mi$do;

    check-cast p2, Lcom/apk/f00$this;

    invoke-virtual {p2, p1}, Lcom/apk/f00$this;->do(I)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v1}, Lcom/apk/mi;->if(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 17
    :cond_4
    iput v2, p0, Lcom/apk/mi;->else:I

    .line 18
    iput v0, p0, Lcom/apk/mi;->case:I

    return-void
.end method

.method public final for(Ljava/lang/Object;II)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/apk/mi;->try:Lcom/apk/mi$if;

    check-cast p2, Lcom/apk/bs;

    .line 2
    iget-object p2, p2, Lcom/apk/bs;->do:[I

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/apk/mi;->new:Lcom/apk/mi$do;

    .line 4
    check-cast p2, Lcom/apk/f00$this;

    if-eqz p2, :cond_3

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 7
    iget-object p2, p2, Lcom/apk/f00$this;->do:Lcom/apk/f00;

    .line 8
    iget-object p2, p2, Lcom/apk/qz;->if:Landroid/app/Activity;

    .line 9
    invoke-static {p2, p1}, Lcom/apk/u;->const(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public final if(Ljava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_1

    .line 2
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/apk/mi;->for(Ljava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p3, p2, v0}, Lcom/apk/mi;->for(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/apk/mi;->this:I

    .line 2
    iget p1, p0, Lcom/apk/mi;->goto:I

    if-le p2, p1, :cond_0

    add-int/2addr p3, p2

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p3, p1}, Lcom/apk/mi;->do(IZ)V

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/apk/mi;->do(IZ)V

    .line 5
    :cond_1
    :goto_0
    iput p2, p0, Lcom/apk/mi;->goto:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
