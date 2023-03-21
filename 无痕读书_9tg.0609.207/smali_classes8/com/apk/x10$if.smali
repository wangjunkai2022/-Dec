.class public Lcom/apk/x10$if;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ComicRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/x10;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic if:Lcom/apk/x10;


# direct methods
.method public constructor <init>(Lcom/apk/x10;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x10$if;->if:Lcom/apk/x10;

    iput-object p2, p0, Lcom/apk/x10$if;->do:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcom/apk/x10$if;->do:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/x10$if;->if:Lcom/apk/x10;

    .line 4
    iget-object p1, p1, Lcom/apk/x10;->case:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/apk/x10$if;->if:Lcom/apk/x10;

    .line 7
    iget-object p1, p1, Lcom/apk/x10;->case:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/apk/x10$if;->if:Lcom/apk/x10;

    .line 10
    iget-object p1, p1, Lcom/apk/x10;->case:Landroid/widget/TextView;

    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/apk/x10$if;->if:Lcom/apk/x10;

    .line 13
    iget-object p2, p1, Lcom/apk/x10;->case:Landroid/widget/TextView;

    .line 14
    sget-object p3, Lcom/apk/q0;->goto:[Ljava/lang/String;

    iget-object v0, p1, Lcom/apk/x10;->this:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v0

    aget-object p3, p3, v0

    .line 15
    sget-object v0, Lcom/apk/x10;->while:[Ljava/lang/String;

    iget-object v1, p1, Lcom/apk/x10;->break:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 16
    sget-object v1, Lcom/apk/q0;->case:[Ljava/lang/String;

    iget-object v2, p1, Lcom/apk/x10;->catch:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v2

    aget-object v1, v1, v2

    .line 17
    sget-object v2, Lcom/apk/q0;->break:[Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/x10;->class:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p1

    aget-object p1, v2, p1

    .line 18
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 19
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "  ->  "

    .line 20
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/apk/x10$if;->if:Lcom/apk/x10;

    .line 29
    iget-object p1, p1, Lcom/apk/x10;->case:Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
