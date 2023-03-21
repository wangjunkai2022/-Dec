.class public Lcom/expand/listen/fragment/ListenRankFragment$do;
.super Ljava/lang/Object;
.source "ListenRankFragment.java"

# interfaces
.implements Lcom/apk/nt$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/listen/fragment/ListenRankFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/expand/listen/fragment/ListenRankFragment;


# direct methods
.method public constructor <init>(Lcom/expand/listen/fragment/ListenRankFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/fragment/ListenRankFragment$do;->do:Lcom/expand/listen/fragment/ListenRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-nez p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    :goto_0
    iget-object p3, p0, Lcom/expand/listen/fragment/ListenRankFragment$do;->do:Lcom/expand/listen/fragment/ListenRankFragment;

    iget-object p3, p3, Lcom/expand/listen/fragment/ListenRankFragment;->time_choose:Landroid/widget/TextView;

    sget-object p4, Lcom/apk/q0;->goto:[Ljava/lang/String;

    xor-int/lit8 p5, p2, 0x1

    aget-object p4, p4, p5

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p3, p0, Lcom/expand/listen/fragment/ListenRankFragment$do;->do:Lcom/expand/listen/fragment/ListenRankFragment;

    .line 3
    iget-object p4, p3, Lcom/expand/listen/fragment/ListenRankFragment;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    if-eqz p4, :cond_1

    .line 4
    iput-boolean p2, p4, Lcom/expand/listen/fragment/ListenRankChildFragment;->case:Z

    .line 5
    invoke-virtual {p4, p1}, Lcom/expand/listen/fragment/ListenRankChildFragment;->i(Z)V

    .line 6
    :cond_1
    iget-object p4, p3, Lcom/expand/listen/fragment/ListenRankFragment;->if:Lcom/expand/listen/fragment/ListenRankChildFragment;

    if-eqz p4, :cond_2

    .line 7
    iput-boolean p2, p4, Lcom/expand/listen/fragment/ListenRankChildFragment;->case:Z

    .line 8
    invoke-virtual {p4, p1}, Lcom/expand/listen/fragment/ListenRankChildFragment;->i(Z)V

    .line 9
    :cond_2
    iget-object p3, p3, Lcom/expand/listen/fragment/ListenRankFragment;->for:Lcom/expand/listen/fragment/ListenRankChildFragment;

    if-eqz p3, :cond_3

    .line 10
    iput-boolean p2, p3, Lcom/expand/listen/fragment/ListenRankChildFragment;->case:Z

    .line 11
    invoke-virtual {p3, p1}, Lcom/expand/listen/fragment/ListenRankChildFragment;->i(Z)V

    :cond_3
    return-void
.end method
