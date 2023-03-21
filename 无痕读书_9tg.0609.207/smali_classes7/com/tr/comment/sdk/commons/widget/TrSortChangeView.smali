.class public Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;
.super Landroid/widget/FrameLayout;
.source "TrSortChangeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tr/comment/sdk/commons/widget/TrSortChangeView$do;
    }
.end annotation


# static fields
.field public static final try:[Ljava/lang/String;


# instance fields
.field public do:Landroid/widget/TextView;

.field public for:Ljava/lang/String;

.field public if:Landroid/widget/TextView;

.field public new:Lcom/tr/comment/sdk/commons/widget/TrSortChangeView$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sget-object v1, Lcom/tr/comment/sdk/bean/TrSortType;->HOT:Lcom/tr/comment/sdk/bean/TrSortType;

    .line 2
    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrSortType;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tr/comment/sdk/bean/TrSortType;->LAST:Lcom/tr/comment/sdk/bean/TrSortType;

    .line 3
    invoke-virtual {v1}, Lcom/tr/comment/sdk/bean/TrSortType;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->try:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/tr/comment/sdk/R$layout;->tr_sdk_sort_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_sort_type_hot:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->do:Landroid/widget/TextView;

    .line 4
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_sort_type_last:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->if:Landroid/widget/TextView;

    .line 5
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->do:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->do:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->if:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget-object p1, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->try:[Ljava/lang/String;

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->for:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    sget p1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_shape_reply_night:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_0
    sget p1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_shape_reply:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSortType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->for:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/tr/comment/sdk/R$id;->tr_sdk_sort_type_hot:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->do:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->do:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->if:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    sget-object p1, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->try:[Ljava/lang/String;

    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->for:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_sort_type_last:I

    if-ne p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->if:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->if:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->do:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    sget-object p1, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->try:[Ljava/lang/String;

    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->for:Ljava/lang/String;

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->new:Lcom/tr/comment/sdk/commons/widget/TrSortChangeView$do;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->getSortType()Ljava/lang/String;

    check-cast p1, Lcom/apk/rb0;

    .line 13
    iget-object p1, p1, Lcom/apk/rb0;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-static {p1, v3}, Lcom/tr/comment/sdk/view/TrCommentView;->this(Lcom/tr/comment/sdk/view/TrCommentView;Z)V

    :cond_4
    return-void
.end method

.method public setOnTrSortListenner(Lcom/tr/comment/sdk/commons/widget/TrSortChangeView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->new:Lcom/tr/comment/sdk/commons/widget/TrSortChangeView$do;

    return-void
.end method

.method public setSortType(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->try:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->do:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->if:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    aget-object p1, v0, v1

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->for:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->if:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->do:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7
    aget-object p1, v0, v2

    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrSortChangeView;->for:Ljava/lang/String;

    :goto_0
    return-void
.end method
