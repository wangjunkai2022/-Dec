.class public Lcom/apk/s80$do;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/s80;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final synthetic if:Lcom/apk/s80;


# direct methods
.method public constructor <init>(Lcom/apk/s80;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/s80$do;->if:Lcom/apk/s80;

    iput-object p2, p0, Lcom/apk/s80$do;->do:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/s80$do;->if:Lcom/apk/s80;

    .line 2
    invoke-virtual {v0, p1}, Lcom/apk/s80;->class(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/apk/s80$do;->if:Lcom/apk/s80;

    .line 4
    invoke-virtual {v0}, Lcom/apk/s80;->const()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v1

    .line 5
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/apk/s80$do;->do:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
