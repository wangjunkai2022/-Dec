.class public abstract Lcom/apk/y80;
.super Lcom/apk/s80;
.source "CommonBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/s80<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public import:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public native:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apk/r90<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public throw:Lcom/apk/s90;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/s90<",
            "TT;>;"
        }
    .end annotation
.end field

.field public while:Lcom/apk/t90;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/t90<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/apk/s80;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apk/y80;->import:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apk/y80;->native:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public do(ILjava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)I"
        }
    .end annotation

    const p1, 0x186a1

    return p1
.end method

.method public abstract native(Lcom/apk/r80;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/r80;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/s80;->catch(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/apk/s80;->const()I

    move-result v0

    sub-int/2addr p2, v0

    .line 4
    check-cast p1, Lcom/apk/r80;

    .line 5
    iget-object v0, p0, Lcom/apk/s80;->new:Ljava/util/List;

    .line 6
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/apk/y80;->native(Lcom/apk/r80;Ljava/lang/Object;I)V

    .line 7
    iget-object v0, p1, Lcom/apk/r80;->if:Landroid/view/View;

    .line 8
    new-instance v1, Lcom/apk/v80;

    invoke-direct {v1, p0, p1, p2}, Lcom/apk/v80;-><init>(Lcom/apk/y80;Lcom/apk/r80;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p1, Lcom/apk/r80;->if:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/apk/w80;

    invoke-direct {v1, p0, p1, p2}, Lcom/apk/w80;-><init>(Lcom/apk/y80;Lcom/apk/r80;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/apk/y80;->import:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 12
    iget-object v1, p1, Lcom/apk/r80;->if:Landroid/view/View;

    .line 13
    iget-object v2, p0, Lcom/apk/y80;->import:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, p1, Lcom/apk/r80;->if:Landroid/view/View;

    .line 15
    iget-object v2, p0, Lcom/apk/y80;->import:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/apk/x80;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/apk/x80;-><init>(Lcom/apk/y80;ILcom/apk/r80;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/apk/s80;->catch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/apk/s80;->for:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/apk/y80;->public()I

    move-result v0

    invoke-static {p2, v0, p1}, Lcom/apk/r80;->if(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/apk/r80;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/apk/s80;->for(Landroid/view/ViewGroup;I)Lcom/apk/r80;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public abstract public()I
.end method
