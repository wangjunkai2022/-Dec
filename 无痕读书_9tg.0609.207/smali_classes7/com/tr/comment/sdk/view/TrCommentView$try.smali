.class public Lcom/tr/comment/sdk/view/TrCommentView$try;
.super Ljava/lang/Object;
.source "TrCommentView.java"

# interfaces
.implements Lcom/apk/r90;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tr/comment/sdk/view/TrCommentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/r90<",
        "Lcom/tr/comment/sdk/bean/TrCommentBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/view/TrCommentView;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/view/TrCommentView;Lcom/apk/pb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView$try;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/r80;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 8

    .line 1
    move-object v6, p3

    check-cast v6, Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p3, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_like_layout:I

    if-ne p1, p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrCommentView$try;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    .line 4
    iget-object p2, p1, Lcom/tr/comment/sdk/view/TrCommentView;->super:Lcom/apk/kb0;

    if-eqz p2, :cond_2

    .line 5
    iget-object p3, p1, Lcom/tr/comment/sdk/view/TrCommentView;->break:Ljava/lang/String;

    .line 6
    iget-object p4, p1, Lcom/tr/comment/sdk/view/TrCommentView;->catch:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/tr/comment/sdk/view/TrCommentView;->class:Ljava/lang/String;

    .line 8
    invoke-virtual {v6}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, p4, p1, v0}, Lcom/apk/kb0;->new(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p3, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_reply_layout:I

    if-ne p1, p3, :cond_1

    .line 10
    iget-object v7, p0, Lcom/tr/comment/sdk/view/TrCommentView$try;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    .line 11
    iget-object v0, v7, Lcom/tr/comment/sdk/view/TrCommentView;->this:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    iget-object v1, v7, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, v7, Lcom/tr/comment/sdk/view/TrCommentView;->break:Ljava/lang/String;

    iget-object p1, v7, Lcom/tr/comment/sdk/view/TrCommentView;->throw:Lcom/tr/comment/sdk/bean/TrSortType;

    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrSortType;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/tr/comment/sdk/view/TrCommentView;->catch:Ljava/lang/String;

    iget-object v5, v7, Lcom/tr/comment/sdk/view/TrCommentView;->class:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->const(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;Lcom/apk/p80;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p3, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_jubao_btn:I

    if-ne p1, p3, :cond_2

    .line 13
    new-instance p1, Lcom/apk/g90;

    iget-object p3, p0, Lcom/tr/comment/sdk/view/TrCommentView$try;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/apk/g90;-><init>(Landroid/content/Context;)V

    .line 14
    iget-object p3, p0, Lcom/tr/comment/sdk/view/TrCommentView$try;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    invoke-virtual {p1, v6, p3}, Lcom/apk/g90;->if(Lcom/tr/comment/sdk/bean/TrCommentBean;Lcom/apk/o80;)V

    .line 15
    iget-object p3, p0, Lcom/tr/comment/sdk/view/TrCommentView$try;->do:Lcom/tr/comment/sdk/view/TrCommentView;

    .line 16
    iget-object p3, p3, Lcom/tr/comment/sdk/view/TrCommentView;->if:Landroidx/fragment/app/FragmentActivity;

    .line 17
    invoke-virtual {p1, p3, p1, p2}, Lcom/apk/g90;->do(Landroid/app/Activity;Lcom/apk/g90;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method
