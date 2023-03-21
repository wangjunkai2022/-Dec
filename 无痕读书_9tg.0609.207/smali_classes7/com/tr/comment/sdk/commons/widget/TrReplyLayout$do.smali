.class public Lcom/tr/comment/sdk/commons/widget/TrReplyLayout$do;
.super Ljava/lang/Object;
.source "TrReplyLayout.java"

# interfaces
.implements Lcom/apk/r90;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
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
.field public final synthetic do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;Lcom/apk/h90;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout$do;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/r80;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p3, Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p4, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_reply_layout:I

    if-ne p1, p4, :cond_2

    .line 3
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout$do;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 4
    iget-object p1, p1, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->const:Lcom/apk/p80;

    if-eqz p1, :cond_4

    .line 5
    check-cast p1, Lcom/tr/comment/sdk/view/TrCommentView;

    if-eqz p3, :cond_4

    .line 6
    iput-object p3, p1, Lcom/tr/comment/sdk/view/TrCommentView;->extends:Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 7
    iget-boolean p2, p1, Lcom/tr/comment/sdk/view/TrCommentView;->while:Z

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1, p3}, Lcom/tr/comment/sdk/view/TrCommentView;->throw(Lcom/tr/comment/sdk/bean/TrCommentBean;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p1, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    if-eqz p2, :cond_1

    .line 10
    sget p4, Lcom/tr/comment/sdk/R$string;->tr_sdk_comment_reply_user_txt:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserName()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p4, v0}, Lcom/apk/k40;->case(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    iget-object p1, p1, Lcom/tr/comment/sdk/view/TrCommentView;->do:Lcom/apk/za0;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/apk/za0;->new()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p4, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_like_layout:I

    if-ne p1, p4, :cond_3

    .line 14
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout$do;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 15
    iget-object p2, p1, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->native:Lcom/apk/kb0;

    if-eqz p2, :cond_4

    .line 16
    iget-object p4, p1, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->case:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->goto:Ljava/lang/String;

    .line 18
    iget-object p1, p1, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->this:Ljava/lang/String;

    .line 19
    invoke-virtual {p3}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p4, v0, p1, p3}, Lcom/apk/kb0;->new(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p4, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_jubao_btn:I

    if-ne p1, p4, :cond_4

    .line 21
    new-instance p1, Lcom/apk/g90;

    iget-object p4, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout$do;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/apk/g90;-><init>(Landroid/content/Context;)V

    .line 22
    iget-object p4, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout$do;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-virtual {p1, p3, p4}, Lcom/apk/g90;->if(Lcom/tr/comment/sdk/bean/TrCommentBean;Lcom/apk/o80;)V

    .line 23
    iget-object p3, p0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout$do;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 24
    iget-object p3, p3, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->try:Landroidx/fragment/app/FragmentActivity;

    .line 25
    invoke-virtual {p1, p3, p1, p2}, Lcom/apk/g90;->do(Landroid/app/Activity;Lcom/apk/g90;Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method
